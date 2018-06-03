/**
 * UUID for light sensor feature.
 *
 * @author Raido Pahtma
 * @license MIT
*/
#include "UniversallyUniqueIdentifier.h"
module LightSensorFeatureP {
	provides interface GetStruct<uuid_t>;
}
implementation {

	// d22721b7-c5cc-4d69-bfe7-50f11aaab845
	command error_t GetStruct.get(uuid_t* uuid) {
		uuid->time_low = 0xd22721b7;
		uuid->time_mid = 0xc5cc;
		uuid->time_hi_and_version = 0x4d69;
		uuid->clock_seq_hi_and_reserved = 0xbf;
		uuid->clock_seq_low = 0xe7;
		uuid->node[0] = 0x50;
		uuid->node[1] = 0xf1;
		uuid->node[2] = 0x1a;
		uuid->node[3] = 0xaa;
		uuid->node[4] = 0xb8;
		uuid->node[5] = 0x45;
		return SUCCESS;
	}

}
