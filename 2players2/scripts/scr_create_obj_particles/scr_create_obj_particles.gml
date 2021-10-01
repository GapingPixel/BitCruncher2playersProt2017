/// @description scr_create_obj_particles(x,y,amount,distance,object,sprite,spd)
/// @param x
/// @param y
/// @param amount
/// @param distance
/// @param object
/// @param sprite
/// @param spd
function scr_create_obj_particles(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	//gml_pragma("forceinline");
	var xx = argument0;
	var yy = argument1;
	var amount = argument2;
	var distance = argument3;
	var object = argument4;
	var sprite = argument5;
	var spd = argument6;

	repeat(amount) {
	    var xoffset = random(distance*choose(1, -1));
	    var yoffset = random(distance*choose(1, -1));
	    with (instance_create(xx+xoffset, yy+yoffset, object)) {
	         direction = other.direction+random_range(-30,30);
	         speed = spd+random_range(-1,1.5);
	         sprite_index = sprite;
	    }
	}



}
