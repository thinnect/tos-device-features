/**
 * UUID for sound level sensor feature. Data with the dt_sound_level_dB type.
 *
 * @author Raido Pahtma
 * @license MIT
*/
#include "UniversallyUniqueIdentifier.h"
module SoundLevelSensorFeatureP {
	provides interface GetStruct<uuid_t>;
	uses interface Get<bool> as Enabled;
}
implementation {

	// 98ad4a5c-77e1-4084-8fe0-db2593075792
	command error_t GetStruct.get(uuid_t* uuid) {
		if(call Enabled.get()) {
			uuid->time_low = 0x98ad4a5c;
			uuid->time_mid = 0x77e1;
			uuid->time_hi_and_version = 0x4084;
			uuid->clock_seq_hi_and_reserved = 0x8f;
			uuid->clock_seq_low = 0xe0;
			uuid->node[0] = 0xdb;
			uuid->node[1] = 0x25;
			uuid->node[2] = 0x93;
			uuid->node[3] = 0x07;
			uuid->node[4] = 0x57;
			uuid->node[5] = 0x92;
			return SUCCESS;
		}
		return EOFF;
	}

}
