/**
 * UUID for light sensor feature.
 *
 * @author Raido Pahtma
 * @license MIT
*/
#include "DeviceAnnouncement.h"
configuration LightSensorFeatureC { }
implementation {

	components LightSensorFeatureP;

	components DeviceFeaturesC;
	DeviceFeaturesC.SubDeviceFeatureUuid128[UQ_DEVICE_FEATURE_INDEX] -> LightSensorFeatureP;

}
