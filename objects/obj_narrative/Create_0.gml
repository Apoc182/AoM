//write your messages in an array, starting at 0, like so
message[0] = "Good morning Damien! I am ready to....";
message[1] = "Damien?";
message[2] = "Damien wake up! This is no time to be selfish!";
message[3] = "...";
message[4] = "Your friends are here...";

message_current = 0; //0 is the first number in our array, and the message we are currently at
message_end = 4; //6 is the last number in our array
message_draw = ""; //this is what we 'write' out. It's blank right now
increase = 0.5; //the speed at which new characters are added
characters = 0; //how many characters have already been drawn
hold = 0; //if we hold 'Z', the text will render faster

message_length = string_length(message[message_current]); //get the number of characters in the first message

//Get kirsten moving
with (obj_kirsten_side) {
	move_towards_point(735, y, 1);
				
}

//Shut the title sound up
audio_sound_gain(snd_title, 0, 2000);

//Play millers sleepy music
audio_play_sound(snd_lullaby, 0, true);
audio_sound_gain(snd_lullaby, 0, 0);
audio_sound_gain(snd_lullaby, 1, 5000);