#include "colors.inc"
#include "stars.inc"
#include "textures.inc"


global_settings {
    assumed_gamma 2.2
  }

camera {
    location <0, 1, -4>
    look_at  <0, 0,  2>

    focal_point < 0, 1, 0.2>
    aperture 0.09
    blur_samples 40
    }


 light_source { <10, 10, -10> color White}
 light_source { <-10, 10, -10> color Yellow}

 light_source {
    <-8, 8, -8>
    color White
    spotlight
    radius 0.5
    falloff 5
    tightness 10
    point_at  <0, 0, 0>
  }


sphere{ <0,0,0>, 1
        texture{ Starfield1 scale 0.25
               } // end of texture
        scale 10000
        hollow
}


fog {
  	distance 5
  	fog_type 2
  	fog_alt 0.1
  	fog_offset 2
  	turbulence 0.9
  	color rgbf<0.4, 0.3, 0.3, 0.5>
  }


 fog {
  	distance 5
  	fog_type 2
  	fog_alt 0.5
  	fog_offset 0.1
  	turbulence 0.2
  	color rgbf<0.4, 0.1, 0.1, 0.4>
  }


height_field {
    png "mandel.png"
    water_level 0.1
    smooth
    texture {
      Rust
      scale 0.9
    }
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
