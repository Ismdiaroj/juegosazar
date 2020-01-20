funcion res<-nombre() // elige un nombre al azar
	
	definir res, ca1,ca2,ca3,ca4,ca5,ca6,ca7,ca8,ca9 Como texto;
	
	definir ca Como entero;
	
	res=""; ca1="Zeus";ca2="Ades";ca3="Neptuno";ca4="Hefesto";ca5="Heracles";ca6="Apolo";ca7="Cronos";ca8="Atlas";ca9="Luciano";
	
	ca<-azar(9);
	
	Segun ca Hacer
		0:
			res = ca1;
		1:
			res = ca2;
		2:
			res = ca3;
		3:
			res = ca4;
		4:
			res = ca5;
		5:
			res = ca6;
		6:
			res = ca7;
		7:
			res = ca8;
		8:
			res = ca9;
	Fin Segun
	
FinFuncion


Funcion ganador<-carrera(corredor1,corredor2,corredor3)
	
	definir caballo1,caballo2,caballo3,avanza Como Entero;
	
	definir ganador como texto;
	
	caballo1 = 0;
	caballo2 = 0;
	caballo3 = 0;
	
	definir i,a1,a2,a3,af1,af2,af3 Como Entero;
	
	Repetir
		
		avanza <- azar(3);
		
		Segun avanza Hacer
			0:
				caballo1 = caballo1+1;
			1:
				caballo2 = caballo2+1;
			2:
				caballo3 = caballo3+1;
		Fin Segun
		
		Escribir"---------------------------------------------------------";
		
		Escribir sin saltar Corredor1;
		
		Para a1<-0 Hasta caballo1 Con Paso 1 Hacer
			Escribir sin saltar "__";
		Fin Para
		
		Si caballo1 == 18 Entonces
			Escribir "o=^o>";
		SiNo
			Escribir "o=^o>";
		Fin Si
		
		Escribir sin saltar Corredor2;
		
		Para a2<-0 Hasta caballo2 Con Paso 1 Hacer
			Escribir sin saltar "__";
		Fin Para
		
		Si caballo2 == 18 Entonces
			Escribir "o=^o>";
		SiNo
			Escribir "o=^o>";
		Fin Si
		
		Escribir sin saltar Corredor3;
		
		Para a3<-0 Hasta caballo3 Con Paso 1 Hacer
			Escribir sin saltar "__";
		Fin Para
		
		Si caballo3 == 18 Entonces
			Escribir "o=^o>";
		SiNo
			Escribir "o=^o>";
		Fin Si
		
		Escribir "";
		Escribir "";
		Escribir"---------------------------------------------------------";
		
		esperar 90 milisegundo;
		
		Si caballo1==18 o caballo2==18 o caballo3==18 
		SiNo
			
			limpiar pantalla;
			
		Fin Si
		
	hasta que caballo1=18 o caballo2=18 o caballo3=18
	
	Si caballo1 ==18 Entonces
		ganador=corredor1;
	Fin Si
	
	Si caballo2 ==18 Entonces
		ganador=corredor2;
	FinSi
	
	si caballo3==18 entonces
		ganador=corredor3;
	Fin Si
	
	Escribir "GANADOR: ",ganador;
	Escribir"";
	Escribir"---------------------------------------------------------";
	
FinFuncion


Funcion coins<-corredor(eleccion,apuesta,ganador,apuesta,cuota)  //compara la eleccion con el ganador y devuelve tu saldo tras la apuesta
	
	definir coins como entero;
	
	
	Si eleccion == ganador Entonces
		
		coins =apuesta*cuota; 
		
	SiNo
		coins =(-apuesta);
	Fin Si
	
FinFuncion




Algoritmo HIPODROMO
	
	definir res, saldo, apuesta, carreras,coins,race Como Entero;
	
	definir cc1,cc2,cc3,cc4,cc5,cc6,cc7,cc8,cc9,corredor1,corredor2,corredor3, eleccion, ganador Como texto;
	
	definir ca1,ca2,ca3,ca4,ca5,ca6,ca7,ca8,ca9 Como texto;
	
	cc1=" ";
	cc2=" ";
	cc3=" ";
	cc4=" ";
	cc5=" ";
	cc6=" ";
	cc7=" ";
	cc8=" ";
	cc9=" ";
	
	definir again, reset como caracter;
	
	definir c1,c2,c3,c4,c5,c6,c7,c8,c9,cuota Como Real;
	
	again = "s";
	reset = "s";
	
	ca1="Zeus";ca2="Ades";ca3="Neptuno";ca4="Hefesto";ca5="Heracles";ca6="Apolo";ca7="Cronos";ca8="Atlas";ca9="Luciano";
	
	
	//distribuir caballos 
	
	Repetir
		cc1<-nombre();
	Hasta Que cc1<> cc2 & cc1<> cc3 y cc1<> cc4 y cc1<> cc5 y cc1<>cc6 y cc1<> cc7 y cc1<> cc8 y cc1<> cc9;
	
	Repetir
		cc2<-nombre();
	Hasta Que cc2<> cc1 y cc2<> cc3 y cc2<> cc4 y cc2<>cc5 y cc2<> cc6 y cc2<> cc7 y cc2<>cc8 y cc2<> cc9;
	
	Repetir
		cc3<-nombre();
	Hasta Que cc3<>cc2 y cc3<> cc1 y cc3<>cc4 y cc3<> cc5 y cc3<> cc6 y cc3<> cc7 y cc3<> cc8 y cc3<> cc9;
	
	Repetir
		cc4<-nombre();
	Hasta Que cc4<> cc2 y cc4<> cc3 y cc4<> cc1 y cc4<> cc5 y cc4<> cc6 y cc4<> cc7 y cc4<> cc8 y cc4<> cc9;
	
	Repetir
		cc5<-nombre();
	Hasta Que cc5<> cc2 y cc5<>cc3 y cc5<> cc4 y cc5<> cc1 y cc5<> cc6 y cc5<> cc7 y cc5<> cc8 y cc5<> cc9;
	
	Repetir
		cc6<-nombre();
	Hasta Que cc6<> cc2 y cc6<> cc3 y cc6<>cc4 y cc6<>cc5 y cc6<>cc1 y cc6<> cc7 y cc6<>cc8 y cc6<> cc9;
	
	Repetir
		cc7<-nombre();
	Hasta Que cc7<> cc2 y cc7<> cc3 y cc7<> cc4 y cc7<> cc5 y cc7<> cc6 y cc7<>cc1 y cc7<>cc8 y cc7<>cc9;
	
	Repetir
		cc8<-nombre();
	Hasta Que cc8<> cc2 y cc8<>cc3 y cc8<>cc4 y cc8<> cc5 y cc8<> cc6 y cc8<>cc7 y cc8<>cc1 y cc8<> cc9;
	
	Repetir
		cc9<-nombre();
	Hasta Que cc9<> cc2 y cc9<> cc3 y cc9<>cc4 y cc9<> cc5 y cc9<> cc6 y cc9<> cc7 y cc9<>cc8 y cc9<> cc1;
	
	
	Escribir"---------------------------------------------------------";
	escribir"               BIENVENIDO A LAS CARRERAS";
	escribir"";
	Escribir"---------------------------------------------------------";
	Escribir "Introduce la cantidad de dinero de la que dispones: ";
	leer saldo;
	
	
	mientras reset = "s" hacer
		
		
		
		
		
		si again =="s" Entonces
			
			
			//calcula cuotas
			c1<-((azar(10)+1)/10)+1;
			c2<-((azar(10)+1)/10)+1;
			c3<-((azar(10)+1)/10)+1;
			
			c4<-((azar(10)+1)/10)+1;
			c5<-((azar(10)+1)/10)+1;
			c6<-((azar(10)+1)/10)+1;
			
			c7<-((azar(10)+1)/10)+1;
			c8<-((azar(10)+1)/10)+1;
			c9<-((azar(10)+1)/10)+1;
			
			Escribir"---------------------------------------------------------";
			Escribir"1ª CARRERA Corredores y Cuotas: ";
			Escribir"Cuota ",cc1,": ",c1;
			Escribir"Cuota ",cc2,": ",c2;
			Escribir"Cuota ",cc3,": ",c3;
			Escribir "";
			
			Escribir"---------------------------------------------------------";
			Escribir"2ª CARRERA Corredores y Cuotas: ";
			Escribir"Cuota ",cc4,": ",c4;
			Escribir"Cuota ",cc5,": ",c5;
			Escribir"Cuota ",cc6,": ",c6;
			Escribir "";
			
			Escribir"---------------------------------------------------------";
			Escribir"3ª CARRERA Corredores y Cuotas: ";
			Escribir"Cuota ",cc7,": ",c7;
			Escribir"Cuota ",cc8,": ",c8;
			Escribir"Cuota ",cc9,": ",c9;
			Escribir "";
			Escribir"---------------------------------------------------------";
			
			Escribir "Elige la carrera en la que quieres apostar: ";
			leer race;
			
			
			Segun race Hacer
				1:
					corredor1 = cc1;
					corredor2 = cc2;
					corredor3 = cc3;
					
				2:
					corredor1 = cc4;
					corredor2 = cc5;
					corredor3 = cc6;
				3:
					corredor1 = cc7;
					corredor2 = cc8;
					corredor3 = cc9;
					
			Fin Segun
			
			
			Escribir "Selecciona un corredor: ";
			leer eleccion;
			
			Si eleccion==corredor1 o eleccion==corredor2 o eleccion==corredor3 Entonces
				
				Escribir"";
				
			SiNo
				Repetir
					Escribir "Selecciona un corredor valido (comprueba mayusculas): ";
					leer eleccion;
				Hasta Que eleccion==corredor1 o eleccion==corredor2 o eleccion==corredor3
			Fin Si
			
			Escribir "Introduce la cantidad que quieres apostar: ";
			leer apuesta;
			
			Mientras apuesta>saldo Hacer
				Escribir "Introduce una apuesta valida: ";
				leer apuesta;
			Fin Mientras
			
			
			Segun eleccion Hacer 
				ca1:
					cuota=c1;
				ca2:
					cuota=c2;
				ca3:
					cuota=c3;
				ca4:
					cuota=c4;
				ca5:
					cuota=c5;
				ca6:
					cuota=c6;
				ca7:
					cuota=c7;
				ca8:
					cuota=c8;
				ca9:
					cuota=c9;
			Fin Segun
			
			ganador<-carrera(corredor1,corredor2,corredor3);
			
			coins<-corredor(eleccion,apuesta,ganador,apuesta,cuota);
			
			saldo = saldo + coins;
			
			Escribir "Saldo total despues de la carrera: ",saldo;
			escribir"";
			
			si saldo>0 entonces // y carreras <3
				Escribir "¿Desea apostar en la siguiente carrera? (s/n)";
				leer again;
				
			SiNo
				si saldo =0
					
					Escribir "Dinero insuficiente vuelve cuando tengas mas";
					again = "n";
				sino
					Escribir "Carreras finalizadas, quiere apostar en las proximas 3 carreras?";
					leer reset;
					
				FinSi
				
				
			Fin si
			
		SiNo
			reset="n";
			
		Fin si
		
	fin mientras
	
	escribir "Hasta pronto";
	
	
FinAlgoritmo
