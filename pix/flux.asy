settings.render=10;

import three;
import texcolors;
import x11colors;
import solids;
size(5cm,0);
currentprojection =
orthographic((5,3,1.5));


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
//circ
path3 c2=circle((1,0,0),0.1,Y);
revolution sur1=revolution((0,0,0),c2,Z,0,360);
draw(rotate(-45,X)*surface(sur1),orange); // повернуть кольцо -45 град.



//lines
real a=1;
for (int k = 0; k <= 2; ++k) {

for (int n = 0; n <= 2; ++n) {
//draw((0.5a,1.5a-n*a,0)--(0.5a,1.5a-n*a,2a),.5gray+opacity(.5));
draw((a-k*a,1a-n*a,-2a)--(a-k*a,1a-n*a,2a),gray+thick+opacity(.5),Arrow3(3.5mm,angle=10,emissive(gray),position=Relative(0.75)));
}

}

label("$B$",(a,a-2a,a),WNW);

label("K$_2$",(0,1.1,-0.1),SE);


