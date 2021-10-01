/// @description Reset display
display_reset(0,global.vsync);
switch (global.resolution) {
       
       case 0:
       global.width = 640;
       global.height = 360;
       break;
       
       case 1:
       global.width = 800;
       global.height = 600;
       break;
       
       case 2:
       global.width = 960;
       global.height = 540;
       break;
       
       case 3:
       global.width = 1024;
       global.height = 768;
       break;
       
       case 4:
       global.width = 1280;
       global.height = 720;
       break;
       
       case 5:
       global.width = 1366;
       global.height = 768;
       break;
       
       case 6:
       global.width = 1600;
       global.height = 900;
       break;
       
       case 7:
       global.width = 1920;
       global.height = 1080;
       break;
}


