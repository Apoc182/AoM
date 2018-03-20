/// @desc range(number_to_check, min, max);
/// @arg number_to_check
/// @arg min
/// @arg max

var range = argument0;
var low = argument1;
var high = argument2;

if(range == low || range == high) return true;


if(sign(range - low) == 1 && sign(high - range) == 1){
	

	return true;

}else{

	return false;

}