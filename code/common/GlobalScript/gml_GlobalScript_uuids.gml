/// FUNCTIONS

// FROM https://github.com/Sidorakh/uuid.gml/blob/main/scripts/uuid_handlers/uuid_handlers.gml

// @description Generates `num` random bytes to fill an array
// @arg {Array} arr Array to fill
// @arg {Real} num Maximum array length
function fill_random_bytes(arr,num) {
    for (var i=array_length(arr);i<num;i++) {
        array_push(arr,irandom_range(0,255));
    }
    return arr;
}

// @description Batches random numbers for UUID generation
function uuid_random() {
    static length = 256;
    static rnd = fill_random_bytes([],length);
    if (array_length(rnd) < length) {
        fill_random_bytes(rnd,length);
    }
    return rnd;
}

function byte_to_hex(num) {
    var hex = string(ptr(num));
    return string_copy(hex,string_length(hex)-1,2);
}

// @description Converts an array of bytes to a UUID
function stringify_uuid(bytes) {
    //"xxxxxxxx-xxxx-xxxx-yxxx-xxxxxxxxxxxx"
    var uuid = "";
    var index = 0;
    repeat(4) {
        uuid += byte_to_hex(bytes[index++]);
    }
    uuid += "-";
    repeat(2) {
        uuid += byte_to_hex(bytes[index++]);
    }
    uuid += "-";
    repeat(2) {
        uuid += byte_to_hex(bytes[index++]);
    }
    uuid += "-";
    repeat(2) {
        uuid += byte_to_hex(bytes[index++]);
    }
    uuid += "-";
    repeat(6) {
        uuid += byte_to_hex(bytes[index++]);
    }
    
    return uuid;
}

// @description Returns a UUID v4 (mostly random)
// @returns {String}

function generate_uuidv4(seed=undefined) {
    var bytes = array_create(16);
    array_copy(bytes,0,uuid_random(),0,16);
    array_delete(uuid_random(),0,16);
    bytes[6] = (bytes[6] & 0x0f) | 0x40;
    bytes[8] = (bytes[8] & 0x3f) | 0x80;
    
    return stringify_uuid(bytes);
}

function uuid_nil() {
    static uuid = "00000000-0000-0000-0000-000000000000";
    return uuid;
}

function uuid_max() {
    static uuid = "FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF";
}