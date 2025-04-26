settings.render=15;

import three;
import texcolors;
import x11colors;

size(6cm,0);
currentprojection =
orthographic((5,6,2));


//styles
///////////////////////////////////////////
DefaultHead3.size=new real(pen p=currentpen) {return 3mm;};
defaultpen(fontsize(11pt));
defaultpen(linewidth(0.4pt));
pen thick=black+2*linewidth(currentpen);
/////////////////////////////////////////


//axes
//draw(O--2.5X,L=Label("$x$",EndPoint,WSW));
//draw(O--2.3Y,L=Label("$y$",EndPoint,ESE));


//plane box
real a=1.5;
path3 pl=((-a,-a,0)--(a,-a,0)--(a,a,0)--(-a,a,0)--cycle);
          
draw(rotate(90,Y)*pl);
draw(rotate(90,Y)*surface(pl), lightgray+opacity(.3));

draw(shift(7,0,0)*scale3(.15)*unitsphere,green);
draw((7,0,0)--(5,0,0),RoyalBlue+thick,L=Label("$\vec c$",MidPoint,N,black),Arrow3(3.5mm,angle=10,emissive(RoyalBlue)));

label("$S$",(0.2,0,0));

