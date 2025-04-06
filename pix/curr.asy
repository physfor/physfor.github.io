settings.render=15;

import three;
import texcolors;
import x11colors;
size(7cm,0);
currentprojection = perspective((5,-6,2.5));
//currentprojection = orthographic((5,-6,2.5));


//styles
///////////////////////////////////////////
DefaultHead3.size=new real(pen p=currentpen) {return 3mm;};
defaultpen(fontsize(11pt));
defaultpen(linewidth(0.4pt));
pen thick=black+2*linewidth(currentpen);
/////////////////////////////////////////


// coordinate axes 
//draw(O -- 2X,L=Label("$x$",position=EndPoint));
//draw(O -- 2Y,L=Label("$y$", position=EndPoint));
//draw(-2Z -- 2Z,L=Label("$z$", position=EndPoint));


///////////////////////////////////////
//поток частиц
srand(2);
real a=2;
for (int irun=0; irun<=20; irun+=1)
{
real myx = 3*(1-a*unitrand());
real myy = (1-a*unitrand());
real myz = (1-a*unitrand());
draw(myx*X+myy*Y+myz*Z -- myx*X+myy*Y+myz*Z+(.5X),Arrow3(angle=10));
draw(shift(myx*X+myy*Y+myz*Z)*scale3(0.1)*unitsphere,red);

real an = unitrand();  
triple p1=(0,0,0), p2=(1,0,0);
transform3 r=rotate(360*an,p1,p2);
//draw(r*shift(myx*X+myy*Y)*scale3(0.1)*unitsphere,red);
//draw(r*(myx*X+myy*Y -- myx*X+myy*Y+(.5X)), arrow=Arrow3());

}


//cube
transform3 sh=shift(-.5,-.5,-.5);
transform3 xsc=xscale3(6);
transform3 ysc=yscale3(2.2);
transform3 zsc=zscale3(2.2);

draw(zsc*ysc*xsc*sh*unitcube,orange+opacity(.1));

//plane
real b=1.1;
draw(surface((0,b,b) -- (0,-b,b) -- (0,-b,-b) -- (0,b,-b) -- cycle),lightgray+opacity(.4));

