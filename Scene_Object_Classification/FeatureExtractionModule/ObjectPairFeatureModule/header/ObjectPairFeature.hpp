/*
 * ObjectPairFeature.hpp
 *
 *  Created on: Nov 18, 2013
 *      Author: marina
 */

#ifndef OBJECTPAIRFEATURE_HPP_
#define OBJECTPAIRFEATURE_HPP_

#include "Object.hpp"
#include <string>
#include <vector>
#include <pcl/point_types.h>
#include <pcl/point_cloud.h>
#include <pcl/common/transforms.h>
#include <pcl/common/eigen.h>
#include <pcl/common/angles.h>
#include "math.h"

using namespace std;

class ObjectPairFeature{

private:

	int objectID1;
	int objectID2;
	float EuclideanDistance;
	float EuclideanDistance2d;
	float orientation2d;
	float sizeDifference;
	float verticalHeightDifference;

	vector<float> allFeatures;

public:

	void setObjectID1(int);
	void setObjectID2(int);

	void setEuclideanDistance(float);
	void setEuclideanDistance2d(float);
	void setOrientation2d(float);
	void setSizeDifference(float);
	void setVerticalHeightDifference(float);

	int getObjectID1() { return objectID1; }
	int getObjectID2() { return objectID2; }
	float getEuclideanDistance() { return EuclideanDistance; }
	float getEuclideanDistance2d() { return EuclideanDistance2d; }
	float getOrientation2d() { return orientation2d; }
	float getVerticalHeightDifference() { return verticalHeightDifference; }
	vector<float> getAllFeatures() {return allFeatures; }

};



#endif /* OBJECTPAIRFEATURE_HPP_ */
