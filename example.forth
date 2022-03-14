
\ examplez

s" Key" constant KEY

variable held-item
: pick-up held-item ! ;
: in-hand held-item @ ;
: held? in-hand str= ;

variable last-clicked
: last-clicked! last-clicked ! ; \ ' clicked-element last-clicked!
: last-clicked@ last-clicked @ execute ;

: clicks last-clicked@ @ ;
: clicked 1 last-clicked@ +! ;

: first-click 			clicks 0= ;
: second-click 			clicks 2 < ;
: third-click 			clicks 3 < ;
: ?clicks ( clicknum ) 	clicks swap < ; \ if clicknum is greater than clicks, pass true. clicknum should be (actual number of clicks) + 1

variable painting
variable table
variable door

: door-event ( action )
	s" look" str= if
		s" It's a wooden door. Nothing very outstanding about it."
	then print
	s" open" str= if
		KEY held? if
			s" You use the key to unlock the door. It opens and you're free! Hooray!"
		else
			s" It appears to be locked, however. Maybe the key is around here somewhere."
		then print
	then
	s" kick" str= if
		s" You kick the door in a fit of rage! It doesn't budge, unfortunately." print
	then
;

: door-events
	KEY held? 1 ?clicks and if
		s" I've got the key here. Let's see if it works... Looks like it did! It's unlocked now. Time to get out of here!"
	then;
	first-click if
		clicked s" It's a wooden door. Let's see if it opens... Nope. It's locked. Maybe the key is around here somewhere..."
	else
		second-click if
			clicked s" It's a locked wooden door. Maybe I'll kick it down!... Damn, it didn't even budge."
		else
			third-click if
				clicked s" It's a big dumb door that won't move. I wish I could burn it."
			else
				s" A locked door."
			then
		then
	then
;
