Set
    t 'Process temperature conditions'  / e 'Evaporating temperature', c 'condensing temperature', m 'average process temperature'/ 
    p 'Process pressure conditions'     / atm 'atmospheric', c 'condensing'/
    i 'Types of properties' /  vp_e 'Vapour pressure @ evaporating temperature'
                               vp_c 'Vapour pressure @ condensing temperature'
                               h_vap 'Heat of vaporisation @ evaporating temperature'
                               Cp_l 'Liquid heat capacity @ 'average process temperature' /;
                       
Table
            a(i,c) 'atoms per compound'
       H  H2  H2O  N  N2  NH  NO  O  O2  OH
   H   1   2    2          1              1
   N               1   2   1   1
   O            1              1  1   2   1;

Parameter
    T(t)    Temperatures in K           /e 273, c 316, m 294/
    P(p)    Pressures in bar            /atm 1.1, c 14/;

Variable
    pi(i)   Properties
    z       Obj function;

Positive Variable x(r);
Binary Variable y(r);

Equation
    OBJ total cost of reactor system
    pressure Operating pressure constraints
    compare Constraints to perform better than R134a
    target target production of b
    log(r);
    
OBJ..       z =e= sum(r, y(r)*fc(r) + vc(r)*x(r));

pressure..  pi(i)

compare..     

target..    sum(r, x(r)*yl(r)) =e= b;

log(r)..    x(r) - 15*y(r) =l= 0;

Model reactor / all /;

solve reactor minimizing z using mip;

display x.l, y.l;