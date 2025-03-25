//the image Asymptote code
//http://asymptote.ualberta.ca/

settings.render=16;

import three;

currentprojection=RightView;
currentlight=light((-2,1,4));
size(4.5cm,0);


draw(unitsphere,lightgray+opacity(.7));

path3 li=(0,-3,0) -- (0,0,0);
draw(li,longdashdotted);


triple m1=(0,-2,2);
triple s=(0,-1,0);
triple p=(0,-1,-2);


draw(shift(s)*shift(m1)*scale3(.1)*unitsphere,lightgray+opacity(1));

draw((0,-3,2)--s,Arrow3);
draw(s--shift(s)*p,Arrow3);


draw("$\alpha$",reverse(shift(s)*scale3(.2)*arc(O,m1,rotate(45,X)*m1)),W+.5N);

draw("$\beta$",reverse(shift(s)*scale3(.2)*arc(O,p,rotate(-aTan(2),X)*p)),W-.5N);

label("$m_1$",(shift(s)*shift(.1Z)*m1),N);
label("$m_2$",(Z),N);



/*
draw(O--2X,Arrow3);label("$x$",2X,NW);
draw(O--2Y,Arrow3);label("$y$",2Y,SE);
draw(O--2Z,Arrow3);label("$z$",2Z,E);
*/
