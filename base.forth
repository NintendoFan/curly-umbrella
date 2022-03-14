\ here we go
\ for ease, adding different commenting types

: // postpone \ ; immediate
: # postpone \ ; immediate

// now you can comment like this ( C )
# or this ( Python )
\ or just like this.
( commenting by parathesis also available natively in forth )

# now some basic useful stuff

: var variable ; : const constant ;
: print cr type cr ;
: ? @ print ;

# exit early from a definition and return to where word was called from
: then; postpone EXIT postpone then ; immediate

# if true, exit early
: if; postpone if postpone then; ;
