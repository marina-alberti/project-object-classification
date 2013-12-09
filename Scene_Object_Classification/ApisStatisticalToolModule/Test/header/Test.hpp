/*
 * Test.hpp
 *
 *  Created on: Nov 25, 2013
 *      Author: marina
 */

#ifndef TEST_HPP_
#define TEST_HPP_

#include "ArrangeFeatureTestScene.hpp"
#include "Training.hpp"

class Test {

private:

	/*************************************************************************************
	* The normalization parameters
	**************************************************************************************/

	// SingleObject
	vector<vector<double> > meanNormalizationSingleObject;
	vector<vector<double> > stdNormalizationSingleObject;
	vector<vector<double> > minFeatSingleObject;
	vector<vector<double> > maxFeatSingleObject;

	// ObjectPair
	vector<vector<vector<double> > > meanNormalizationObjectPair;
	vector<vector<vector<double> > > stdNormalizationObjectPair;
	vector<vector<vector<double> > > minFeatObjectPair;
	vector<vector<vector<double> > > maxFeatObjectPair;

	/* *************************************************************************************
	// The EM output parameters: means, co-variance matrices, and weights of the mixture components
	**************************************************************************************   */

	//  <nObjCat x featDim x nclusters>
	vector<cv::Mat> meansSingleObject;

	//  <nObjCat x nclusters x 1>
	vector<cv::Mat> weightsSingleObject;

	// <nObjCat x nclusters x featDim x featDim>
	vector< vector<cv::Mat> > covsSingleObject;

	vector<vector<cv::Mat> > meansObjectPair;
	vector<vector<cv::Mat> > weightsObjectPair;
	vector<vector<vector<cv::Mat> > > covsObjectPair;

	vector<double> thresholdsSingleObject;

	/* *************************************************************************************
		// The occurrence and co-occurrence frequency of object categories
	**************************************************************************************   */

	vector<double> frequencySingleObject;
	vector<vector<double> > frequencyObjectPair;



public:

	void loadTrainedGMMs(Training & trainedParams);

	void loadLearnedObjectCategoryFrequency(vector<double> frequencySingleObjectin, vector<vector<double> > frequencyObjectPairin );

	vector<vector<double> > predictObjectClassesOnlySOF(ArrangeFeatureTestScene &, int normalization);

	// TODO: add the frequencies
	void voting(ArrangeFeatureTestScene & testfeatures, int normalization);

	void exhaustiveSearch(ArrangeFeatureTestScene & testfeatures, int normalization);


	// the set functions for the private data members

	void setmeanNormalizationSingleObject(vector<vector<double> > in ) { meanNormalizationSingleObject = in; }
	void setstdNormalizationSingleObject(vector<vector<double> > in ) { stdNormalizationSingleObject = in; }
	void setminFeatSingleObject(vector<vector<double> > in ) { minFeatSingleObject = in; }
	void setmaxFeatSingleObject(vector<vector<double> > in ) { maxFeatSingleObject = in; }
	void setmeanNormalizationObjectPair(vector<vector<vector<double> > >  in ) { meanNormalizationObjectPair = in; }
	void setstdNormalizationObjectPair(vector<vector<vector<double> > >  in ) { stdNormalizationObjectPair = in; }
	void setminFeatObjectPair(vector<vector<vector<double> > >  in ) { minFeatObjectPair = in; }
	void setmaxFeatObjectPair(vector<vector<vector<double> > > in ) { maxFeatObjectPair = in; }
	void setmeansSingleObject( vector<cv::Mat> in ) { meansSingleObject = in ; }
    void setweightsSingleObject (vector<cv::Mat> in ) { weightsSingleObject = in;}
    void setcovsSingleObject(vector<vector<cv::Mat> > in) {covsSingleObject = in; }
    void setmeansObjectPair(vector<vector<cv::Mat> > in) {meansObjectPair = in; }
    void setweightsObjectPair(vector<vector<cv::Mat> > in ) {weightsObjectPair = in; }
    void setcovsObjectPair(vector<vector<vector<cv::Mat> > > in) {covsObjectPair = in;}
    void setThresholdSingleObject(vector<double> in) { thresholdsSingleObject = in; }

	void printmeanNormalizationSingleObject();
	void printmeanNormalizationObjectPair();

	void setfrequencySingleObject(vector<double> in) {frequencySingleObject = in; }
	void setfrequencyObjectPair(vector<vector<double> > in) {frequencyObjectPair = in; }




};




#endif /* TEST_HPP_ */
