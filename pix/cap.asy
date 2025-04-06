settings.render=15;

import three;
import texcolors;
import x11colors;
size(6cm,0);
currentprojection =
orthographic((5,2,1.5));
viewportmargin=(0,0);


//styles
///////////////////////////////////////////
DefaultHead3.size=new real(pen p=currentpen) {return 3mm;};
defaultpen(fontsize(11pt));
defaultpen(linewidth(0.4pt));
pen thick=black+2*linewidth(currentpen);
/////////////////////////////////////////


//draw(surface(path3D), lightgray+opacity(.5));
//draw(path3D, Chocolate+thick,L=Label("$S$",EndPoint,N,black));

//axes
//draw(O--2.5X,L=Label("$x$",EndPoint,WSW));
//draw(O--2.3Y,L=Label("$y$",EndPoint,ESE));
//draw(O--3Z,L=Label("$\vec n$",EndPoint,W),Arrow3(angle=10));
//draw(O--rotate(-30,X)*4Z,Green+thick,L=Label("$\vec B$",EndPoint,E,black),Arrow3(3.5mm,angle=10,emissive(Green)));

//draw("$\alpha$",reverse(arc(O,0.8*Z,rotate(-30,X)*0.8*Z)),N+0.3E);


//plate
real a=4.5;
path3 pl=((-a,-a,0)--(a,-a,0)--(a,a,0)--(-a,a,0)--cycle); 
draw(surface(pl), gray+opacity(1));

path3 pl=((-a,-a,0)--(a,-a,0)--(a,a,0)--(-a,a,0)--cycle); 
draw(shift(0,0,2)*surface(pl), lightgray+opacity(1));


//cube
transform3 sh=shift(-.5,-.5,0.025);
transform3 xsc=xscale3(1.9a);
transform3 ysc=yscale3(1.9a);
transform3 zsc=zscale3(1.9);

draw(zsc*ysc*xsc*sh*unitcube,yellow+opacity(.3));


//labels
//dot((.95a,-.95a,1));

label(Label("$\varepsilon$"),(a,-.93a,1.25),E);
label(Label("$d$"),(-.95a,.95a,1),E);
label(Label("$S$"),(-.15a,.97a,2),N);


//outputs
draw((0,0,2)--5Z);
draw((0,0,0)--(-3Z));


