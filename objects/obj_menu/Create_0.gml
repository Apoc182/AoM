//Menu options
menu = ["Start", "Options", "Exit"];

//Which menu
options = false;

//Where cursor is
mpos = 0;

if(instance_exists(obj_fader)) obj_fader.fade_speed = .05;

scr_music_play(snd_title);

version_exists = file_exists(working_directory + "version.txt");

if(version_exists){ 
	version = file_text_open_read(working_directory + "version.txt");
	version_number = file_text_read_real(version) * .1;
	file_text_close(version);
}

