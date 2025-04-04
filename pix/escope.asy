settings.render=15;


import three;
import texcolors;
import x11colors;
import solids;
import palette;
size(3cm,0);
currentprojection =
orthographic((5,4,1.5));
viewportmargin=(0,0.5);

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
//draw(O--3Z,L=Label("$\vec n$",EndPoint,W),Arrow3(angle=10));


//////////////////////////////////////////
//bulb
path3 bu=(0,1,-.05)--(0,1,2.25)--(0,.95,2.25)--(0,.95,0);
for (int n = 0; n <= 11; ++n) {
revolution sur=revolution(O,bu,Z,30*n,30*(n+1));
draw(surface(sur),MediumAquamarine+opacity(.05));
}

draw(shift(0,0,-0.05)*rotate(0,X)*scale3(1)*unitdisk,MediumAquamarine+opacity(.3));

//cap disk
draw(shift(0,0,2.25)*rotate(0,X)*scale3(1)*unitdisk,orange);
draw(shift(0,0,2.35)*rotate(0,X)*scale3(1)*unitdisk,orange);
revolution cyl=cylinder((0,0,2.25),1,.1,Z);
draw(surface(cyl),orange);

//rod
revolution cyl=cylinder((0,0,1.5),.05,1.5,Z);
draw(surface(cyl),lightgray);

revolution cyl=cylinder((-.4,0,1.5),.05,.8,X);
draw(surface(cyl),lightgray);
draw(shift(-.4,0,1.5)*rotate(90,Y)*scale3(.05)*unitdisk,lightgray);
draw(shift(.4,0,1.5)*rotate(90,Y)*scale3(.05)*unitdisk,lightgray);

//plates
revolution cyl=cylinder((-.3,0,1.5),.06,.1,X);
draw(surface(cyl),yellow);
revolution cyl=cylinder((.2,0,1.5),.06,.1,X);
draw(surface(cyl),yellow);

real a=0.06;

path3 path1=(-.3,.06,1.5) -- (-.3,.06,.5) -- (.3,.06,.5) -- (.3,.06,1.3) -- (-.2,.06,1.3) -- (-.2,.06,1.5) -- cycle;
draw(surface(path1), yellow);

path3 path1=(.3,-a,1.5) -- (.3,-a,.5) -- (-.3,-a,.5) -- (-.3,-a,1.3) -- (.2,-a,1.3) -- (.2,-a,1.5) -- cycle;
draw(surface(path1), Goldenrod);

//circ
draw(shift(0,0,3.0)*scale3(.2)*unitsphere,lightgray);

//plane box
real a=4.5;
path3 pl=((-a,-a,0)--(a,-a,0)--(a,a,0)--(-a,a,0)--cycle); 
//draw(pl);
//draw(surface(pl), lightgray+opacity(.5));

