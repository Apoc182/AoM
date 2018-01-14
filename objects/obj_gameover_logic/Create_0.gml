/// @description Insert description here
// You can write your code in this editor

if(global.max_score > 0){
	http_get("http://gmscoreboard.com/handle_score.php?tagid=5a46f6769a1aa15146000542325&player=" + global.user_name +"&score=" + string(global.max_score));
}
audio_play_sound(snd_awCunt, 0, false);



//Fade out theme
audio_sound_gain(snd_title, 0, 1000);

//Fade in gamover
audio_stop_sound(snd_gameover);
audio_play_sound(snd_gameover, 0, false);
audio_sound_gain(snd_gameover, 0, 0);
audio_sound_gain(snd_gameover, .5, 1000);

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