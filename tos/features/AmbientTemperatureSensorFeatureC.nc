/**
 * UUID for ambient temperature sensor feature.
 *
 * @author Raido Pahtma
 * @license MIT
*/
#include "DeviceAnnouncement.h"
configuration AmbientTemperatureSensorFeatureC {
	uses interface Get<bool> as Enabled;
}
implementation {

	components AmbientTemperatureSensorFeatureP;
	AmbientTemperatureSensorFeatureP.Enabled = Enabled;

	components DeviceFeaturesC;
	DeviceFeaturesC.SubDeviceFeatureUuid128[UQ_DEVICE_FEATURE_INDEX] -> AmbientTemperatureSensorFeatureP;

}
