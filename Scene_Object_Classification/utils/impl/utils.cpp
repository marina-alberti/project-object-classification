/*
 * header.cpp
 *
 *  Created on: Nov 19, 2013
 *      Author: marina
 */

#include "utils.hpp"


void evaluatePerformance(cv::Mat cMatrix) {

  // for each object class
  vector<double> precision;
  vector<double> recall;
  vector<double> fmeasure;
  for (int i = 0; i < cMatrix.rows; i++ )  {

    double _precision;
    double _recall;
    int TP = 0;
    int FP = 0;
    int FN = 0;

//    for (int j = 0; j < cMatrix.rows; j++ )

    TP +=  cMatrix.at<int>(i, i);
    for (int j = 0; j < cMatrix.cols; j++ ) {
      if ( j != i) {
        FN += cMatrix.at<int>(i, j);

      }
    }
    for (int j = 0; j < cMatrix.rows; j++ ) {
      if ( j != i) {
        FP += cMatrix.at<int>(j, i);
      }
    }


    if ((TP + FP) == 0) {
      _precision = 0;
    }
    else {
      _precision = ((double)TP) /(double)(TP + FP);
    }
    if ((TP + FN) == 0) {
      _recall = 0;
    }
    else {
      _recall = (double)TP / (double)(TP + FN);
    }
    double fm;
    if (_precision == 0 && _recall == 0) {
      fm = 0;
    }
    else {
      fm = 2 * _precision * _recall / (_precision + _recall );
    }
    precision.push_back(_precision);
    recall.push_back(_recall);
    fmeasure.push_back(fm);
    if (1) {
      cout << "Object " << i << endl << "Precision: " << _precision << endl
      << "recall:    " << _recall << endl << "Fmeasure:  " << fm << endl;

    }

  }

}

/*
Input: the name of the directory containing the files.
Output: a list of the names of the files.
*/
vector<string> storeFileNames(string dirname) {

  DIR *dp;
  struct dirent *ep;
  struct stat filestat;
  const char * dirnameC = dirname.c_str();
  dp = opendir(dirnameC);
  vector<string> filesList;
  if (dp != NULL) {

    // for each file inside the data directory
    while ((ep = readdir(dp)) != NULL) {
      if (S_ISDIR(filestat.st_mode)) {continue; }
      if ((strcmp(ep->d_name, ".") == 0) || (strcmp(ep->d_name, "..") == 0)) {continue; }
      string filepath = dirname + "/" + ep->d_name;
      filesList.push_back(filepath);
    }
    closedir (dp);
  }
  else {
    perror ("Could not open the directory!");
  }
  return filesList;
}






