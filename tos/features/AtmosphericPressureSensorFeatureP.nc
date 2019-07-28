/**
 * UUID for atmospheric pressure sensor feature.
 *
 * @author Raido Pahtma
 * @license MIT
*/
#include "UniversallyUniqueIdentifier.h"
module AtmosphericPressureSensorFeatureP {
	provides interface GetStruct<uuid_t>;
	uses interface Get<bool> as Enabled;
}
implementation {

	// 6e504f97-1d15-4903-b554-818147d78e74
	command error_t GetStruct.get(uuid_t* uuid) {
		if(call Enabled.get()) {
			uuid->time_low = 0x6e504f97;
			uuid->time_mid = 0x1d15;
			uuid->time_hi_and_version = 0x4903;
			uuid->clock_seq_hi_and_reserved = 0xb5;
			uuid->clock_seq_low = 0x54;
			uuid->node[0] = 0x81;
			uuid->node[1] = 0x81;
			uuid->node[2] = 0x47;
			uuid->node[3] = 0xd7;
			uuid->node[4] = 0x8e;
			uuid->node[5] = 0x74;
			return SUCCESS;
		}
		return EOFF;
	}

}
