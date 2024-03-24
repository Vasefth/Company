%% Company Data 
employee(name(john),position(programmer),wage(40000)).
employee(name(alice),position(programmer),wage(35000)).
employee(name(peter),position(uxdesigner),wage(25000)).
employee(name(nick),position(accountant),wage(60000)).
employee(name(helen),position(project_leader),wage(140000)).
employee(name(bob),position(programmer),wage(15000)).
employee(name(mathiew),position(project_namager),wage(50000)).
employee(name(donald),position(public_relations),wage(100000)).
employee(name(igor),position(server_admin),wage(20000)).


data(john,status(married,children(2))).
data(alice,status(single,children(0))).
data(peter,status(married,children(1))).
data(nick,status(married,children(3))).
data(helen,status(single,children(2))).
data(bob,status(single,children(0))).
data(mathiew,status(married,children(1))).
data(donald,status(single,children(1))).
data(igor,status(married,children(1))).


wage(Empl,Wage):-
	employee(name(Empl),_,wage(Wage)).

single_with_children(Empl,N):-
	employee(name(Empl),_,_),
	data(Empl,status(single,children(N))),
	N > 0.

benefit(Name,Wage,Benefit):-
	wage(Name,Wage),
	data(Name,status(Status,children(ChildrenCount))),
	calculate_benefit(Status, ChildrenCount, Benefit).

calculate_benefit(single,0,0).
calculate_benefit(single,ChildrenCount,1500):- ChildrenCount>0.
calculate_benefit(married,0,500).
calculate_benefit(married,ChildrenCount,1100):- ChildrenCount>0.
	




