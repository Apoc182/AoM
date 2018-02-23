//move upwards
y -= 1;

//start fade out
if(fade) alpha -= .05;

//destroy object
if(alpha == 0)instance_destroy();