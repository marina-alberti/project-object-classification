/*
 * Test.cpp
 *
 *  Created on: Nov 25, 2013
 *      Author: marina
 */

#include "Test.hpp"

#define TESTFLAG 1

vector<vector<double> > Test::predictObjectClassesOnlySOF(ArrangeFeatureTestScene & testfeatures, int normalization) {

	vector<SingleObjectFeature> listSOF = testfeatures.getListSOF();

	vector<vector<double> > vectorProbabilitiesObjects;

	// For each object instance in the objectList of the scene
	for (int i  = 0; i < listSOF.size(); i++ ) {

		if (TESTFLAG) {
	        cout << std::endl << "Predict object class for unknown object in the object list : " << i << endl;
		}

		// Gets the "single object features"  (SOF) for the current object
		vector<float> features = listSOF.at(i).getAllFeatures();

	    // vectorProb: a vector with a likelihood value for each of the considered object categories
	    vector<double> vectorProb;

	    double maxProbValue;
	    int maxProbClassIndex;

	    /*
	    // for each of the trained/learned GMM models = different learned object categories ( monitor, keyboard,  mouse, ...)
	    // TODO: change: add possibility to select a subset of object categories that we want to test the model against

	    // vector<int> selectedTestCategories; // this should come from the service see ROS service
	    // for(int countCategory = 0; countCategory < selectedTestCategories.size(); countCategory++  )
	    // the GMM model is:
	    // indexModel = selectedTestCategories[countCategory];
	    // then accordingly find way to output the results
	     *
	     * */


	    int countModels = 0;
	    // cout << "nobjecte cats is: " << meansSingleObject.size() << endl;

	    for(int countCategory = 0; countCategory < meansSingleObject.size(); countCategory++  ) {

	    	// cout << "the model is " << countModels << endl;

	    	bool outlier = false;
		    // **************************************************************************************
	    	/* extract mean, cov, and weight coefficients for current GMM model  */


	    	cv::Mat _means = meansSingleObject.at(countModels); 				//  dims x nclusters

	    	cv::Mat _weights = weightsSingleObject.at(countModels);  			//  nclusters x 1

	    	vector<cv::Mat> _covs = covsSingleObject.at(countModels);      		//  nclusters x dims x dims


	    	if (DEBUG) {
	    		cout << endl << "The mean matrix of current GMM model is : "  << endl << _means << endl;
	        	cout << "The weights of current GMM model are : "  << _weights << endl;
	        	cout << "The covs of current GMM model are : "  << _covs.at(0) << endl;
	    	}

		  // **************************************************************************************
			  // //  NORMALIZATION:   Feature matrix normalization

	    	vector<float> normalizedFeatMat;


			if (normalization == 1) {

				vector<double> meansVector = meanNormalizationSingleObject.at(countModels);
				vector<double> stdVector = stdNormalizationSingleObject.at(countModels);


				normalizedFeatMat = StatisticalTool::doNormalizationFeatureVector(features, meansVector, stdVector);
			}
			else if (normalization == 2) {

				vector<double> maxVector = maxFeatSingleObject.at(countModels);
				vector<double> minVector = minFeatSingleObject.at(countModels);
				normalizedFeatMat = StatisticalTool::doNormalizationMinMaxFeatureVector(features, maxVector, minVector);
			}
			else if (normalization == 0) {
				normalizedFeatMat = features;
			}

			// cout << "after normalization\n";

			  /*
			  // // test: reduce feat dimensionality
			  cv::Mat featsTrain = normalizedFeatMat.colRange(0, 9);
			 // cv::Mat featsTrain = cv::Mat(normalizedFeatMat.rows, 4 , CV_64F);
			 // normalizedFeatMat.col(0).copyTo(featsTrain.col(0));
			 // normalizedFeatMat.col(1).copyTo(featsTrain.col(1));
			 // normalizedFeatMat.col(3).copyTo(featsTrain.col(2));
			 // normalizedFeatMat.col(4).copyTo(featsTrain.col(3));
			  */

		    // **************************************************************************************
	    	/* Compute probability / likelihood for the current GMM model: */


	    	double prob = StatisticalTool::computeGMMProbability(features, _means, _covs, _weights );


	    	// TODO: add again the outlier check
	    	/*
	    	if (prob < thresholdsSingleObject[countModels]) {
	    		outlier = true;
	    	}
	    	*/

	    	// compute a-priori probability of object classes in terms of frequency of appearance in the training database
	    	double currentObjectCategoryFreq = frequencySingleObject[countModels];

	    	// compute the a-posterior probability: product of a-priori and likelihood
	    	double probPost = (prob) * (currentObjectCategoryFreq);


	    	if (TESTFLAG) {
	    		cout << " Likelihood for Object class : ";
	    		cout << countModels << "  is  =  " << prob;
	    		cout << endl << "  with object category frequency  =   " << (currentObjectCategoryFreq) << endl;
	    		cout << "actual class is:  " << listSOF.at(i).getObjectID() << endl;
	    	}

	    	if ( countModels == 0) {
	    		maxProbValue = -100000;
	    		maxProbClassIndex = -1;
	    	}

	    	if ( (probPost > maxProbValue) && (outlier == false)  ) {
	    		maxProbValue = probPost;
	    		maxProbClassIndex = countModels;
	    	}

	    	// push back probability of current GMM model into vector of probabilities for current object
	    	vectorProb.push_back(probPost);

	    	if (DEBUG) {
	    		cout << " Compute likelihood for object category type : " << countModels
	    				<< "   likelihood = " << probPost << endl;
	    	}
	    	countModels++;
	    }

	    // predictedClasses.push_back(maxProbClassIndex);
	    // (objectList.at(i)).setPredictedObjectID(maxProbClassIndex);

	    vectorProbabilitiesObjects.push_back(vectorProb);

	  }

	  return vectorProbabilitiesObjects;
}



void Test::voting(ArrangeFeatureTestScene & testfeatures, int normalization) {


	vector<vector<ObjectPairFeature> > matrixOPF = testfeatures.getMatrixOPF();
	vector<SingleObjectFeature> listSOF = testfeatures.getListSOF();

	// Initializes the voting table with zeros <nCat x nTestObjects>

	vector<vector<double> > votingTable;
	for (int c = 0; c < meansSingleObject.size(); c++) {
		vector <double> temp;
		for (int cc = 0; cc < listSOF.size(); cc++) {
			temp.push_back(0);
		}
		votingTable.push_back(temp);
	}

	for (int p = 0; p < listSOF.size(); p++) {
		for (int q = 0; q < listSOF.size(); q++) {

			if (p != q) {

				SingleObjectFeature refSOF = listSOF.at(p);
				SingleObjectFeature targetSOF = listSOF.at(q);
				ObjectPairFeature opf = matrixOPF.at(p).at(q);
				vector<float> reffeatures = refSOF.getAllFeatures();
				vector<float> targetfeatures = targetSOF.getAllFeatures();
				vector<float> pairfeatures = opf.getAllFeatures();
				// test against all possible models

				for (int i = 0; i < meansSingleObject.size(); i++) {
					for (int j = 0; j < meansSingleObject.size(); j++) {

						// test the reference against i and the target against j

						// ***************************************************************
						// THE REFERENCE

						cv::Mat refmeans = meansSingleObject.at(i); 				//  dims x nclusters
						cv::Mat refweights = weightsSingleObject.at(i);  			//  nclusters x 1
						vector<cv::Mat> refcovs = covsSingleObject.at(i);      		//  nclusters x dims x dims

				    	vector<float> refnormalizedFeatMat;
						if (normalization == 1) {

							vector<double> meansVector = meanNormalizationSingleObject.at(i);
							vector<double> stdVector = stdNormalizationSingleObject.at(i);
							refnormalizedFeatMat = StatisticalTool::doNormalizationFeatureVector(reffeatures, meansVector, stdVector);
						}
						else if (normalization == 2) {

							vector<double> maxVector = maxFeatSingleObject.at(i);
							vector<double> minVector = minFeatSingleObject.at(i);
							refnormalizedFeatMat = StatisticalTool::doNormalizationMinMaxFeatureVector(reffeatures, maxVector, minVector);
						}
						else if (normalization == 0) {
							refnormalizedFeatMat = reffeatures;
						}
						double refprob = StatisticalTool::computeGMMProbability(reffeatures, refmeans, refcovs, refweights );

						// ***************************************************************
						// THE TARGET

						cv::Mat targetmeans = meansSingleObject.at(j); 					//  dims x nclusters
						cv::Mat targetweights = weightsSingleObject.at(j);  			//  nclusters x 1
						vector<cv::Mat> targetcovs = covsSingleObject.at(j);      		//  nclusters x dims x dims

						vector<float> targetnormalizedFeatMat;
						if (normalization == 1) {

							vector<double> meansVector = meanNormalizationSingleObject.at(j);
							vector<double> stdVector = stdNormalizationSingleObject.at(j);
							targetnormalizedFeatMat = StatisticalTool::doNormalizationFeatureVector(targetfeatures, meansVector, stdVector);
						}
						else if (normalization == 2) {

							vector<double> maxVector = maxFeatSingleObject.at(j);
							vector<double> minVector = minFeatSingleObject.at(j);
							targetnormalizedFeatMat = StatisticalTool::doNormalizationMinMaxFeatureVector(targetfeatures, maxVector, minVector);
						}
						else if (normalization == 0) {
							targetnormalizedFeatMat = targetfeatures;
						}
						double targetprob = StatisticalTool::computeGMMProbability(targetfeatures, targetmeans, targetcovs, targetweights );

						// ***************************************************************
						// THE PAIR RELATION

						cv::Mat pairmeans = meansObjectPair.at(i).at(j); 					//  dims x nclusters
						cv::Mat pairweights = weightsObjectPair.at(i).at(j);  				//  nclusters x 1
						vector<cv::Mat> paircovs = covsObjectPair.at(i).at(j);      		//  nclusters x dims x dims

						vector<float> pairnormalizedFeatMat;
						if (normalization == 1) {

							vector<double> meansVector = meanNormalizationObjectPair.at(i).at(j);
							vector<double> stdVector = stdNormalizationObjectPair.at(i).at(j);
							pairnormalizedFeatMat = StatisticalTool::doNormalizationFeatureVector(pairfeatures, meansVector, stdVector);
						}
						else if (normalization == 2) {

							vector<double> maxVector = maxFeatObjectPair.at(i).at(j);
							vector<double> minVector = minFeatObjectPair.at(i).at(j);
							pairnormalizedFeatMat = StatisticalTool::doNormalizationMinMaxFeatureVector(pairfeatures, maxVector, minVector);
						}
						else if (normalization == 0) {
							pairnormalizedFeatMat = pairfeatures;
						}
						double pairprob = StatisticalTool::computeGMMProbability(pairfeatures, pairmeans, paircovs, pairweights );

						double totalscore = pairprob * refprob * targetprob; // * pairprob; // TODO change

						// vote for p == i and q == j

						votingTable.at(i).at(p) += totalscore; //totalscore;
						votingTable.at(j).at(q) += totalscore; //totalscore;


					}

				}

			}

		}
	}

	// print the voting table
	// rows are the different categories
	// columns are the different test objects

	cout << "start printing " << endl << endl;
	for (int c = 0; c < meansSingleObject.size(); c++) {
		for (int cc = 0; cc < listSOF.size(); cc++) {
			cout << votingTable.at(c).at(cc)*1 << "         " ;
		}
		cout << endl;
	}

	cout << "end printing" << endl;

}


void Test::exhaustiveSearch(ArrangeFeatureTestScene & testfeatures, int normalization) {

	// for each object I have N possibilities of categories.

   // // count the number of test objects.
	// // do as many for cycles as




}


void Test::loadTrainedGMMs(Training & trainedParams) {

	// SingleObject
	meanNormalizationSingleObject = trainedParams.getmeanNormalizationSingleObject();
	stdNormalizationSingleObject = trainedParams.getstdNormalizationSingleObject();
	minFeatSingleObject  = trainedParams.getminFeatSingleObject();
	maxFeatSingleObject = trainedParams.getmaxFeatSingleObject();

	// ObjectPair
	meanNormalizationObjectPair = trainedParams.getmeanNormalizationObjectPair();
	stdNormalizationObjectPair = trainedParams.getstdNormalizationObjectPair();
	minFeatObjectPair = trainedParams.getminFeatObjectPair();
	maxFeatObjectPair = trainedParams.getmaxFeatObjectPair();


	// SingleObject
	meansSingleObject = trainedParams.getmeansSingleObject();
	weightsSingleObject = trainedParams.getweightsSingleObject();
	covsSingleObject = trainedParams.getcovsSingleObject();

	// ObjectPair
	meansObjectPair = trainedParams.getmeansObjectPair();
	weightsObjectPair = trainedParams.getweightsObjectPair();
	covsObjectPair = trainedParams.getcovsObjectPair();

	thresholdsSingleObject = trainedParams.geThresholdsSingleObject();

}
// *****


void Test::loadLearnedObjectCategoryFrequency(vector<double> frequencySingleObjectin, vector<vector<double> > frequencyObjectPairin ) {

	frequencySingleObject = frequencySingleObjectin;
	frequencyObjectPair = frequencyObjectPairin;

}



void Test::printmeanNormalizationSingleObject() {

	for (int i = 0; i < meanNormalizationSingleObject.size(); i++) {
		cout << endl;

		for (int j =0 ; j < meanNormalizationSingleObject.at(i).size(); j++) {
			cout << meanNormalizationSingleObject.at(i).at(j) << " " ;
		}
	}
}



void Test::printmeanNormalizationObjectPair() {

	for (int i = 0; i < meanNormalizationObjectPair.size(); i++) {


		for (int j =0 ; j < meanNormalizationObjectPair.at(i).size(); j++) {

			for (int k = 0; k < meanNormalizationObjectPair.at(i).at(j).size(); k++) {
				cout << meanNormalizationObjectPair.at(i).at(j).at(k) << " " ;
			}
			cout << endl;


		}
	}

}


