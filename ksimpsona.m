format long
%Wprowadzanie danych z konsoli:
printf('Podaj: \n');
a=input('Poczatek przedzialu calkowania: '); 
b=input('Koniec przedzialu calkowania: '); 
N=input('Podaj liczbe podprzedzialow: ');
%Dlugosc podprzedzialow h:
h=(b-a)./N;
%obliczanie pierwszej sumy uzytej we wzorze:
sumac1=0;
for i=1:(N-1)
a2=a+i.*h;
wart=(f(a2));
sumac1=sumac1+wart;
endfor
%obliczanie drugiej sumy uzytej we wzorze:
sumac2=0;
for i=0:(N-1)
a2=a+i.*h+h./2;
wart=(f(a2));
sumac2=sumac2+wart;
endfor
%wzor na zlozona kwadrature prostokatow:
calka=h./3.*((f(a)+f(b))./2+sumac1+2.*sumac2);
%zwrocenie wartosci calki w konsoli:
printf('Wartosc calki: %d \n',calka)  	
