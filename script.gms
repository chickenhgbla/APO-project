Set
    t 'Process temperature conditions'  / e 'Evaporating temperature', c 'Condensing temperature', m 'Average process temperature'/ 
    p 'Process pressure conditions'     / atm 'Atmospheric', c 'Condensing'/
    i 'Types of properties'             / vp_e 'Vapour pressure @ evaporating temperature',
                                          vp_c 'Vapour pressure @ condensing temperature',
                                          h_vap 'Heat of vaporisation @ evaporating temperature',
                                          cp_l 'Liquid heat capacity @ 'average process temperature'
                                          h_vap298 'Vapour pressure @ 298K'
                                          Tcrit 'Critical temperature'
                                          Pcrit 'Critical pressure'
                                          vp_er 'Vapour pressure @ reduced evaporating temperature'
                                          vp_cr 'Vapour pressure @ reduced condensing temperature'
                                          Tb 'Boiling temperature'/
    g 'group type'                      /  CH3, CH2 /
    par 'paramter'                      /  v 'Valency',
                                           t 'Type; 1 = General, 2 = Unsaturated, 3 = Aromatic',
                                           a 'cp_l parameter 1'
                                           b 'cp_l parameter 2'
                                           d 'cp_l parameter 3'
                                           hv1k 'CAG parameter for h_vap'
                                           tc1k 'CAG parameter for critical temperature'                                        
                                           tb1k 'CAG parameter for normal boiling temperature'    
                                           pc1k 'CAG parameter for critical pressure'    /
    mt 'Molecule type'                  /  a 'acyclic', m 'monocyclic', b 'bicyclic'/
              
           ;

Alias (j,g)
         
Table
            info(g,par) 'Information about each group type'
         v    t    a    b   d   hv1k    tc1k    pc1k 
   CH3   1    2       
   CH2   1    1        
   c           
                                               













 ;


Parameter
    T(t)    Temperatures in K           /e 273, c 316, m 294, s 298/
    P(p)    Pressures in bar            /atm 1.1, c 14/
    hfc(i)  Properties of R134a         /vp_e 0, vp_c 0, h_vap 10, cp_l 10/
    R       Gas constant                /8.3145/; 
    
Variable
    pi(i)   Property value
    n(g)    Number of selected units of group type g
    m       Molecule type 1 = acyclic, 0 = monocyclic, -1 = bicyclic
    z       Obj function
    k       Vap pressure eq of k
    h       Vap pressure eq of h
    G       Vap pressure eq of G;
Positive Variable x(r);
Binary Variable y(mt);

Equation
    OBJ Objective function
    pressure1 vapour pressure at evaporating temperature is greater than atmospheric
    pressure2 vapour pressure at condensing temperature is less than or equal to 14 bar
    compare1 h_vap to be greater than or equal to that of R134a
    compare2 cp_l to be less than or equal to that of R134a
    MT  Only can be 1 molecule type 
    M   Relate m to binary molecule types
    ARO Relate indicator variable m to number of aromatic groups
    octet   Octet rule - so that there is no free bonds
    unphysical(j)  To prevent unphysical combinations
    newcp_l liquid heat capacity of new refrigerant at Tm
    newh_vap298 heat of vaporisation of new refrigerant at 298K
    newh_vap heat of vaporisation of new refrigerant at Te
    Tcrit critical temperature
    Pcrit critical pressure
    Tb boiling temperature
    k vapour pressure eq1
    h vapour pressure eq2
    G vapour pressure eq3
    ln_newvp_re vapour presure of new refrigerant at Te over Tcrit
    ln_newvp_rc vapour pressure of new refrigerant at Tc over Tcrit
    newvp_e vapour pressure of new refrigerant at Te
    newvp_c vapour pressure of new refrigerant at Tc
    
OBJ..       z =E= sum(r, y(r)*fc(r) + vc(r)*x(r));

pressure1..   P('atm') - pi('vp_e') =L= 0;

pressure2..   pi('vp_c') - P('c') =L= 0;

compare1..    hfc('h_vap') - pi('h_vap') =L= 0;

compare2..    pi('cp_l') - hfc('cp_l') =L= 0;   

MT..          sum(mt,y) =E= 1;

M..           m - (y('a') - y('b')) =E= 0;

ARO..         sum(g,n(g) $ (info(g,'t') = 3)) - 6*y('m') - 10*y('b') =E= 0;

octet..       sum(g, (2-info(g,'v'))*n(g) - 2*m =E= 0;

unphysical(j)..  n(j)*(info(j,'v') - 1) + 2 - sum(g,n(g)) =L= 0;

newcp_l..     pi('cp_l') =e= R*(sum(g,n(g)*(info(g,'a'))) + sum(g,n(g)*(info(g,'b')))*0.01*T(m) + sum(g,n(g)*info(g,'d'))*(0.01*T(m))**2);

newh_vap298.. pi('h_vap298') =e= 6.829 + sum(g,n(g)*(info(g,'hv1k')));

newh_vap..    pi('h_vap') =e= pi('h_vap298')*((1-(T(e)/pi('Tcrit')))/(1-(T(s)/pi('Tcrit'))))**0.375;

Tcrit..       pi('Tcrit') =e= 181.128*loge(sum(g,n(g)*info(g,'tc1k')));

Pcrit..       pi('Pcrit') =e= 1.3705 + (sum(g,n(g)*info(g,'pc1k')) + 0.10022)**(-2);

Tb..          pi('Tb') =e= 204.359*loge((sum(g,n(g)*info(g,'tb1k')));

k..           k =e= ((h/G) - (1 + (pi('Tb')/pi(T'crit'))))/((3 + (pi('Tb')/pi(T'crit')))* (1 - (pi('Tb')/pi(T'crit')))**2);

h..           h =e= (pi('Tb')/pi(T'crit'))*((loge(pi('Pcrit'))/1.01325)/(1 - (pi('Tb')/pi(T'crit')));

G..           G =e= 0.4835 + 0.4605*h;

ln_newvp_er..  loge(pi('vp_er')) =e= (-G/(T(e)/pi('Tcrit')))*(1 - (T(e)/pi('Tcrit'))**2 + k*(3 + (T(e)/pi('Tcrit')))*(1 - (T(e)/pi('Tcrit')))**3);

ln_newvp_cr..  loge(pi('vp_er')) =e= (-G/(T(c)/pi('Tcrit')))*(1 - (T(c)/pi('Tcrit'))**2 + k*(3 + (T(c)/pi('Tcrit')))*(1 - (T(c)/pi('Tcrit')))**3);

newvp_e..      pi('vp_e') =e= exp(loge(pi('vp_er')));

newvp_c..      pi('vp_c') =e= exp(loge(pi('vp_cr')));

Model CAMD / all /;

solve CAMD minimizing z using ;

display x.l, y.l;