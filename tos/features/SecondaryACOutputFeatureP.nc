/**
 * UUID for secondary AC output feature.
 *
 * @author Raido Pahtma
 * @license MIT
*/
#include "UniversallyUniqueIdentifier.h"
module SecondaryACOutputFeatureP {
	provides interface GetStruct<uuid_t>;
	uses interface Get<uint8_t> as OutputCount;
}
implementation {

	// 710d349f-95cd-4569-9d85-0119dea6d21a
	command error_t GetStruct.get(uuid_t* uuid) {
		if(call OutputCount.get() > 1) {
			uuid->time_low = 0x710d349f;
			uuid->time_mid = 0x95cd;
			uuid->time_hi_and_version = 0x4569;
			uuid->clock_seq_hi_and_reserved = 0x9d;
			uuid->clock_seq_low = 0x85;
			uuid->node[0] = 0x01;
			uuid->node[1] = 0x19;
			uuid->node[2] = 0xde;
			uuid->node[3] = 0xa6;
			uuid->node[4] = 0xd2;
			uuid->node[5] = 0x1a;
			return SUCCESS;
		}
		return EOFF;
	}

}
