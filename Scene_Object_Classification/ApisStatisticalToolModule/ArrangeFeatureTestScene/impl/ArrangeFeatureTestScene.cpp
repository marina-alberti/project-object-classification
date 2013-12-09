/*
 * ArrangeFeatureTestScene.cpp
 *
 *  Created on: Nov 25, 2013
 *      Author: marina
 */

#include "ArrangeFeatureTestScene.hpp"


void ArrangeFeatureTestScene::arrangeTestFeatures(SceneSingleObjectFeature & sof, SceneObjectPairFeature & opf) {

	listSOF = sof.getListSingleObjectFeature();
	listOPF = opf.getListObjectPairFeature();

	// get the number of test objects Z

	int nTestObject = listSOF.size();

	cout << "start the matrix" << endl;

	// create two indexes to loop over the new matrix
	int i = 0;
	int j = 0;

	// create the index to loop over the elements in the vector of object pair features
	int countVector = 0;

	// create a ZxZ matrix of object pair features
	//vector<vector<ObjectPairFeature> > matrixOPF;
	//matrixOPF.reserve(nTestObject);

	cout << "start the matrix 1   " << nTestObject << endl;

	cout << "nTestObject = "  << nTestObject << endl;

	for (int i = 0; i < nTestObject; i++) {

		vector<ObjectPairFeature> tmp;
		cout << "start the matrix 2" << endl;

		//tmp.reserve(nTestObject);
		cout << "start the matrix 3" << endl;

		cout << "i = "  << i << endl;


		for (int j = 0; j < nTestObject; j++) {

			cout << "j = "  << j << endl;
			if (i != j) {
				cout << "start the matrix 4 0" << endl;
				cout << "countVector = "  << countVector << endl;

				cout << "listOPF = "  << listOPF.size() << endl;

				tmp.push_back(listOPF.at(countVector));


				cout << "start the matrix 4" << endl;


				countVector++;
				cout << "start the matrix 4a" << endl;

			}
			else {
				cout << "start the matrix equal" << endl;
				ObjectPairFeature empty;
				tmp.push_back(empty);

			}
			cout << "start the matrix 4b" << endl;


		}
		cout << "start the matrix 5" << endl;

		matrixOPF.push_back(tmp);
	}

}




