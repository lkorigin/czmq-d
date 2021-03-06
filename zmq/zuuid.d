/*  =========================================================================
    zuuid - UUID support class

    Copyright (c) the Contributors as noted in the AUTHORS file.
    This file is part of CZMQ, the high-level C binding for 0MQ:
    http://czmq.zeromq.org.

    This Source Code Form is subject to the terms of the Mozilla Public
    License, v. 2.0. If a copy of the MPL was not distributed with this
    file, You can obtain one at http://mozilla.org/MPL/2.0/.
    =========================================================================
*/

public import c.zmq.czmq_library;

extern (C):

enum ZUUID_LEN = 16;
enum ZUUID_STR_LEN = ZUUID_LEN * 2;

//  @warning THE FOLLOWING @INTERFACE BLOCK IS AUTO-GENERATED BY ZPROJECT
//  @warning Please edit the model at "api/zuuid.api" to make changes.
//  @interface
//  This is a stable class, and may not change except for emergencies. It
//  is provided in stable builds.
//  Create a new UUID object.
zuuid_t* zuuid_new ();

//  Create UUID object from supplied ZUUID_LEN-octet value.
zuuid_t* zuuid_new_from (const(ubyte)* source);

//  Destroy a specified UUID object.
void zuuid_destroy (zuuid_t** self_p);

//  Set UUID to new supplied ZUUID_LEN-octet value.
void zuuid_set (zuuid_t* self, const(ubyte)* source);

//  Set UUID to new supplied string value skipping '-' and '{' '}'
//  optional delimiters. Return 0 if OK, else returns -1.         
int zuuid_set_str (zuuid_t* self, const(char)* source);

//  Return UUID binary data.
const(ubyte)* zuuid_data (zuuid_t* self);

//  Return UUID binary size
size_t zuuid_size (zuuid_t* self);

//  Returns UUID as string
const(char)* zuuid_str (zuuid_t* self);

//  Return UUID in the canonical string format: 8-4-4-4-12, in lower
//  case. Caller does not modify or free returned value. See        
//  http://en.wikipedia.org/wiki/Universally_unique_identifier      
const(char)* zuuid_str_canonical (zuuid_t* self);

//  Store UUID blob in target array
void zuuid_export (zuuid_t* self, ubyte* target);

//  Check if UUID is same as supplied value
bool zuuid_eq (zuuid_t* self, const(ubyte)* compare);

//  Check if UUID is different from supplied value
bool zuuid_neq (zuuid_t* self, const(ubyte)* compare);

//  Make copy of UUID object; if uuid is null, or memory was exhausted,
//  returns null.                                                      
zuuid_t* zuuid_dup (zuuid_t* self);

//  Self test of this class.
void zuuid_test (bool verbose);

//  @end

