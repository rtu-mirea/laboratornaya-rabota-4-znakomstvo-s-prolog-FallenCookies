  
domains
  animal_name, color, name = symbol
predicates
  nondeterm cat(animal_name).
  nondeterm dog(animal_name).
  nondeterm color(animal_name, color).
  nondeterm have(name, animal_name).
  nondeterm rodoslovnaya(animal_name).
  nondeterm animal(animal_name).
clauses
  cat(butsi). 
  cat(korni). 
  cat(mac).
  dog(rover). 
  dog(fles). 
  dog(spot).
  color(butsi, brown).
  color(korni, black).
  color(mac, yellow).
  color(rover, yellow).
  color(spot, white).
  color(fles, black_and_white).
  /*----------------------------*/
  animal(X):-cat(X); dog(X).
  /*----------------------------*/
  rodoslovnaya(X):-animal(X),have(tom, X).
  rodoslovnaya(X):-animal(X), have(keit, X).
  /*----------------------------*/
  have(tom, X):-color(X, black); color(X, brown).
  /*----------------------------*/
  have(keit, X):-dog(X),
  		 not(color(X, white)),
  		 not(have(tom, X)).
  /*----------------------------*/
  have(alan, mac):-not(have(keit, butsi)),
  		   not(rodoslovnaya(spot)).
goal
  %animal(X).
  %have(tom, X).
  %have(keit, X).
  /*animals, which have no owner*/
  animal(X), not( have(_,X)),write(X).