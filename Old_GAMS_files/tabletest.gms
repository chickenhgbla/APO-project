Set
    temp 'Process temperature conditions'  / e 'Evaporating temperature', c 'Condensing temperature', m 'Average process temperature', s 'Standard temperature 298'/
    
    pr 'Process pressure conditions'     / atm 'Atmospheric', c 'Condensing'/
    
    i 'Types of properties'             / vp_e 'bar, Vapour pressure @ evaporating temperature',
                                          vp_c 'bar, Vapour pressure @ condensing temperature',
                                          h_vap 'kj/mol Heat of vaporisation @ evaporating temperature',
                                          cp_l 'j/mol.k Liquid heat capacity @ average process temperature' /
                                                                               
    g 'group type'                      /  CH3, CH2, CH, C, CH2--CH, CH--CH, CH2--C, CH--C, C--C,
                                           CH2--C--CH, OH, 
                                           CH3CO, CHO, CH3COO, CH3O, CH2O, CH-O, CHNH2, CH3NH,
                                           CH2NH, CH3N, CH2N, CH2CN, COOH, I, Br, CH---C, CH2S /
                                           
    par 'paramter'                      /  v 'Valency',
                                           t 'Type; 1 = General, 2 = Unsaturated, 3 = Aromatic',
                                           tb1k 'k, CAG parameter for normal boiling temperature',
                                           tc1k 'k, CAG parameter for critical temperature',
                                           pc1k 'bar^0.5, CAG parameter for critical pressure',
                                           w1k 'CAG parameter for acentric factor',
                                           hv1k 'kjmol^-1, CAG parameter for h_vap298',
                                           cpa1k 'jmol^-1k^-1, cp_0 CAG parameter 1',
                                           cpb1k 'jmol^-1k^-1,cp_0 CAG parameter 2',
                                           cpc1k 'jmol^-1k^-1,cp_0 CAG parameter 3'  /
                                           
    k binary index /k1*k4/
    ;

Alias (j,g)
         
Table
            info(g,par) 'Information about each group type'
            
           v       t    tb1k   tc1k    pc1k    w1k    hv1k     cpa1k       cpb1k       cpc1k      
CH3        1       1    0.8894 1.6781  0.0199  0.296  4.116    35.1152     39.5923     -9.9232    
CH2        2       1    0.9225 3.492   0.0106  0.147  4.65     22.6346     45.0933     -15.7033   
CH         3       1    0.6033 4.033   0.0013  -0.071 2.771    8.9272      59.9786     -29.5143   
C          4       1    0.2878 4.8823  -0.0104 -0.351 1.284    0.3456      74.0368     -45.7878   
CH2--CH    1       2    1.7827 5.0146  0.025   0.408  6.714    49.2506     59.384      -21.7908   
CH--CH     2       2    1.8433 7.3691  0.0179  0.252  7.37     35.2248     62.1924     -24.8156   
CH2--C     2       2    1.7117 6.5081  0.0223  0.223  6.797    37.6299     62.1285     -26.0637   
CH--C      3       2    1.7957 8.9582  0.0126  0.235  8.178    21.3528     66.3947     -29.3703   
C--C       4       2    1.8881 11.3764 0.002   -0.21  9.342    10.2797     65.5372     -30.6057   
CH2--C--CH 1       2    3.1243 9.9318  0.0313  0.152  12.318   66.0574     69.3936     -25.1081   
OH         1       1    3.2152 9.7292  0.0051  0.737  24.529   27.2107     2.7609      1.306      
CH3CO      1       1    3.5668 13.2896 0.0251  0.633  18.999   59.3032     67.8149     -20.9948   
CHO        1       1    2.8526 10.1986 0.0141  1.133  12.909   40.7501     19.699      -5.436     
CH3COO     1       1    3.636  12.5965 0.029   0.756  22.709   66.8423     102.4553    -43.3306   
CH3O       1       1    2.2536 6.4737  0.0204  0.442  10.919   50.5604     38.9681     -4.7799    
CH2O       2       1    1.6249 6.0723  0.0151  0.218  7.478    39.5784     41.8177     -11.0837   
CH-O       3       1    1.1557 5.0663  0.0099  0.509  5.708    25.675      24.7281     4.2419     
CHNH2      2       1    2.5983 10.2075 0.0107  0.953  11.876   44.1122     77.2155     -33.5086   
CH3NH      2       1    3.1376 9.8544  0.0126  0.55   14.452   53.7012     71.7948     -22.9685   
CH2NH      3       1    2.6127 10.4677 0.0104  0.386  14.481   44.6388     68.5041     -26.7106   
CH3N       2       1    2.1647 7.6924  0.0159  0.075  6.947    41.4064     85.0996     -35.6318   
CH2N       3       1    1.2171 5.5172  0.0049  0.793  6.918    30.1561     81.6814     -36.1441   
CH2CN      1       1    5.0525 20.3781 0.0361  1.67   23.34    58.2837     49.6388     -15.6291   
COOH       1       1    5.8337 23.7593 0.0115  0.57   43.046   46.5577     48.2322     -20.4868   
I          1       1    3.665  17.3947 0.0028  0.233  14.364   29.1815     -9.7846     3.4554     
Br         1       1    2.6495 10.5371 -0.0018 0.278  11.423   28.026      -7.1651     2.4332     
CH---C     1       2    2.3678 7.5433  0.0148  0.618  7.751    45.9768     20.6417     -8.3297    
CH2S       2       1    3.6763 17.7916 0.0111  0.438  17.117   45.0314     55.1432     -18.7776

Parameter
    T(temp)    Temperatures in K        /e 273, c 316, m 294, s 298/
    P(pr)    Pressures in bar            /atm 1.1, c 14/
    hfc(i)  Properties of R134a         /vp_e 10,
                                         vp_c 10,
                                         h_vap 20.353,
                                         cp_l 143.4/
    R       Gas constant                /8.3145/
    
    Kmax max binary factor
 
    nL(g)  groups lower bounds
    nU(g)  groups upper bounds;

*nL and nU bounds
nL(g)=0;
nU(g)=3;

*Kmax
Kmax=smax(g,ceil(log(nU(g)-nL(g))/log(2)));