#include "colors.inc"
#include "stars.inc"

global_settings {
    assumed_gamma 2.2
  }

camera {
    location <0, 1, -4>
    look_at  <0, 0,  2>
    }


 light_source { <10, 10, -10> color White}
 light_source { <-10, 10, -10> color Yellow}

// stars in sky
/*sphere{ <0,0,0>, 1
        texture{ Starfield1 scale 0.01
               } // end of texture
        scale 10000
        hollow
      } */


fog {
  	distance 5
  	fog_type 1
  	fog_alt 2
  	fog_offset 2
  	turbulence 0.9
  	color rgbf<0.4, 0.3, 0.3, 0.5>
  }

height_field {
    png "mandel.png"
    water_level 0.1
    smooth
    pigment { White }
    translate <-.5, -.5, -0.5>
    rotate <0, 180, 0>
    scale <8, 1, 8>
  }

sphere{<0,0,0>, 3
   texture{
    pigment{
     image_map 
     	{ png "mandel.png"
     	map_type 1
     	interpolate 2
     	once
      	}
    }
    finish { diffuse 0.9 phong 1}// end of finish
    scale 2
    rotate <180, 0, 0>
    } // end of texture

    translate<-1,1,10>
}
