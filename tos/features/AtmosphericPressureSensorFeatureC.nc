/**
 * UUID for atmospheric pressure sensor feature.
 *
 * @author Raido Pahtma
 * @license MIT
*/
#include "DeviceAnnouncement.h"
configuration AtmosphericPressureSensorFeatureC {
	uses interface Get<bool> as Enabled;
}
implementation {

	components AtmosphericPressureSensorFeatureP;
	AtmosphericPressureSensorFeatureP.Enabled = Enabled;

	components DeviceFeaturesC;
	DeviceFeaturesC.SubDeviceFeatureUuid128[UQ_DEVICE_FEATURE_INDEX] -> AtmosphericPressureSensorFeatureP;

}
