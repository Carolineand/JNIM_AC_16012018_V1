 PROGRAM Jeu_des_lallumettes_bis;
 //BUT: Ecrire un algorithme qui permet à deux joueurs de jouer au jeu des allumettes.
 //ENTREE: Les 21 allumettes.
 //SORTIE: Le dernier à retire la dernière allumettes a perdu. 

 USES crt,sysutils;

 CONST
	 MinAll=1;
	 MaxAll=3;

 VAR
     Tas,NAllumettes:INTEGER;
     Perdu:BOOLEAN;
 
 BEGIN
     clrscr;

	 Tas:=21
     Perdu:=False
     Writeln('Bienvenue dans le jeu de l allumettes!!');
 REPEAT
     Writeln('Combien d allumettes avez-vous enlevés ?');
     Readln NAllumettes

     IF ((NAllumettes=>1) AND (NAllumettes<=3)) THEN
    	Tas=Tas-NAllumettes
    
         IF (Tas > 1) AND (Tas <=21) THEN
             Writeln ('Il reste',Tas,'d allumettes');

     ELSE

         BEGIN
         Perdu:=True
         Writeln('Vous avez perdu');
         END

     ELSE
         Writeln('Vous vous êtes trompés, recommencez!!');

UNTIL (Perdu = True);

     Writeln('Vous avez perdu !!');

END.

    

