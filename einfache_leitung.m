%Berechnungen von Leitungen
%% Eigenschaften der Leitung
%Außendurchmesser
ra=3.7*10^-6;
%Innendurchmesser
ri=0.58*10^-6;
%Phasendrehung
l=1

%Epsilon 0
Eps0=8.854187817*10^-12;
%EpsilonR
Epsr=2.4;
%Mü 
mue=1;


%Komplexer Widerstand
Rstrich=
%Komplexer Leitwert
Gstrich=
%Kreisfrequenz
%f=
%Winkelgeschwindigkeit
%w=
%Ausbreitungsgeschwindigkeit


%% Kapazitätsbelag
Cstrich= (2.*pi.*Eps0.*Epsr)./(log(ra./ri))
%oder falls gegeben
%Cstrich=

%% Induktivitätsbelag
Lstrich=mue./(2*pi).*log(ra./ri)
%oder falls gegeben
%Lstrich=

%% Wellenwiderstand
Rw=sqrt((Rstrich+1i*w*Lstrich)./(Gstrich+1i*w*Cstrich))


%% Beta
beta=sqrt(Lstrich.*Cstrich)

%% Ausbreitungsgeschwindigkeit bei Verlustfreier Leitung
v=w/(w.*sqrt(Lstrich.*Cstrich))

%% Wellenlänge
lambda=(2.*pi)/beta
%oder
%lambda= v/f;

%% Phasendrehung 
%in Rad
betaMalL= beta*l
%in Grad
winkel=betamalL./pi.*180