//write your messages in an array, starting at 0, like so
message[0] = "Good morning Damien!\n\nI am ready to....";
message[1] = "Damien?";
message[2] = "Damien wake up!\n\nThis is no time to be selfish!";
message[3] = "...";
message[4] = "Your friends are here...";

message_current = 0; //0 is the first number in our array, and the message we are currently at
message_end = 4; //6 is the last number in our array
message_draw = ""; //this is what we 'write' out. It's blank right now
increase = 0.25; //the speed at which new characters are added
characters = 0; //how many characters have already been drawn
hold = 0; //if we hold 'Z', the text will render faster
hold_block = 0;

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


show_escape_string = false;
number_of_flashes = 0;
max_flash = 10;
alarm[2] = room_speed * .5;

box = instance_create_depth(0, 0, 0, obj_animated_box);

text_increaser = 0;
shrink = false;
max_size = .05;
rate_of_change = .001;