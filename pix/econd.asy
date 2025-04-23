settings.render=10;

import three;
import texcolors;
import x11colors;
import solids;
size(6cm,0);
currentprojection =
orthographic((5,2,3));


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
transform3 t=shift(0,0,0);

draw(t*O--t*4Z,dashed,L=Label("$\Pi$",EndPoint,N));
draw(t*O--t*rotate(30,X)*5Z,gray+thick,L=Label("$\vec B$",EndPoint,W,black),Arrow3(3.5mm,angle=10,emissive(gray)));

draw(reverse(arc(t*O,t*1.5Z,t*rotate(30,X)*1.5Z)),L=Label("$\alpha$",MidPoint,N+.1W,black));

real a=4;
draw(((-a,-a,0)--(a,-a,0)--(a,a,0)--(-a,a,0)--cycle));

/////////////////////////////////////////////
//cylinder
triple pO=(0,-4,0);
revolution cyl=cylinder(pO,.1,8,Y);
draw(surface(cyl),orange);
draw(shift(0,a,0)*rotate(-90,X)*scale3(.1)*unitdisk,orange);
draw(shift(0,-a,0)*rotate(-90,X)*scale3(.1)*unitdisk,orange);
path3 l=(.1,-a,0)--(.1,a,0);
label(Label("$l$",MidPoint,SW),l);

//velocity
draw(O--(-3X),RoyalBlue+thick,L=Label("$\vec v$",EndPoint,ESE,black),Arrow3(3.5mm,angle=10,emissive(RoyalBlue)));

// to mark right angle ABC in 3D space
void Rmark(triple A, triple B, triple C, real size=.8,pen p=currentpen){
triple Ba=B+size*unit(A-B);
triple Bc=B+size*unit(C-B);
triple Bt=Ba+Bc-B;
draw(Ba--Bt--Bc,p);  
};

Rmark(-X,O,Y,black);

