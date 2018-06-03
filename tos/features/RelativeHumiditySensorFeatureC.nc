/**
 * UUID for relative humidity sensor feature.
 *
 * @author Raido Pahtma
 * @license MIT
*/
#include "DeviceAnnouncement.h"
configuration RelativeHumiditySensorFeatureC { }
implementation {

	components RelativeHumiditySensorFeatureP;

	components DeviceFeaturesC;
	DeviceFeaturesC.SubDeviceFeatureUuid128[UQ_DEVICE_FEATURE_INDEX] -> RelativeHumiditySensorFeatureP;

}
