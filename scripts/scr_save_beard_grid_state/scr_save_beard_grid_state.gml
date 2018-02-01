//Saves the state of the beard grid

ini_open("beards.ini");
var to_add = ds_grid_write(global.all_beard_properties);
ini_write_string("GameData", "beard_settings", to_add);
ini_close();