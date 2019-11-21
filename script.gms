Set
    t 'Process temperature conditions'  / e 'Evaporating temperature', c 'Condensing temperature', m 'Average process temperature'/ 
    p 'Process pressure conditions'     / atm 'Atmospheric', c 'Condensing'/
    i 'Types of properties'             / vp_e 'Vapour pressure @ evaporating temperature',
                                          vp_c 'Vapour pressure @ condensing temperature',
                                          h_vap 'Heat of vaporisation @ evaporating temperature',
                                          cp_l 'Liquid heat capacity @ average process temperature',
                                          cp_0 'Ideal gas heat capacity @ average process temperature',
                                          h_vap298 'Vapour pressure @ 298K'/
    g 'group type'                      /  CH3, CH2 /
    par 'paramter'                      /  v 'Valency',
                                           t 'Type; 1 = General, 2 = Unsaturated, 3 = Aromatic',
                                           tb1k 'CAG parameter for normal boiling temperature',
                                           tc1k 'CAG parameter for critical temperature',
                                           pc1k 'CAG parameter for critical pressure',
                                           w1k 'CAG parameter for acentric factor',
                                           hv1k 'CAG parameter for h_vap298',
                                           a 'cp_0 CAG parameter 1',
                                           b 'cp_0 CAG parameter 2',
                                           d 'cp_0 CAG parameter 3'         /
    mt 'Molecule type'                  /  a 'acyclic', m 'monocyclic', b 'bicyclic'/
              
           ;

Alias (j,g)
         
Table
            info(g,par) 'Information about each group type'
            
Property   valency type tb1k    tc1k    pc1k    w1k    hv1k     cpa1k       cpb1k       cpc1k      
units                   k       k       bar^0.5        kjmol^-1 jmol^-1k^-1 jmol^-1k^-1 jmol^-1k^-1
CH3        1       1    0.8894  1.6781  0.0199  0.296  4.116    35.1152     39.5923     -9.9232    
CH2        2       1    0.9225  3.492   0.0106  0.147  4.65     22.6346     45.0933     -15.7033   
CH         3       1    0.6033  4.033   0.0013  -0.071 2.771    8.9272      59.9786     -29.5143   
C          4       1    0.2878  4.8823  -0.0104 -0.351 1.284    0.3456      74.0368     -45.7878   
CH2--CH    1       2    1.7827  5.0146  0.025   0.408  6.714    49.2506     59.384      -21.7908   
CH--CH     2       2    1.8433  7.3691  0.0179  0.252  7.37     35.2248     62.1924     -24.8156   
CH2--C     2       2    1.7117  6.5081  0.0223  0.223  6.797    37.6299     62.1285     -26.0637   
CH--C      3       2    1.7957  8.9582  0.0126  0.235  8.178    21.3528     66.3947     -29.3703   
C--C       4       2    1.8881  11.3764 0.002   -0.21  9.342    10.2797     65.5372     -30.6057   
CH2--C--CH 1       2    3.1243  9.9318  0.0313  0.152  12.318   66.0574     69.3936     -25.1081   
ACH        2       3    0.9297  3.7337  0.0075  0.027  4.098    16.3794     32.7433     -13.1692   
AC         3       3    1.6254  14.6409 0.0021  0.334  12.552   10.4283     25.3634     -12.7283   
ACCH3      2       3    1.9669  8.213   0.0194  0.146  9.776    42.8569     65.6464     -21.067    
ACCH2      3       3    1.9478  10.3239 0.0122  -0.088 10.185   32.8206     70.4153     -28.9361   
ACCH       4       3    1.7444  10.4664 0.0028  1.524  8.834    19.9504     81.8764     -40.2864   
OH         1       1    3.2152  9.7292  0.0051  0.737  24.529   27.2107     2.7609      1.306      
ACOH       2       3    4.4014  25.9145 -0.0074 1.015  40.246   39.7712     35.5676     -15.5875   
CH3CO      1       1    3.5668  13.2896 0.0251  0.633  18.999   59.3032     67.8149     -20.9948   
CH2CO      2       1    3.8967  14.6273 0.0178  0.963  20.041   0           0           0          
CHO        1       1    2.8526  10.1986 0.0141  1.133  12.909   40.7501     19.699      -5.436     
CH3COO     1       1    3.636   12.5965 0.029   0.756  22.709   66.8423     102.4553    -43.3306   
CH2COO     2       1    3.3953  13.8116 0.0218  0.765  17.759   0           0           0          
HCOO       1       1    3.1459  11.6057 0.0138  0.526  0        51.5048     44.4133     -19.6155   
CH3O       1       1    2.2536  6.4737  0.0204  0.442  10.919   50.5604     38.9681     -4.7799    
CH2O       2       1    1.6249  6.0723  0.0151  0.218  7.478    39.5784     41.8177     -11.0837   
CH-O       3       1    1.1557  5.0663  0.0099  0.509  5.708    25.675      24.7281     4.2419     
CH2NH2     1       1    3.1656  12.1726 0.0126  0      14.599   57.6861     64.0768     -21.048    
CHNH2      2       1    2.5983  10.2075 0.0107  0.953  11.876   44.1122     77.2155     -33.5086   
CH3NH      2       1    3.1376  9.8544  0.0126  0.55   14.452   53.7012     71.7948     -22.9685   
CH2NH      3       1    2.6127  10.4677 0.0104  0.386  14.481   44.6388     68.5041     -26.7106   
CHNH       4       1    1.578   7.2121  -0.0005 0.384  0        0           0           0          
CH3N       2       1    2.1647  7.6924  0.0159  0.075  6.947    41.4064     85.0996     -35.6318   
CH2N       3       1    1.2171  5.5172  0.0049  0.793  6.918    30.1561     81.6814     -36.1441   
ACNH2      2       3    5.4736  28.757  0.0011  0      28.453   47.1311     51.3326     -25.0276   
C5H4N      1       1    6.28    29.1528 0.0296  0      31.523   84.7602     177.2513    -72.3213   
C5H3N      2       1    5.9234  27.9464 0.0257  0      31.005   0           0           0          
CH2CN      1       1    5.0525  20.3781 0.0361  1.67   23.34    58.2837     49.6388     -15.6291   
COOH       1       1    5.8337  23.7593 0.0115  0.57   43.046   46.5577     48.2322     -20.4868   
CH2N02     1       1    5.7619  24.7369 0.021   0      30.644   63.7851     83.4744     -35.1171   
CHN02      2       1    5.0767  23.205  0.0122  0      26.277   51.1442     94.2934     -45.2029   
ACNO2      2       3    6.0837  34.587  0.015   0      0        0           0           0          
CH2SH      1       1    3.2914  13.8058 0.0136  0      14.931   58.2445     46.9958     -10.5106   
I          1       1    3.665   17.3947 0.0028  0.233  14.364   29.1815     -9.7846     3.4554     
Br         1       1    2.6495  10.5371 -0.0018 0.278  11.423   28.026      -7.1651     2.4332     
CH---C     1       2    2.3678  7.5433  0.0148  0.618  7.751    45.9768     20.6417     -8.3297    
C---C      2       2    2.5645  11.4501 0.0041  0      11.549   26.7371     21.7676     -6.4481    
HCON(CH2)2 2       1    7.2644  0       0       0.5    0        0           0           0          
COO        2       1    2.6446  12.1084 0.0113  0      0        0           0           0          
CONH2      1       1    10.3428 65.1053 0.0043  0      0        0           0           0          
CONHCH3    1       1    0       0       0       0      0        0           0           0          
CONHCH2    1       1    0       0       0       0      51.787   0           0           0          
CON(CH3)2  1       1    7.6904  36.1403 0.0401  0      0        0           0           0          
CONCH2CH2  3       1    0       0       0       0      0        0           0           0          
CON(CH2)2  3       1    6.7822  0       0       0      0        0           0           0          
C2H5O2     1       1    5.5566  17.9668 0.0254  0.428  0        0           0           0          
C2H4O2     2       1    5.4248  0       0       0      0        0           0           0          
CH3S       1       1    3.6796  14.3969 0.016   0      16.921   57.767      44.1238     -9.5565    
CH2S       2       1    3.6763  17.7916 0.0111  0.438  17.117   45.0314     55.1432     -18.7776   
CHS        3       1    2.6812  0       0       0.739  13.265   40.5275     55.0141     -31.719    
C4H3S      1       1    5.7093  0       0       0      27.966   80.301      132.7786    -58.3241   
C4H2S      2       1    5.826   0       0       0      0        0           0           0                            

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
    z       Obj function;

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

newh_vap..    pi('h_vap') =e= pi('h_vap298')*((1-(T(e)/T(crit)))/(1-(T(s)/T(crit))))**0.375;


Model CAMD / all /;

solve CAMD minimizing z using ;

display x.l, y.l;