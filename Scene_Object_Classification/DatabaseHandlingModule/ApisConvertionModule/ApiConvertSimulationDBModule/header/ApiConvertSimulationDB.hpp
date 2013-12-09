/*
 * ApiConvertSimulationDB.hpp
 *
 *  Created on: Nov 18, 2013
 *      Author: marina
 */

#ifndef APICONVERTSIMULATIONDB_HPP_
#define APICONVERTSIMULATIONDB_HPP_

#include "Object.hpp"
#include "SceneInformation.hpp"
#include <string>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>
#include <boost/foreach.hpp>
#include <vector>
#include <pcl/common/transforms.h>
#include <pcl/common/eigen.h>
#include <pcl/common/angles.h>
#include <pcl/point_types.h>
#include <pcl/point_cloud.h>


class ApiConvertSimulationDB {

private:

  // string fileNameJSON;

public:

  ApiConvertSimulationDB();
  static void parseFileJSON(string, vector<SceneInformation> &);
  static void parseSceneJSON(boost::property_tree::ptree::value_type &, SceneInformation &);


};



#endif /* APICONVERTSIMULATIONDB_HPP_ */
