\ here we go
\ for ease, adding different commenting types

: // postpone \ ; immediate
: # postpone \ ; immediate

// now you can comment like this ( C )
# or this ( Python )
\ or just like this.
( commenting by parathesis also available natively in forth )

# now some basic useful stuff

: var variable ;
: print . cr ;
: ? @ print ;
: nip swap drop ;
: -rot rot rot ;
: +! dup @ rot + swap ! ;
