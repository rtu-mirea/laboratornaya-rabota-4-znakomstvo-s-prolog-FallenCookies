domains
  name=symbol
predicates
  nondeterm parent(name,name)
  nondeterm brother(name,name)
  nondeterm ancestor(name,name)
  nondeterm sister(name,name)
  nondeterm female(name)
  nondeterm male(name)
  nondeterm likes(name, name)
  nondeterm can_buy(name,name)
clauses
  parent(ilia, marina).
  parent(ilia, ira).
  parent(elena, ivan).
  parent(elena, alex).
  parent(masha, elena).
  male(ivan).
  male(alex).
  female(ira).
  female(marina).
  likes(ilia, food).
  can_buy(alex, car).
  /*RULE BROTHER*/
  brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),male(Y).
  /*RULE ANCESTOR (PREDOK)*/
  ancestor(X,Z):-parent(X,Y),ancestor(Y,Z).
  /*RULE SISTER*/
  sister(X,Y):-parent(Z,X),parent(Z,Y),female(X),female(Y).
goal
  sister(marina,ira).