/**
 * UUID for secondary AC output feature.
 *
 * @author Raido Pahtma
 * @license MIT
*/
#include "DeviceAnnouncement.h"
configuration SecondaryACOutputFeatureC { }
implementation {

	components SecondaryACOutputFeatureP;

	components PlatformLampControlC;
	SecondaryACOutputFeatureP.OutputCount -> PlatformLampControlC.ACOutputCount;

	components DeviceFeaturesC;
	DeviceFeaturesC.SubDeviceFeatureUuid128[UQ_DEVICE_FEATURE_INDEX] -> SecondaryACOutputFeatureP;

}
