settings.render=10;

import three;
import texcolors;
import x11colors;
import solids;
size(9cm,0);
currentprojection =
orthographic((5,6,2.5));


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
//curr
//cylinder1
real a=4;
real h=-5.5;
triple pO=(-6,0,h);
revolution cyl=cylinder(pO,.1,8,X);
draw(surface(cyl),orange);
draw(shift(.5a,0,h)*rotate(-90,Y)*scale3(.1)*unitdisk,orange);
draw(shift(-1.5a,0,h)*rotate(-90,Y)*scale3(.1)*unitdisk,orange);

draw((-6.5,0,h)--(-8.5,0,h),red+thick,L=Label("$I$",MidPoint,N,black),Arrow3(3.5mm,angle=10,emissive(red)));

draw((-2,0,h)--(-2,3,h),RoyalBlue+thick,L=Label("$\vec F_{\mathrm{A}}$",EndPoint,NNE,black),Arrow3(3.5mm,angle=10,emissive(RoyalBlue)));

draw((-2,0,h) -- (-2,0,-4.5),gray+thick,L=Label("$\vec B$",EndPoint,W,black),Arrow3(3.5mm,angle=10,emissive(gray)));


////////////////////////////////////////
//plates
transform3 T=rotate(-90,Y);
real a=2;
path3 pl=((0,-a,-a)--(0,-a,a)--(0,a,a)--(0,a,-a)--cycle); 
draw(T*shift(-1,0,0)*surface(pl), lightgray+opacity(1));
draw(T*shift(-2,0,0)*surface(pl), lightgray+opacity(1));

//cyl
triple pO=(-1.5,2,-2);
revolution cyl=cylinder(pO,.5,4,Z);
draw(T*surface(cyl),lightgray);

triple pO=(-1.5,-2,-2);
revolution cyl=cylinder(pO,.5,4,Z);
draw(T*surface(cyl),lightgray);

triple pO=(-1.5,-2,2);
revolution cyl=cylinder(pO,.5,4,Y);
draw(T*surface(cyl),lightgray);

triple pO=(-1.5,-2,-2);
revolution cyl=cylinder(pO,.5,4,Y);
draw(T*surface(cyl),lightgray);

//sphere
draw(T*shift(-1.5,2,-2)*scale3(.5)*unitsphere,lightgray);
draw(T*shift(-1.5,2,2)*scale3(.5)*unitsphere,lightgray);
draw(T*shift(-1.5,-2,-2)*scale3(.5)*unitsphere,lightgray);
draw(T*shift(-1.5,-2,2)*scale3(.5)*unitsphere,lightgray);


//fingers
for (int n = 0; n <= 3; ++n) {

triple f1=(-1.5,a,a);
revolution cyl=cylinder(f1,.5,((3/8)*2a),Z);
draw(T*rotate(0,(-1.5,a,a),(-1.5,-a,a))*shift(0,(-1-.333)*n,0)*surface(cyl),lightgray);
  
triple f2=(shift((3/8)*2a*Sin(0),0,(3/8)*2a*Cos(0))*f1);
revolution cyl=cylinder(f2,.5,((3/8)*2a),Z);
draw(T*rotate(0,f2,shift(0,-1,0)*f2)*shift(0,(-1-.333)*n,0)*surface(cyl),lightgray);
draw(T*shift(f2)*shift(0,(-1-.333)*n,0)*scale3(.5)*unitsphere,lightgray);
  
//dot(shift((3/8)*2a*Sin(60+70),0,(3/8)*2a*Cos(60+70))*f2,red);
triple f3=(shift((3/8)*2a*Sin(0),0,(3/8)*2a*Cos(0))*f2);
revolution cyl=cylinder(f3,.5,((2/8)*2a),Z);
draw(T*rotate(0,f3,shift(0,-1,0)*f3)*shift(0,(-1-.333)*n,0)*surface(cyl),lightgray);
draw(T*shift(f3)*shift(0,(-1-.333)*n,0)*scale3(.5)*unitsphere,lightgray);
  
triple f4=(shift((2/8)*2a*Sin(0),0,(2/8)*2a*Cos(0))*f3);
draw(T*shift(f4)*shift(0,(-1-.333)*n,0)*scale3(.5)*unitsphere,lightgray);

}


//big fing
triple pO=(-1.5,2,-2);
revolution cyl=cylinder(pO,.5,2,Y);
draw(T*rotate(-10,pO,shift(-1,0,0)*pO)*surface(cyl),lightgray);

triple bf=(shift(0,(4/8)*2a*Cos(10),(4/8)*2a*Sin(10))*pO);
revolution cyl=cylinder(bf,.5,((2.5/8)*2a),Y);
draw(T*surface(cyl),lightgray);
draw(T*shift(bf)*scale3(.5)*unitsphere,lightgray);
draw(T*shift(0,(2.5/8)*2a,0)*shift(bf)*scale3(.5)*unitsphere,lightgray);


