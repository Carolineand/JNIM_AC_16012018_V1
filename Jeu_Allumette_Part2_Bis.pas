 PROGRAM Jeu_des_lallumettes;
 //BUT: Ecrire un algorithme qui permet à deux joueurs de jouer au jeu des allumettes.
 //ENTREE: Les 21 allumettes.
 //SORTIE: Le dernier à retire la dernière allumettes a perdu. 

 USES crt,sysutils;

 CONST

	 MinAll=1;
	 MaxAll=3;

 VAR

     Tas,NAllumettes,Somme:INTEGER; //21 Allumettes au total
     Perdu:BOOLEAN;
 
 BEGIN

     clrscr;

     Perdu:=False;
	 Tas:=21;
     Writeln ('Bienvenue dans le jeu de l allumettes!!');

 REPEAT

     Writeln('Combien d allumettes avez-vous enleves ?');
     Readln (NAllumettes);

     IF ((NAllumettes >= 1 ) AND (NAllumettes <= 3 )) THEN
    	 Tas=Tas-NAllumettes
    
         IF (Tas > 1) AND (Tas <=21) THEN
             Writeln ('Il reste',Tas,'dallumettes');

     ELSE

         Perdu:= True
         Writeln('Vous avez perdu');

     ELSE
    	 Writeln('Vous vous êtes trompes, recommencez!!');

     Somme:= Somme-Random(MaxAll)
     Writeln('La somme des allumettes est de',Somme);

     IF ((NAllumettes=>1) AND (NAllumettes<=3)) THEN
         Tas=Tas-NAllumettes
    
         IF (Tas > 1) AND (Tas <=21);
             Writeln ('Il reste',Tas,'d allumettes');

     ELSE

         BEGIN
         Perdu:= True
         Writeln('Vous avez perdu');
         END

     ELSE

         Writeln('Vous vous êtes trompes, recommencez!!');
        
 UNTIL (Perdu = True);

    Writeln('Vous avez perdu !!');

 END.