settings.render=10;

import three;
import texcolors;
import x11colors;
import solids;
size(9cm,0);
currentprojection =
orthographic((5,4.5,1.5));


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
real a=4;
triple pO=(-5,0,2);
revolution cyl=cylinder(pO,.1,10,X);
draw(surface(cyl),orange);
draw(shift(5,0,2)*rotate(-90,Y)*scale3(.1)*unitdisk,orange);
draw(shift(-5,0,2)*rotate(-90,Y)*scale3(.1)*unitdisk,orange);

draw((0,0,2)--(0,3,2),RoyalBlue+thick,L=Label("$\vec v$",EndPoint,NNE,black),Arrow3(3.5mm,angle=10,emissive(RoyalBlue)));

//draw((0,0,2)--(0,0,3),gray+thick,L=Label("$\vec B$",EndPoint,W,black),Arrow3(3.5mm,angle=10,emissive(gray)));



////////////////////////////////////////
//plates
real a=2;
path3 pl=((-a,-2a,0)--(a,-2a,0)--(a,2a,0)--(-a,2a,0)--cycle); 
draw(shift(0,0,0)*surface(pl), .5NavyBlue+white+opacity(1));
draw(shift(0,0,-1)*surface(pl), .5NavyBlue+white+opacity(1));

real a=2;
path3 pl=((-a,-2a,0)--(a,-2a,0)--(a,2a,0)--(-a,2a,0)--cycle); 
draw(shift(0,0,2a)*surface(pl), .5red+white+opacity(1));
draw(shift(0,0,2.5a)*surface(pl), .5red+white+opacity(1));


//path3 bl=
  //arc((a,-2a,a),2,180,90,270,90,CCW) -- 
  //(-a,-3a,a) --
  //arc((-a,-2a,a),2,270,90,180,90,CCW) --
  //cycle
  
//;

/////////////////
//below
//arcs
path3 bl=(a,-2a,0) -- (-a,-2a,0);
for (int n = 0; n <= 5; ++n) {
revolution sur=revolution(((-a,-2a,a)),bl,X,0-15*n,-15-15*n);
draw(surface(sur),.5NavyBlue+white);
}


path3 bl=(a,-2a,-1) -- (-a,-2a,-1);
for (int n = 0; n <= 5; ++n) {
revolution sur=revolution(((-a,-2a,a)),bl,X,0-15*n,-15-15*n);
draw(surface(sur),.5NavyBlue+white);
}
  

path3 bl=(a,-2a,0) -- (a,-2a,-1);
for (int n = 0; n <= 5; ++n) {
revolution sur=revolution(((-a,-2a,a)),bl,X,0-15*n,-15-15*n);
draw(surface(sur),.5NavyBlue+white);
}


path3 bl=(-a,-2a,0) -- (-a,-2a,-1);
for (int n = 0; n <= 5; ++n) {
revolution sur=revolution(((-a,-2a,a)),bl,X,0-15*n,-15-15*n);
draw(surface(sur),.5NavyBlue+white);
}


path3 bl=(a,-2a,0) -- (a,-2a,-1) -- (a,2a,-1) -- (a,2a,0) -- cycle;
draw(surface(bl),.5NavyBlue+white);
path3 bl=(-a,-2a,0) -- (-a,-2a,-1) -- (-a,2a,-1) -- (-a,2a,0) -- cycle;
draw(surface(bl),.5NavyBlue+white);
path3 bl=(a,2a,0) -- (a,2a,-1) -- (-a,2a,-1) -- (-a,2a,0) -- cycle;
draw(surface(bl),.5NavyBlue+white);



/////////////////
//above
//arcs
path3 bl=(a,-3a,a) -- (-a,-3a,a);
for (int n = 0; n <= 5; ++n) {
revolution sur=revolution(((-a,-2a,a)),bl,X,0-15*n,-15-15*n);
draw(surface(sur),.5red+white);
}


path3 bl=(a,-3.5a,a) -- (-a,-3.5a,a);
for (int n = 0; n <= 5; ++n) {
revolution sur=revolution(((-a,-2a,a)),bl,X,0-15*n,-15-15*n);
draw(surface(sur),.5red+white);
}


path3 bl=(a,-3a,a) -- (a,-3.5a,a);
for (int n = 0; n <= 5; ++n) {
revolution sur=revolution(((-a,-2a,a)),bl,X,0-15*n,-15-15*n);
draw(surface(sur),.5red+white);
}


path3 bl=(-a,-3a,a) -- (-a,-3.5a,a);
for (int n = 0; n <= 5; ++n) {
revolution sur=revolution(((-a,-2a,a)),bl,X,0-15*n,-15-15*n);
draw(surface(sur),.5red+white);
}


path3 bl=(a,-2a,2.5a) -- (a,-2a,2a) -- (a,2a,2a) -- (a,2a,2.5a) -- cycle;
draw(surface(bl),.5red+white);
path3 bl=(-a,-2a,2.5a) -- (-a,-2a,2a) -- (-a,2a,2a) -- (-a,2a,2.5a) -- cycle;
draw(surface(bl),.5red+white);
path3 bl=(a,2a,2.5a) -- (a,2a,2a) -- (-a,2a,2a) -- (-a,2a,2.5a) -- cycle;
draw(surface(bl),.5red+white);


//lines
for (int n = 0; n <= 3; ++n) {
//draw((0.5a,1.5a-n*a,0)--(0.5a,1.5a-n*a,2a),.5gray+opacity(.5));
draw((0.5a,1.5a-n*a,0)--(0.5a,1.5a-n*a,2a),gray+thick+opacity(.5),MidArrow3(3.5mm,angle=10,emissive(gray)));
}
  
for (int n = 0; n <= 3; ++n) {
//draw((-0.5a,1.5a-n*a,0)--(-0.5a,1.5a-n*a,2a),.5gray+opacity(.5));
draw((-0.5a,1.5a-n*a,0)--(-0.5a,1.5a-n*a,2a),gray+thick+opacity(.5),MidArrow3(3.5mm,angle=10,emissive(gray)));
}

label("$B$",(-0.5a,-1.5a,a),NW);

label("$C$",(5,-.1,2),W);
label("$D$",(-5,.1,2),E);


// to mark right angle ABC in 3D space
void Rmark(triple A, triple B, triple C, real size=.8,pen p=currentpen){
triple Ba=B+size*unit(A-B);
triple Bc=B+size*unit(C-B);
triple Bt=Ba+Bc-B;
draw(Ba--Bt--Bc,p);  
};

Rmark(shift(2Z)*-X,shift(2Z)*O,shift(2Z)*Y,black);



