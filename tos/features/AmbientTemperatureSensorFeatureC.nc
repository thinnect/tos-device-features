/**
 * UUID for ambient temperature sensor feature.
 *
 * @author Raido Pahtma
 * @license MIT
*/
#include "DeviceAnnouncement.h"
configuration AmbientTemperatureSensorFeatureC { }
implementation {

	components AmbientTemperatureSensorFeatureP;

	components DeviceFeaturesC;
	DeviceFeaturesC.SubDeviceFeatureUuid128[UQ_DEVICE_FEATURE_INDEX] -> AmbientTemperatureSensorFeatureP;

}
