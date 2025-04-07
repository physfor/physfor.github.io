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


real a=4;


/////////////////////////////////////////////
//cylinder1
triple pO=(0,-4,0);
revolution cyl=cylinder(pO,.1,8,Y);
draw(surface(cyl),orange);
draw(shift(0,a,0)*rotate(-90,X)*scale3(.1)*unitdisk,orange);
draw(shift(0,-a,0)*rotate(-90,X)*scale3(.1)*unitdisk,orange);
path3 l=(.1,-a,0)--(.1,a,0);
label("$A$",(0,-4,.1),N);


//cylinder2
triple pO=(0,-4,0);
revolution cyl=cylinder(pO,.5,8,Y);
draw(shift(-1.6,0,0)*surface(cyl),orange);
draw(shift(-1.6,a,0)*rotate(-90,X)*scale3(.5)*unitdisk,orange);
draw(shift(-1.6,-a,0)*rotate(-90,X)*scale3(.5)*unitdisk,orange);
path3 l=(.1,-a,0)--(.1,a,0);
label("$B$",(-1.6,-4,.5),N);


//cylinder3
triple pO=(0,-4,0);
revolution cyl=cylinder(pO,.5,4,Y);
draw(shift(-3.6,2,0)*surface(cyl),orange);
draw(shift(-3.6,-2,0)*rotate(-90,X)*scale3(.5)*unitdisk,orange);
draw(shift(-3.6,2,0)*rotate(-90,X)*scale3(.5)*unitdisk,orange);
path3 l=(.1,-a,0)--(.1,a,0);
label("$C$",(-3.6,-2,.5),N);

