Funcion res<-carta_aleatoria /					
	
	definir res como entero;
	definir random, palo, carta como entero;
	carta<-azar(13);
	palo <-azar(3);
	
	Segun palo hacer
		
		0:
			segun carta hacer
				0:
					escribir "Carta: As de TRÉBOLES";
				1:
					escribir "Carta: 2 de TRÉBOLES";
				2:
					escribir "Carta: 3 de TRÉBOLES";
				3:
					escribir "Carta: 4 de TRÉBOLES";
				4:
					escribir "Carta: 5 de TRÉBOLES";
				5:
					escribir "Carta: 6 de TRÉBOLES";
				6:
					escribir "Carta: 7 de TRÉBOLES";
				7:
					escribir "Carta: 8 de TRÉBOLES";
				8:
					escribir "Carta: 9 de TRÉBOLES";
				9:
					escribir "Carta: 10 de TRÉBOLES";
				10:
					escribir "Carta: JACK de TRÉBOLES";
				11:
					escribir "Carta: REINA de TRÉBOLES";
				12:
					escribir "Carta: REY de TRÉBOLES";
					
			FinSegun
			
		1:
			segun carta hacer
				0:
					escribir "Carta: As de PICAS";
				1:
					escribir "Carta: 2 de PICAS";
				2:
					escribir "Carta: 3 de PICAS";
				3:
					escribir "Carta: 4 de PICAS";
				4:
					escribir "Carta: 5 de PICAS";
				5:
					escribir "Carta: 6 de PICAS";
				6:
					escribir "Carta: 7 de PICAS";
				7:
					escribir "Carta: 8 de PICAS";
				8:
					escribir "Carta: 9 de PICAS";
				9:
					escribir "Carta: 10 de PICAS";
				10:
					escribir "Carta: JACK de PICAS";
				11:
					escribir "Carta: REINA de PICAS";
				12:
					escribir "Carta: REY de PICAS";
					
			FinSegun
		2:
			segun carta hacer
				0:
					escribir "Carta: As de DIAMANTES";
				1:
					escribir "Carta: 2 de DIAMANTES";
				2:
					escribir "Carta: 3 de DIAMANTES";
				3:
					escribir "Carta: 4 de DIAMANTES";
				4:
					escribir "Carta: 5 de DIAMANTES";
				5:
					escribir "Carta: 6 de DIAMANTES";
				6:
					escribir "Carta: 7 de DIAMANTES";
				7:
					escribir "Carta: 8 de DIAMANTES";
				8:
					escribir "Carta: 9 de DIAMANTES";
				9:
					escribir "Carta: 10 de DIAMANTES";
				10:
					escribir "Carta: JACK de DIAMANTES";
				11:
					escribir "Carta: REINA de DIAMANTES";
				12:
					escribir "Carta: REY de DIAMANTES";
					
			FinSegun
		3: 
			segun carta hacer
				0:
					escribir "Carta: As de CORAZONES";
				1:
					escribir "Carta: 2 de CORAZONES";
				2:
					escribir "Carta: 3 de CORAZONES";
				3:
					escribir "Carta: 4 de CORAZONES";
				4:
					escribir "Carta: 5 de CORAZONES";
				5:
					escribir "Carta: 6 de CORAZONES";
				6:
					escribir "Carta: 7 de CORAZONES";
				7:
					escribir "Carta: 8 de CORAZONES";
				8:
					escribir "Carta: 9 de CORAZONES";
				9:
					escribir "Carta: 10 de CORAZONES";
				10:
					escribir "Carta: JACK de CORAZONES";
				11:
					escribir "Carta: REINA de CORAZONES";
				12:
					escribir "Carta: REY de CORAZONES";
					
			FinSegun
		
	FinSegun
	
	res = carta;
	
FinFuncion


Funcion res<-eleccion // DEVUELVE TU ELECCION MAYOR / MENOR
	
	definir e, res como texto;
	
	Escribir "--------------------------------------------------------";
	
	Repetir
		Escribir "Elige: mayor o menor";
		leer e;
	Hasta Que e = "mayor" o e = "menor";
	
	res=e;
	
	Escribir "--------------------------------------------------------";
	Escribir"";
	
FinFuncion


Funcion res<-realiza_apuesta(coins)
	
	definir t, e como texto;
	definir res, apuesta, mi_carta, banca_carta Como Entero;
	
	Escribir "--------------------------------------------------------";
	Escribir "";
	Escribir "Introduce la cantidad que quieres apostar (minimo 20)";
	leer apuesta;
	escribir "";
	
	Mientras apuesta<20 o apuesta>coins Hacer
		
		Escribir "Apuesta no valida, introduce otra cantidad: ";
		leer apuesta;
		
	Fin Mientras
	
	
	escribir "Tu sacas: ";
	mi_carta<-carta_aleatoria();
	
	e<-eleccion();
	
	Escribir "Tu apuesta: ",apuesta;
	Escribir "Tu eleccion: ",e;
	
	Escribir "La banca saca: ";
	banca_carta <- carta_aleatoria();
	
	si e == "mayor" entonces
		
		si banca_carta = mi_carta Entonces
			
			escribir "Cartas iguales, apuesta nula";
			escribir "Coins = ",coins;
			res = coins;
			Escribir "--------------------------------------------------------";
			
		SiNo
			Si  banca_carta>mi_carta Entonces
				coins = coins + apuesta*2;
				
				escribir "Coins = ",coins;
				res = coins;
				Escribir "";
				Escribir "--------------------------------------------------------";
				Escribir "";
			SiNo
				coins = coins - apuesta;
				
				escribir "Coins = ",coins;
				res = coins;
				Escribir "";
				Escribir "--------------------------------------------------------";
				Escribir "";
				
			Fin Si
			
		FinSi
		
		
		
	FinSi
	
	si e == "menor" entonces
		
		si banca_carta = mi_carta Entonces
			
			escribir "Cartas iguales, apuesta nula;
			escribir "Coins = ",coins;
			res = coins;
			Escribir "";
			Escribir "--------------------------------------------------------";
			Escribir "";
			
		SiNo
			
			Si  mi_carta > banca_carta Entonces
				coins = coins + apuesta*2;
				escribir "Coins = ",coins;
				res = coins;
				Escribir "";
				Escribir "--------------------------------------------------------";
				Escribir "";
			SiNo
				coins = coins - apuesta;
				escribir "Coins = ",coins;
				res = coins;
				Escribir "";
				Escribir "--------------------------------------------------------";
				Escribir "";
			Fin Si
			
			
		FinSi
		
		
	FinSi
	
FinFuncion



Algoritmo juego_azar_Cartas
	
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
