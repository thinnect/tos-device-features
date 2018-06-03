/**
 * UUID for luminaire control feature.
 *
 * @author Raido Pahtma
 * @license MIT
*/
#include "UniversallyUniqueIdentifier.h"
module LuminaireControlFeatureP {
	provides interface GetStruct<uuid_t>;
}
implementation {

	// ec2c01ff-22cd-4885-8473-117552229e9e
	command error_t GetStruct.get(uuid_t* uuid) {
		uuid->time_low = 0xec2c01ff;
		uuid->time_mid = 0x22cd;
		uuid->time_hi_and_version = 0x4885;
		uuid->clock_seq_hi_and_reserved = 0x84;
		uuid->clock_seq_low = 0x73;
		uuid->node[0] = 0x11;
		uuid->node[1] = 0x75;
		uuid->node[2] = 0x52;
		uuid->node[3] = 0x22;
		uuid->node[4] = 0x9e;
		uuid->node[5] = 0x9e;
		return SUCCESS;
	}

}
