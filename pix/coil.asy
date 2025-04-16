settings.render=10;

import three;
import texcolors;
import x11colors;
import solids;
size(10cm,0);
currentprojection =
orthographic((5,1.2,-.5));


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


//curr
//cylinder1
real k=.08;
real r=.8;

triple spiral(real t){return (-r*cos(t),r*sin(t),k*t);}
real tmin=-pi,tmax=-24pi;
path3 g=graph(spiral,tmin,tmax,operator..);

tube T=tube(g,.2);
surface s=T.s;
draw(shift(0,-3,0)*rotate(90,X)*s,orange);


triple l=(.8,-3-k*-pi,0.01);
triple r=(-.8,24k*pi-3,0.01);

revolution cyl=cylinder(l,.1,-.8,Z);
draw(surface(cyl),orange);
revolution cyl=cylinder(r,.1,-.8,Z);
draw(surface(cyl),orange);

draw(shift(l-.8Z)*rotate(0,Y)*scale3(.1)*unitdisk,orange);
draw(shift(r-.8Z)*rotate(0,Y)*scale3(.1)*unitdisk,orange);


draw(shift(l+-Z)*O -- shift(l+-Z)*(-1Z),red+thick,L=Label("$I$",MidPoint,W,black),Arrow3(3.5mm,angle=10,emissive(red)));


//dot((0,-3,0),red);



////////////////////////////////////////
//plates
real a=2;
path3 pl=((0,-a,-a)--(0,-a,a)--(0,a,a)--(0,a,-a)--cycle); 
draw(shift(-1,0,0)*surface(pl), lightgray+opacity(1));
draw(shift(-2,0,0)*surface(pl), lightgray+opacity(1));

//cyl
triple pO=(-1.5,2,-2);
revolution cyl=cylinder(pO,.5,4,Z);
draw(surface(cyl),lightgray);

triple pO=(-1.5,-2,-2);
revolution cyl=cylinder(pO,.5,4,Z);
draw(surface(cyl),lightgray);

triple pO=(-1.5,-2,2);
revolution cyl=cylinder(pO,.5,4,Y);
draw(surface(cyl),lightgray);

triple pO=(-1.5,-2,-2);
revolution cyl=cylinder(pO,.5,4,Y);
draw(surface(cyl),lightgray);

//sphere
draw(shift(-1.5,2,-2)*scale3(.5)*unitsphere,lightgray);
draw(shift(-1.5,2,2)*scale3(.5)*unitsphere,lightgray);
draw(shift(-1.5,-2,-2)*scale3(.5)*unitsphere,lightgray);
draw(shift(-1.5,-2,2)*scale3(.5)*unitsphere,lightgray);


//fingers
for (int n = 0; n <= 3; ++n) {

triple f1=(-1.5,a,a);
revolution cyl=cylinder(f1,.5,((5/8)*2a),Z);
draw(rotate(-60,(-1.5,a,a),(-1.5,-a,a))*shift(0,(-1-.333)*n,0)*surface(cyl),lightgray);
  
triple f2=(shift((5/8)*2a*Sin(60),0,(5/8)*2a*Cos(60))*f1);
revolution cyl=cylinder(f2,.5,((3/8)*2a),Z);
draw(rotate(-60-70,f2,shift(0,-1,0)*f2)*shift(0,(-1-.333)*n,0)*surface(cyl),lightgray);
draw(shift(f2)*shift(0,(-1-.333)*n,0)*scale3(.5)*unitsphere,lightgray);
  
//dot(shift((3/8)*2a*Sin(60+70),0,(3/8)*2a*Cos(60+70))*f2,red);
triple f3=(shift((3/8)*2a*Sin(60+70),0,(3/8)*2a*Cos(60+70))*f2);
revolution cyl=cylinder(f3,.5,((2/8)*2a),Z);
draw(rotate(-60-70-50,f3,shift(0,-1,0)*f3)*shift(0,(-1-.333)*n,0)*surface(cyl),lightgray);
draw(shift(f3)*shift(0,(-1-.333)*n,0)*scale3(.5)*unitsphere,lightgray);
  
triple f4=(shift((2/8)*2a*Sin(60+70+50),0,(2/8)*2a*Cos(60+70+50))*f3);
draw(shift(f4)*shift(0,(-1-.333)*n,0)*scale3(.5)*unitsphere,lightgray);

}


//big fing
triple pO=(-1.5,2,-2);
revolution cyl=cylinder(pO,.5,2,Y);
draw(rotate(-10,pO,shift(-1,0,0)*pO)*surface(cyl),lightgray);

triple bf=(shift(0,(4/8)*2a*Cos(10),(4/8)*2a*Sin(10))*pO);
revolution cyl=cylinder(bf,.5,((2.5/8)*2a),Y);
draw(surface(cyl),lightgray);
draw(shift(bf)*scale3(.5)*unitsphere,lightgray);
draw(shift(0,(2.5/8)*2a,0)*shift(bf)*scale3(.5)*unitsphere,lightgray);



