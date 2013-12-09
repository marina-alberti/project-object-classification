/*
 * header.hpp
 *
 *  Created on: Nov 19, 2013
 *      Author: marina
 */

#ifndef HEADER_HPP_
#define HEADER_HPP_


#include <string.h>
#include <vector>
#include <fstream>
#include <sstream>
#include <iostream>
#include <string>
#include <cstring>
#include <dirent.h>
#include <cstdlib>
#include <sys/stat.h>
#include <sys/types.h>
#include <opencv2/opencv.hpp>
#include "opencv2/ml/ml.hpp"
#include <cmath>

#define DEBUG 0

using namespace std;


void evaluatePerformance(cv::Mat);
vector<string> storeFileNames(string);


#endif /* HEADER_HPP_ */
