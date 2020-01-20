

Funcion res<-tirada
	
	definir res como texto;
	definir random como entero;
	random<-azar(2);
	
	Si random == 0 Entonces
		res = "cara";
	SiNo
		res = "cruz";
	Fin Si
	
FinFuncion
	

Funcion res<-eleccion
	
	definir e, res como texto;
	
	Escribir "--------------------------------------------------------";
	
	Repetir
		Escribir "Elige cara o cruz: ";
		leer e;
	Hasta Que e = "cara" o e = "cruz";
	
	Escribir "Has elegido: ",e;
	
	res=e;
	
FinFuncion

	
Funcion res<-realiza_apuesta(coins)
	
	definir t, e como texto;
	definir res, apuesta Como Entero;
	
	Escribir "--------------------------------------------------------";
	Escribir "";
	Escribir "Introduce la cantidad que quieres apostar (minimo 20)";
	leer apuesta;
	escribir "";
	
	Mientras apuesta<20 o apuesta>coins Hacer
		
		Escribir "Apuesta no valida, introduce otra cantidad: ";
		leer apuesta;
		
	Fin Mientras
	
	
	
	
	
	t<-tirada();
	e<-eleccion();
	
	Escribir "Tu apuesta: ",apuesta;
	Escribir "Tu eleccion: ",e;
	
	
	
	Si  t=e Entonces
		coins = coins + apuesta*2;
		escribir "Ha salido ",t "!!!";
		escribir "Coins = ",coins;
		res = coins;
		Escribir "--------------------------------------------------------";
	SiNo
		coins = coins - apuesta;
		escribir "Ha salido ",t "...";
		escribir "Coins = ",coins;
		res = coins;
		Escribir "--------------------------------------------------------";
		
	Fin Si
	
FinFuncion
	
	
	
Algoritmo juego_azar
	
	definir coins, apuesta, fuera como entero;
	definir again Como texto;
	
	fuera = 1;
	
	Escribir "Introduce una cantidad para jugar (minimo 100)";
	leer coins;
	
	Mientras coins<100 Hacer
		
		Escribir "";
		Escribir "Introduce una cantidad valida: ";
		leer coins;
		
	Fin Mientras
	
	Repetir
		
		coins <-realiza_apuesta(coins);
		
		si coins >=20 entonces
			
			Repetir
				
				escribir "¿Deseas jugar de nuevo? s/n";
				leer again;
				
			Hasta Que again ="s" o again ="n"
			
		SiNo
			
			again = "n";
			fuera=0;
			
		FinSi
		
		
	Hasta Que again = "n";
	
	
	Si fuera = 0 Entonces
		Escribir "Coins insuficientes, vuelve cuando tengas más";
	SiNo
		Escribir "Vuelve pronto!!!";
	Fin Si
	
	
FinAlgoritmo
