settings.render=15;

import three;
import texcolors;
import x11colors;
import solids;
size(6cm,0);
currentprojection =
perspective((10,15,10));


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
transform3 t=shift(-2,-2,0);


draw(unitsphere,surfacepen=material(specularpen=gray(.2),diffusepen=MediumSeaGreen,emissivepen=gray(0.3)));
            
//draw(unitsphere,MediumSeaGreen);

//nee
real a=.075;
//1
//path3 pl=((0,0,a) -- (0,3a,0) -- (0,0,-a) -- (0,-3a,0) -- cycle); 
path3 pl=((0,0,a) -- (0,3a,0) -- (0,0,-a) -- cycle); 
draw(rotate(20,Z)*rotate(-45,Y)*rotate(90,X)*shift(1.01,0,0)*surface(pl), NavyBlue+opacity(.5));

path3 pl=((0,0,a) -- (0,-3a,0) -- (0,0,-a) -- cycle); 
draw(rotate(20,Z)*rotate(-45,Y)*rotate(90,X)*shift(1.01,0,0)*surface(pl), red+opacity(.5));


//2
path3 pl=((0,0,a) -- (0,3a,0) -- (0,0,-a) -- cycle); 
draw(rotate(100,Z)*rotate(-25,Y)*rotate(90,X)*shift(1.01,0,0)*surface(pl), NavyBlue+opacity(.5));

path3 pl=((0,0,a) -- (0,-3a,0) -- (0,0,-a) -- cycle); 
draw(rotate(100,Z)*rotate(-25,Y)*rotate(90,X)*shift(1.01,0,0)*surface(pl), red+opacity(.5));


//3
path3 pl=((0,0,a) -- (0,3a,0) -- (0,0,-a) -- cycle); 
draw(rotate(70,Z)*rotate(5,Y)*rotate(90,X)*shift(1.01,0,0)*surface(pl), NavyBlue+opacity(.5));

path3 pl=((0,0,a) -- (0,-3a,0) -- (0,0,-a) -- cycle); 
draw(rotate(70,Z)*rotate(5,Y)*rotate(90,X)*shift(1.01,0,0)*surface(pl), red+opacity(.5));


label("$S$",(0,0,1.12),N);
label("$N$",(0,0,-1.2),S);

