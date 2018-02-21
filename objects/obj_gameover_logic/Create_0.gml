/// @description Insert description here
// You can write your code in this editor

//dotdotdot
dot_dot = "";
alarm[1] = room_speed/2;

if(global.scr > 0 && !global.debugging){
	http_get("http://gmscoreboard.com/handle_score.php?tagid=5a46f6769a1aa15146000542325&player=" + global.user_name +"&score=" + string(global.scr));
}


//Save max_score
ini_open("Save.ini");
ini_write_real("Save", "local_max", global.max_score);
ini_close();

//Fade in gamover
scr_music_play(snd_gameover);

//Delays the score being printed to the screen to allow http request to process.
alarm[0] = 2 * room_speed;


player_positions = [

	"p1",
	"p2",
	"p3",
	"p4",
	"p5",
	"p6",
	"p7",
	"p8",
	"p9",
	"p10"
	
	
]

player_scores = [

	"s1",
	"s2",
	"s3",
	"s4",
	"s5",
	"s6",
	"s7",
	"s8",
	"s9",
	"s10"
	
	
]

top_players = [];

disable_space = true;
alarm[2] = 5 * room_speed;


space_string = "";
esc_string = "";

alarm[3] = 5 * room_speed;
wake_up = false;