/**
 * UUID for relative humidity sensor feature.
 *
 * @author Raido Pahtma
 * @license MIT
*/
#include "UniversallyUniqueIdentifier.h"
module RelativeHumiditySensorFeatureP {
	provides interface GetStruct<uuid_t>;
}
implementation {

	// abe4818a-dca6-4a59-9eae-6f548687675b
	command error_t GetStruct.get(uuid_t* uuid) {
		uuid->time_low = 0xabe4818a;
		uuid->time_mid = 0xdca6;
		uuid->time_hi_and_version = 0x4a59;
		uuid->clock_seq_hi_and_reserved = 0x9e;
		uuid->clock_seq_low = 0xae;
		uuid->node[0] = 0x6f;
		uuid->node[1] = 0x54;
		uuid->node[2] = 0x86;
		uuid->node[3] = 0x87;
		uuid->node[4] = 0x67;
		uuid->node[5] = 0x5b;
		return SUCCESS;
	}

}
