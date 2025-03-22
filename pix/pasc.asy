settings.render=16;

import three;
import texcolors;
import x11colors;
import solids;
import palette;
size(3cm,0);
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


/////////////////////////////////
//balls
//EXternal ball
triple pA=(rotate(-20,X)*Z);
path3 circ=(reverse(arc(O,pA,-Z)));

for (int n = 0; n <= 11; ++n) {
revolution sur=revolution(O,circ,Z,30*n,30*(n+1));
draw(surface(sur),lightgray);
}

//INternal ball
triple pA=(rotate(-20,X)*0.9Z);
path3 circ=(reverse(arc(O,pA,-Z)));

for (int n = 0; n <= 11; ++n) {
revolution sur=revolution(O,circ,Z,30*n,30*(n+1));
draw(surface(sur),lightgray);
}

//between
triple pA=(rotate(-20,X)*Z);
triple pB=(rotate(-20,X)*.9Z);
path3 bet=pA--pB;
revolution sur=revolution(O,bet,Z,0,360);
draw(surface(sur),lightgray);


////////////////////////////////
//cyls
real ic=0.05;
real ec=.07;
//1 row
for (int n = 0; n <= 7; ++n) {
//cyl in
triple pB=(0,0.8,-ic);
triple pC=(0,1.1,-ic);
path3 cy=pB--pC;
revolution sur=revolution(O,cy,Y,0,360);
draw(rotate(45*n,Z)*surface(sur),lightgray);

//cyl ex
triple pB=(0,0.8,-ec);
triple pC=(0,1.1,-ec);
path3 cy=pB--pC;
revolution sur=revolution(O,cy,Y,0,360);
draw(rotate(45*n,Z)*surface(sur),lightgray);

//cap
triple pB=(0,1.1,-ec);
triple pC=(0,1.1,-ic);
path3 cy=pB--pC;
revolution sur=revolution(O,cy,Y,0,360);
draw(rotate(45*n,Z)*surface(sur),lightgray);
  
//wat
triple pB=(0,0.9,-ic);
triple pC=(0,1.4,-ic);
triple pD=(0,1.4,0);  
path3 wat=pB--pC--arc(pD, pC, (0,1.4+ic,0));
revolution sur=revolution(O,wat,Y,0,360);
draw(rotate(45*n,Z)*surface(sur),SkyBlue+opacity(.5));
//disk
triple pB=(0,1,-ic);
path3 di=pB--(0,1,0);
revolution sur=revolution(O,di,Y,0,360);
draw(rotate(45*n,Z)*surface(sur),SkyBlue+opacity(.9));  
}


////
//2 row
for (int n = 0; n <= 7; ++n) {
//cyl in
triple pB=(0,0.8,-ic);
triple pC=(0,1.1,-ic);
path3 cy=pB--pC;
revolution sur=revolution(O,cy,Y,0,360);
draw(rotate(45*n,Z)*rotate(45,X)*surface(sur),lightgray);

//cyl ex
triple pB=(0,0.8,-ec);
triple pC=(0,1.1,-ec);
path3 cy=pB--pC;
revolution sur=revolution(O,cy,Y,0,360);
draw(rotate(45*n,Z)*rotate(45,X)*surface(sur),lightgray);

//cap
triple pB=(0,1.1,-ec);
triple pC=(0,1.1,-ic);
path3 cy=pB--pC;
revolution sur=revolution(O,cy,Y,0,360);
draw(rotate(45*n,Z)*rotate(45,X)*surface(sur),lightgray);

//wat
triple pB=(0,0.9,-ic);
triple pC=(0,1.4,-ic);
triple pD=(0,1.4,0);  
path3 wat=pB--pC--arc(pD, pC, (0,1.4+ic,0));
revolution sur=revolution(O,wat,Y,0,360);
draw(rotate(45*n,Z)*rotate(45,X)*surface(sur),SkyBlue+opacity(.5));
//disk
triple pB=(0,1,-ic);
path3 di=pB--(0,1,0);
revolution sur=revolution(O,di,Y,0,360);
draw(rotate(45*n,Z)*rotate(45,X)*surface(sur),SkyBlue+opacity(.9));
}


////
//3 row
for (int n = 0; n <= 7; ++n) {
//cyl in
triple pB=(0,0.8,-ic);
triple pC=(0,1.1,-ic);
path3 cy=pB--pC;
revolution sur=revolution(O,cy,Y,0,360);
draw(rotate(45*n,Z)*rotate(-45,X)*surface(sur),lightgray);

//cyl ex
triple pB=(0,0.8,-ec);
triple pC=(0,1.1,-ec);
path3 cy=pB--pC;
revolution sur=revolution(O,cy,Y,0,360);
draw(rotate(45*n,Z)*rotate(-45,X)*surface(sur),lightgray);

//cap
triple pB=(0,1.1,-ec);
triple pC=(0,1.1,-ic);
path3 cy=pB--pC;
revolution sur=revolution(O,cy,Y,0,360);
draw(rotate(45*n,Z)*rotate(-45,X)*surface(sur),lightgray);

//wat
triple pB=(0,0.9,-ic);
triple pC=(0,1.4,-ic);
triple pD=(0,1.4,0);  
path3 wat=pB--pC--arc(pD, pC, (0,1.4+ic,0));
revolution sur=revolution(O,wat,Y,0,360);
draw(rotate(45*n,Z)*rotate(-45,X)*surface(sur),SkyBlue+opacity(.5));
//disk
triple pB=(0,1,-ic);
path3 di=pB--(0,1,0);
revolution sur=revolution(O,di,Y,0,360);
draw(rotate(45*n,Z)*rotate(-45,X)*surface(sur),SkyBlue+opacity(.9));
}


////
//cyl below
//cyl in
triple pB=(0,0.8,-ic);
triple pC=(0,1.1,-ic);
path3 cy=pB--pC;
revolution sur=revolution(O,cy,Y,0,360);
draw(rotate(-90,X)*surface(sur),lightgray);

//cyl ex
triple pB=(0,0.8,-ec);
triple pC=(0,1.1,-ec);
path3 cy=pB--pC;
revolution sur=revolution(O,cy,Y,0,360);
draw(rotate(-90,X)*surface(sur),lightgray);

//cap
triple pB=(0,1.1,-ec);
triple pC=(0,1.1,-ic);
path3 cy=pB--pC;
revolution sur=revolution(O,cy,Y,0,360);
draw(rotate(-90,X)*surface(sur),lightgray);

//wat
triple pB=(0,0.9,-ic);
triple pC=(0,1.4,-ic);
triple pD=(0,1.4,0);  
path3 wat=pB--pC--arc(pD, pC, (0,1.4+ic,0));
revolution sur=revolution(O,wat,Y,0,360);
draw(rotate(-90,X)*surface(sur),SkyBlue+opacity(.5));
//disk
triple pB=(0,1,-ic);
path3 di=pB--(0,1,0);
revolution sur=revolution(O,di,Y,0,360);
draw(rotate(-90,X)*surface(sur),SkyBlue+opacity(.9));



//////////////////////////////////////////
//bulb
//exbulb
triple pA=(rotate(-20,X)*Z);
triple pB=(rotate(-20,X)*.9Z);
path3 bu=pA--shift(3Z)*pA--shift(-.1Y*Sin(20))*shift(3Z)*pA--pB;
for (int n = 0; n <= 11; ++n) {
revolution sur=revolution(O,bu,Z,30*n,30*(n+1));
draw(surface(sur),MediumAquamarine+opacity(.15));
}


////////////////////////////////////////
//water
triple pB=(rotate(-20,X)*.9Z);
path3 wa=pB--shift(1.5Z)*pB--shift(-.9Y*Sin(20))*shift(1.5Z)*pB;
for (int n = 0; n <= 11; ++n) {
revolution sur=revolution(O,wa,Z,30*n,30*(n+1));
draw(surface(sur),SkyBlue+opacity(.5));  
}
//disk
triple pB=(rotate(-20,X)*.9Z);
path3 di=pB--(.9Z*Cos(20));
for (int n = 0; n <= 11; ++n) {
revolution sur=revolution(O,di,Z,30*n,30*(n+1));
draw(surface(sur),SkyBlue+opacity(.9));  
}

////////////////////////////////////////////
//plunger
//1
triple pO=(shift(-.9Y*Sin(20))*shift(1.5Z)*pB);
revolution cyl=cylinder(pO,.9*Sin(20),.2,Z);
draw(surface(cyl),orange);
draw(shift(0,0,(Cos(20)+1.5-.1))*rotate(0,X)*scale3(.9*Sin(20))*unitdisk,orange);
draw(shift(0,0,(Cos(20)+1.5+.1))*rotate(0,X)*scale3(.9*Sin(20))*unitdisk,orange);
//2
revolution cyl=cylinder(pO,.1,2.5,Z);
draw(surface(cyl),lightgray);

revolution cyl=cylinder(shift(-.5Y)*shift(2.5Z)*pO,.1,1,Y);
draw(surface(cyl),lightgray);
triple pA=(shift(-.5Y)*shift(2.5Z)*pO);
draw(shift(pA)*rotate(90,X)*scale3(.1)*unitdisk,lightgray);
draw(shift(pA)*shift(Y)*rotate(90,X)*scale3(.1)*unitdisk,lightgray);

//plunger arrow
draw(shift(-.2Z)*shift(Y)*pA--shift(-.6Z)*shift(-.2Z)*shift(Y)*pA,red+thick,Arrow3(3.5mm,angle=10,emissive(red)));



//rotate picture
//currentpicture = rotate(90,X)*currentpicture;

