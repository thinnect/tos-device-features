/**
 * UUID for relative humidity sensor feature.
 *
 * @author Raido Pahtma
 * @license MIT
*/
#include "DeviceAnnouncement.h"
configuration RelativeHumiditySensorFeatureC {
	uses interface Get<bool> as Enabled;
}
implementation {

	components RelativeHumiditySensorFeatureP;
	RelativeHumiditySensorFeatureP.Enabled = Enabled;

	components DeviceFeaturesC;
	DeviceFeaturesC.SubDeviceFeatureUuid128[UQ_DEVICE_FEATURE_INDEX] -> RelativeHumiditySensorFeatureP;

}
