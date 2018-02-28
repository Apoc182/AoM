//?name=""&time_alive=integer&beard_used=""&score=integer


//This script will send the database the players name, time_alive, beard_used and score.
//NORE: currently will only work in game_logic scope because of timer...

//My servers current IP. Change this when the php is hosted elsewhere.
var current_ip = "http://slicedbread.ddns.net"

var to_send = "/submit_data.php?name=" + global.user_name + "&time_alive=" + string(original_score) + "&beard_used_desc=" + scr_get_current_beard(BRD_BEARD_DESCRIPTION) + "&score=" + string(global.scr) + "&c_tally=" + string(global.cuntTally) + "&multiplier=" + string(global.black_drop_multiplier_max) + "&black_count=" + string(global.num_black_drops);

show_message(to_send);

http_get(current_ip + to_send);