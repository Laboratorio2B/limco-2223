function raggio = circonferenza2(x0,y0,r)
%CIRCONFERENZA disegna una ciconferenza di centro x0,y0 e raggio r
%   il centro è indicato attraverso le sue coordinate
%   restituisce il raggio 
%   Non usiamo numeri complessi, ma solo seno e coseno
assert(r>0,"Il raggio deve essere positivo");
assert(imag(x0)==0 & imag(y0)==0,"Le coordinate del centro devono essere reali");

% approssimiamo la circonferenza con un poligono di n lati
n = 60;
% genero vettore di n punti equispaziati tra 0 e 2pi
t = 0:2*pi/n:2*pi;
% mette in x e y cos(t)e sin(t)
x = cos(t)+x0; % coseno di ogni componente di t e sommo x0
y = sin(t)+y0;
plot(x,y,'r');     % disegno in rosso
raggio = r;        % restituiamo il raggio
end
