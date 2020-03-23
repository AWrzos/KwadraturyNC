%program g³ówny
format long
%Wprowadzanie danych z konsoli:
printf('Program liczacy calki w oparciu o metody numeryczne. \n');
printf('Wybierz funkcje podcalkowa poprzez wpisanie odpowiedniej cyfry: \n');
printf('1 - f(x)=7sin(x^2) \n');
printf('2 - f(x)=ln((1/16)x+1) \n');
printf('3 - f(x)=x^5+0.5 \n');
printf('4 - f(x)=(x^2)/sqrt(1-x^2) \n');
printf('5 - f(x)=a*x^5+b*x^4+c*x^3+d*x^2+e*x+f \n');
n=input('Numer funkcji podcalkowej: ');  
%sprawdzenie jaka podana zosta³a cyfra i przypisanie odpowiedniej
%funkcji do programu
if(n==1) 
g=@(x) 7.*sin(x.^2);   
elseif(n==2)
g=@(x) log((1./16).*x+1);
elseif(n==3)
g=@(x) x.^5+0.5;
elseif(n==4)
g=@(x)(x.^2)./sqrt(1-x.^2)
elseif(n==5)
%wprowadzenie danych z konsoli w przypadku wybrania wielomianu
printf('Podaj wspolczynniki wielomianu \n');
printf('Wielomian a1*x.^5+a2*x.^4+a3*x.^3+a4*x.^2+a5*x+a6 \n'); 
a1=input('a= ');
a2=input('b= ');
a3=input('c= ');
a4=input('d= ');
a5=input('e= ');
a6=input('f= ');
g=@(x) a1*x.^5+a2*x.^4+a3*x.^3+a4*x.^2+a5*x+a6;
%komunikat w przypadku podania zlej cyfry
else
printf('Podano zla cyfre \n')
endif
%wybor metody przy uzyciu konsoli
printf('Wybierz metode poprzez wpisanie odpowiedniej cyfry: \n');
printf('1 - Zlozona Metoda Prostokatow \n');  
printf('2 - Zlozona Metoda Trapezow \n');
printf('3 - Zlozona Metoda Simpsona \n');
m=input('Numer metody: '); 
%sprawdzenie wpisanej cyfry i uruchomienie odpowiedniej metody
if(m==1) 
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
wart=(g(a+i2.*h));
sumac=sumac+wart;
endfor
%wzor na zlozona kwadrature prostokatow:
calka=h.*sumac;
%zwrocenie wartosci calki w konsoli:
printf('Wartosc calki: %d \n',calka)  	
elseif(m==2)
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
wart=(g(a2));
sumac=sumac+wart;
endfor
%wzor na zlozona kwadrature prostokatow:
calka=h.*((g(a)+g(b))./2+sumac);
%zwrocenie wartosci calki w konsoli:
printf('Wartosc calki: %d \n',calka)  	
elseif(m==3)
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
wart=(g(a2));
sumac1=sumac1+wart;
endfor
%obliczanie drugiej sumy uzytej we wzorze:
sumac2=0;
for i=0:(N-1)
a2=a+i.*h+h./2;
wart=(g(a2));
sumac2=sumac2+wart;
endfor
%wzor na zlozona kwadrature prostokatow:
calka=h./3.*((g(a)+g(b))./2+sumac1+2.*sumac2);
%zwrocenie wartosci calki w konsoli:
printf('Wartosc calki: %d \n',calka)  	
%komunikat w przypadku podania zlej cyfry
else 
printf('Podano zla cyfre \n')
endif