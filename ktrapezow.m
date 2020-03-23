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
for i=1:(N-1)
a2=a+i.*h;
wart=(f(a2));
sumac=sumac+wart;
endfor
%wzor na zlozona kwadrature prostokatow:
calka=h.*((f(a)+f(b))./2+sumac);
%zwrocenie wartosci calki w konsoli:
printf('Wartosc calki: %d \n',calka)  	