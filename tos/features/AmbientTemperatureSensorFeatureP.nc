/**
 * UUID for ambient temperature sensor feature.
 *
 * @author Raido Pahtma
 * @license MIT
*/
#include "UniversallyUniqueIdentifier.h"
module AmbientTemperatureSensorFeatureP {
	provides interface GetStruct<uuid_t>;
	uses interface Get<bool> as Enabled;
}
implementation {

	// 079be978-eb6f-4780-96bf-f0a6673934bf
	command error_t GetStruct.get(uuid_t* uuid) {
		if(call Enabled.get()) {
			uuid->time_low = 0x079be978;
			uuid->time_mid = 0xeb6f;
			uuid->time_hi_and_version = 0x4780;
			uuid->clock_seq_hi_and_reserved = 0x96;
			uuid->clock_seq_low = 0xbf;
			uuid->node[0] = 0xf0;
			uuid->node[1] = 0xa6;
			uuid->node[2] = 0x67;
			uuid->node[3] = 0x39;
			uuid->node[4] = 0x34;
			uuid->node[5] = 0xbf;
			return SUCCESS;
		}
		return EOFF;
	}

}
