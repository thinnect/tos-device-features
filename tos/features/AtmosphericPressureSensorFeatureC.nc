/**
 * UUID for atmospheric pressure sensor feature.
 *
 * @author Raido Pahtma
 * @license MIT
*/
#include "DeviceAnnouncement.h"
configuration AtmosphericPressureSensorFeatureC { }
implementation {

	components AtmosphericPressureSensorFeatureP;

	components DeviceFeaturesC;
	DeviceFeaturesC.SubDeviceFeatureUuid128[UQ_DEVICE_FEATURE_INDEX] -> AtmosphericPressureSensorFeatureP;

}
