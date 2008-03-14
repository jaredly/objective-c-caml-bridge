enum {
  // No tag for Unit, since there is only a construct without an argument
  tagBool = 0,
  tagChar = 1,
  tagInt = 2,
  tagInt64 = 3,
  tagDouble = 4,
  tagString = 5,
  tagPointer = 6,
  tagSelector = 7,
  tagNSErrorArg = 8,
  tagNSRange = 9,
  tagNSPoint = 10,
  tagNSSize= 11,
  tagNSRect = 12 ,
};

#define Camlid_val(x)  (*((id *) Data_custom_val(x)))
#define Caml_pointer_val(x)  (*((void **) Data_custom_val(x)))

value caml_wrap_id (id x);
