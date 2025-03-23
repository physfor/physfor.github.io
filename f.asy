import three;
size(100cm,0);
currentprojection=TopView;

//for gray
//currentlight=light((1,1,3));

//for blue
currentlight=light((2,-1,30));

Label L=Label("\texttt{\textbackslash physfor}",(0,0));
surface s=extrude(L,.8*Z);
//draw(rotate(90,Y)*rotate(90,Z)*scale3(.5)*s,gray(.5));
draw(rotate(20,X)*rotate(30,Z)*scale3(.5)*s,gray);

/*
draw(O--2*X,Arrow3);label("$x$",2*X,NW);
draw(O--2*Y,Arrow3);label("$y$",2*Y,SE);
draw(O--Z,Arrow3);label("$z$",Z,E);

*/


