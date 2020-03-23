format long
%Wprowadzanie danych z konsoli:
printf('Podaj: \n');
a=input('Poczatek przedzialu calkowania: '); 
b=input('Koniec przedzialu calkowania: '); 
N=input('Podaj liczbe podprzedzialow: ');
%Dlugosc podprzedzialow h:
h=(b-a)./N;
%obliczanie sumy uzytej we wzorze:
sumac=0;
for i=1:N
i2=i-0.5;
wart=(f(a+i2.*h));
sumac=sumac+wart;
endfor
%wzor na zlozona kwadrature prostokatow:
calka=h.*sumac;
%zwrocenie wartosci calki w konsoli:
printf('Wartosc calki: %d \n',calka)  	