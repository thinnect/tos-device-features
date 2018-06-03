/**
 * UUID for motion detection feature.
 *
 * @author Raido Pahtma
 * @license MIT
*/
#include "DeviceAnnouncement.h"
configuration MovementDetectionFeatureC { }
implementation {

	components MovementDetectionFeatureP;

	components DeviceFeaturesC;
	DeviceFeaturesC.SubDeviceFeatureUuid128[UQ_DEVICE_FEATURE_INDEX] -> MovementDetectionFeatureP;

}
