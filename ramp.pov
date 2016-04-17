//+KFF9

#include "colors.inc"
#include "textures.inc"
#include "glass.inc"
#include "metals.inc"
#include "golds.inc"
#include "stones.inc"
#include "woods.inc"
#include "shapes.inc"
#include "shapes2.inc"


camera{ location <0+(clock *2-1)*8,3.5,-6+clock>
        look_at <0,0,0>}

///sor Surface of Revolution 
sor{  7, // # of points,  list of <x,y> points, spline rotates around y-axis 
     <0.00,0.00> 
     <0.12,0.00> 
     <0.62,0.54> 
     <0.21,0.83> 
     <0.19,1.46> 
     <0.29,1.50> 
     <0.46,1.53>
     sturm  // optional!
     texture { pigment{ color LightWood}
               normal { bumps 0.75 scale 0.010}
               finish { phong 1}
             } // end of texture 
     scale 1.0  rotate<0,0,0> translate<0,0,0>
   } // end of sor ---------------------------------------------------------------------


//----------------------------------------------------------------------------
#include "shapes3.inc"

//----------------------------------------------------------------------------
object{ Egg_Shape( 1.60, 0.65  ) // (Lower_Scale, Upper_Scale) 
                 material{ texture { T_Orange_Glass } // end of texture 
                   interior{ I_Glass } // end of interior
                 } // end of material -------------------
                 
                // normal { bumps 0.3 scale 0.125}
                // finish { phong .9 reflection{ .3 } }

         interior{ //I_Glass
                   ior 1.2
          }
           
        scale <1,1,1>*0.5
        rotate <0,0,0>
        translate< 0, 1.6, 0>
      } // end of object
//----------------------------------------------------------------------------

cone{ <0,1.3,0>,1.00,<0,2.70,0>,0.600 

      texture{ pigment{ color rgbf<1.00,1,1,0.75>}
               // pigment{ color rgb<1.00,0.60,0.00>}
               finish { phong 0.5 reflection{ 0.00 metallic 0.00} } 
             } // end of texture
      scale <1,1,1> rotate<0,0,0> translate<0,0.0001,0> 
    } // end of cone -----------------------------------

light_source{<0,2.2,0> color <1, 0.6,  0.2>
	spotlight
	looks_like{
        sphere {<0,.1,0>, .08
           texture {finish {ambient 1} pigment{color <1, 0.6,  0.2>}}
        } 
    }
}


box{
	<-3, 0.1 , 3>  < 3,0,-3>
	       texture{ T_Wood29    
                normal { wood 0.5 scale 0.05 turbulence 0.1 rotate<0,0,0> }
                finish { phong 1 } 
                rotate<0,0,0> scale 0.5 translate<0,0,0>
              } // end of texture 


}
