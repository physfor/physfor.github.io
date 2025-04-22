settings.render=10;

import three;
import texcolors;
import x11colors;
size(6cm,0);
currentprojection =
orthographic((5,2,2));


//styles
///////////////////////////////////////////
DefaultHead3.size=new real(pen p=currentpen) {return 3mm;};
defaultpen(fontsize(11pt));
defaultpen(linewidth(0.4pt));
pen thick=black+2*linewidth(currentpen);
/////////////////////////////////////////


path path2D = (2.5, 0) .. (2, 1) .. (0, 2) .. (-2.25, 1) .. (-1.5, 0) .. (-1, -1) .. (0, -1.75) .. (1, -2) .. cycle;
//dot((1,0,0));

path3 path3D = path3(path2D, XYplane);

draw(surface(path3D), yellow+opacity(.25));
draw(path3D, Chocolate+thick,L=Label("$S$",EndPoint,N,black));

//axes
//draw(O--2.5X,L=Label("$x$",EndPoint,WSW));
//draw(O--2.3Y,L=Label("$y$",EndPoint,ESE));
draw(O--3Z,dashed,L=Label("$\Pi$",EndPoint,N,black));
draw(O--rotate(-30,X)*4Z,gray+thick,L=Label("$\vec B$",EndPoint,E,black),Arrow3(3.5mm,angle=10,emissive(gray)));

draw("$\alpha$",reverse(arc(O,0.8*Z,rotate(-30,X)*0.8*Z)),N+0.3E);

real a=4;
draw(((-a,-a,0)--(a,-a,0)--(a,a,0)--(-a,a,0)--cycle));


