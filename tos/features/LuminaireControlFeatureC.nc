/**
 * UUID for luminaire control feature.
 *
 * @author Raido Pahtma
 * @license MIT
*/
#include "DeviceAnnouncement.h"
configuration LuminaireControlFeatureC { }
implementation {

	components LuminaireControlFeatureP;

	components DeviceFeaturesC;
	DeviceFeaturesC.SubDeviceFeatureUuid128[UQ_DEVICE_FEATURE_INDEX] -> LuminaireControlFeatureP;

}
