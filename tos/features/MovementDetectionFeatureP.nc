/**
 * UUID for motion detection feature.
 *
 * @author Raido Pahtma
 * @license MIT
*/
#include "UniversallyUniqueIdentifier.h"
module MovementDetectionFeatureP {
	provides interface GetStruct<uuid_t>;
}
implementation {

	// d14a6a68-972c-49ae-9269-149a275c50e3
	command error_t GetStruct.get(uuid_t* uuid) {
		uuid->time_low = 0xd14a6a68;
		uuid->time_mid = 0x972c;
		uuid->time_hi_and_version = 0x49ae;
		uuid->clock_seq_hi_and_reserved = 0x92;
		uuid->clock_seq_low = 0x69;
		uuid->node[0] = 0x14;
		uuid->node[1] = 0x9a;
		uuid->node[2] = 0x27;
		uuid->node[3] = 0x5c;
		uuid->node[4] = 0x50;
		uuid->node[5] = 0xe3;
		return SUCCESS;
	}

}
