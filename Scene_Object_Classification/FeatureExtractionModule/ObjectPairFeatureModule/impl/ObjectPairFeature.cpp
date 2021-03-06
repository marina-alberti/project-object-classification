/*
 * ObjectPairFeature.cpp
 *
 *  Created on: Nov 18, 2013
 *      Author: marina
 */

#include "ObjectPairFeature.hpp"


void ObjectPairFeature::setObjectID1(int in) {
  	objectID1 = in;
}

void ObjectPairFeature::setObjectID2(int in) {
	objectID2 = in;
}

void ObjectPairFeature::setEuclideanDistance(float in) {
	EuclideanDistance = in;
	allFeatures.push_back(in);

}

void ObjectPairFeature::setEuclideanDistance2d(float in) {
	EuclideanDistance2d = in;
	allFeatures.push_back(in);
}

void ObjectPairFeature::setOrientation2d(float in) {
	orientation2d = in;
	allFeatures.push_back(in);
}

void ObjectPairFeature::setSizeDifference(float in) {
	sizeDifference = in;
	allFeatures.push_back(in);
}


void ObjectPairFeature::setVerticalHeightDifference(float in) {
	verticalHeightDifference = in;
	allFeatures.push_back(in);

}


