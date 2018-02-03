///Checks the current screen size and saves it to file.

ini_open("Save.ini");
ini_write_real("Save", "Fullscreen", window_get_fullscreen());
ini_close();