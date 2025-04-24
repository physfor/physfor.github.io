settings.render=15;

import three;
import texcolors;
import x11colors;
import solids;

size(6cm,0);
currentprojection =
orthographic((5,5,2));


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


// sin
real k=1;
real r=.5;
real sc=.5;

triple li(real t){return (0,t,r*sin(k*t));}
real tmin=-6pi,tmax=0;
path3 g=graph(li,tmin,tmax,operator..);
draw(yscale3(sc)*g,red);

triple li(real t){return (t,0,-r*sin(k*t));}
real tmin=0,tmax=8pi;
path3 g=graph(li,tmin,tmax,operator..);
draw(xscale3(sc)*g,red);


//dot
dot((0,-6pi*sc,0),L=Label("$S_1$",black),W,red+1mm);
dot((8pi*sc,0,0),L=Label("$S_2$",black),W,red+1mm);
dot((0,0,0),L=Label("$M$",black),E,black+1mm);


//dash
draw((0,0,0)--(0,-6pi*sc,0),dashed+gray);
draw((0,0,0)--(8pi*sc,0,0),dashed+gray);


