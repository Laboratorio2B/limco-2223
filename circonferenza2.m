function raggio = circonferenza2(x0,y0,r)
%CIRCONFERENZA disegna una ciconferenza di centro x0,y0 e raggio r
%   il centro è indicato attraverso le sue coordinate
%   restituisce il raggio 
%   Non usiamo numeri complessi, ma solo seno e coseno
assert(r>0,"Il raggio deve essere positivo");
assert(imag(x0)==0 & imag(y0)==0,"Le coordinate del centro devono essere reali");

% approssimiamo la circonferenza con un poligono di n lati
n = 60;
% generiamo vettore di n punti equispaziati tra 0 e 2pi
% usiamo linspace invece che la notazione x:y:z
t = linspace(0,2*pi,n);
% mette in x e y cos(t)e sin(t)
x = r*cos(t)+x0; % coseno di ogni componente di t *r+ x0
y = r*sin(t)+y0;
plot(x,y,'r');     % disegno in rosso
axis padded;       % metti spazio fra disegno e bordi
axis equal;        % assi uguali per visualizzare un tondo 
raggio = r;        % restituiamo il raggio
end
