/// @description Stop & Image scale
if (del>0) { 
   del-=1;
   image_angle += 1;
} else {
  if (y >= ystart + rand) {
     speed = 0;
     gravity = 0;
  }
}
//Size
if (size > 0.7) {
    size -= .0125;
}

image_xscale = size;
image_yscale = size;




