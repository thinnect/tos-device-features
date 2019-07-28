/**
 * UUID for sound level sensor feature. Data with the dt_sound_level_dB type.
 *
 * @author Raido Pahtma
 * @license MIT
*/
#include "DeviceAnnouncement.h"
configuration SoundLevelSensorFeatureC {
	uses interface Get<bool> as Enabled;
}
implementation {

	components SoundLevelSensorFeatureP;
	SoundLevelSensorFeatureP.Enabled = Enabled;

	components DeviceFeaturesC;
	DeviceFeaturesC.SubDeviceFeatureUuid128[UQ_DEVICE_FEATURE_INDEX] -> SoundLevelSensorFeatureP;

}
