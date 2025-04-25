settings.render=10;

import three;
import palette;

size(6cm,0);
currentprojection =
orthographic((5,9,3));
currentlight=light((-1,0,1));


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

real k=10;

for (int n = 0; n <= 3; ++n) {
surface sur=shift(n*2Z)*yscale3(k)*rotate(90,Y)*surface(unitsquare);
sur.colors(palette(sur.map(zpart), Gradient(gray,red*(1-.1*n))));
draw(sur);
}

for (int n = 1; n <= 3; ++n) {
surface sur=shift(-n*2Z)*yscale3(k)*rotate(90,Y)*surface(unitsquare);
sur.colors(palette(sur.map(zpart), Gradient(gray,red*(1-.1*n))));
draw(sur);
}

//

for (int n = 0; n <= 3; ++n) {
surface sur=shift(Z+2n*Z)*yscale3(k)*rotate(90,Y)*surface(unitsquare);
sur.colors(palette(sur.map(zpart), Gradient(red*(1-.1*n),gray)));
draw(sur);
}

for (int n = 0; n <= 2; ++n) {
surface sur=shift(-Z-n*2Z)*yscale3(k)*rotate(90,Y)*surface(unitsquare);
sur.colors(palette(sur.map(zpart), Gradient(red*(1-.1*(n+1)),gray)));
draw(sur);
}


//dot
dot((10,5,1),L=Label("$S_1$",black),W,red+1mm);
dot((10,5,-1),L=Label("$S_2$",black),W,red+1mm);


//label
label("$O$",(0,10,0),E);
label("$1$",(0,10,2),E);
label("$1$",(0,10,-2),E);
label("$2$",(0,10,4),E);
label("$2$",(0,10,-4),E);
label("$3$",(0,10,6),E);
label("$3$",(0,10,-6),E);



draw((0,5,0)--(10,5,0),dashed);


