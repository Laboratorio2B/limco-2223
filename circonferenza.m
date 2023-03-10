function raggio = circonferenza(c,r)
%CIRCONFERENZA disegna una ciconferenza di centro c e raggio r
%   il centro è indicato attraverso il numero complesso c
%   restituisce il raggio
assert(r>0,"Il raggio deve essere positivo");

% approssimiamo la circonferenza con un poligono di n lati
n = 60;
% genero vettore di n punti equispaziati tra 0 e 2pi
a = 0:2*pi/n:2*pi;
ai = 1i * a;  % moltiplico componenti per i (unità immaginaria)
z = exp(ai);  % calcolo seni e coseni mediante l'esponenziale 
zf = r*z + c; % cambio il raggio e traslo 
plot(zf);     % disegno
raggio = r;   % restituiscce il raggio
end
