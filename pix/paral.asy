//the image Asymptote code
//http://asymptote.ualberta.ca/

settings.render=15;

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

//draw(surface(path3D), lightgray+opacity(.5));
//draw(path3D, Chocolate+thick,L=Label("$S$",EndPoint,N,black));

//axes
//draw(O--2.5X,L=Label("$x$",EndPoint,WSW));
//draw(O--2.3Y,L=Label("$y$",EndPoint,ESE));
//draw(O--3Z,L=Label("$\vec n$",EndPoint,W),Arrow3(angle=10));
//draw(O--rotate(-30,X)*4Z,Green+thick,L=Label("$\vec B$",EndPoint,E,black),Arrow3(3.5mm,angle=10,emissive(Green)));

//draw("$\alpha$",reverse(arc(O,0.8*Z,rotate(-30,X)*0.8*Z)),N+0.3E);

//plane box
real a=4.5;
path3 pl=((-a,-a,0)--(a,-a,0)--(a,a,0)--(-a,a,0)--cycle); 
draw(pl);
draw(surface(pl), lightgray+opacity(.5));

//cube
transform3 sh=shift(-.5,-.5,0);
transform3 sc=scale3(2);
transform3 zsc=zscale3(2);

draw(zsc*sc*sh*unitcube,orange);

label(Label("$B$"),(-1,0,4),N);

