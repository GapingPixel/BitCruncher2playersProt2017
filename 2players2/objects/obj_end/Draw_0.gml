/// @description Draw Text
draw_sprite_ext(spr_alpha,0,0,0,1,1,0,1,.5)
if (winner = "Blue") {
   var textc = make_colour_rgb(48,169,235); 
} else {
  var textc = make_colour_rgb(226,50,116); 
}

draw_text_colour(150,80,string_hash_to_newline(string(winner) + "  Wins"),textc,textc,textc,textc,1);

if (!instance_exists(obj_fade_out_game_end)) {
   instance_create(x,y,obj_fade_out_game_end);
}

