################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../FeatureExtractionModule/ObjectPairFeatureModule/impl/ObjectPairFeature.cpp 

OBJS += \
./FeatureExtractionModule/ObjectPairFeatureModule/impl/ObjectPairFeature.o 

CPP_DEPS += \
./FeatureExtractionModule/ObjectPairFeatureModule/impl/ObjectPairFeature.d 


# Each subdirectory must supply rules for building sources it contributes
FeatureExtractionModule/ObjectPairFeatureModule/impl/%.o: ../FeatureExtractionModule/ObjectPairFeatureModule/impl/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/opt/ros/groovy/include -I/opt/ros/groovy/include/pcl-1.6/pcl/common/ -I/opt/ros/groovy/include/pcl-1.6/pcl/common/impl/ -I/opt/ros/groovy/include/tf_conversions/ -I/opt/ros/groovy/include/pcl-1.6/ -I/opt/ros/groovy/include/opencv2/core/ -I/opt/ros/groovy/include/opencv2/ -I/opt/ros/groovy/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


