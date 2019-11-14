# APO_Project
**Due 12 Dec 2019 (Thursday), 4.30pm**
- Submit your report (one report per pair) on Blackboard 
- Send your GAMS file to mohamed.maher18@imperial.ac.uk
  
1. Propose a mathematical formulation for the design problem, implement it in GAMS
and identify an optimal refrigerant, using a local or global solver.
2. Using integer cuts, identify 10 possible refrigerants that should be investigated further,
commenting on the suitability of the compounds you have found.
3. Propose three additional constraints that you could use to improve the mathematical
formulation. Do not implement them.
4. Write a report of no more than 8 pages on your findings. Use margins of 2.5 cm
throughout, a line spacing of 1.2 and 11 point Arial font.

**GAMS script outline:**

obj func

comparison wif HFC constraints
property relation constraints

vap pressure --> atm, condensing
Hvap --> evap temp
CpL --> ave process temp

molecule feasibility constraints (higher order)
integer cut

UNIFAC
cost of molecule production
environment effect

decide on solver

**Report outline:**

intro of problem

intro of refrigation cycle (conditions)

math formulation
choice of property relation constraints (compare with experimental data)

results and discussion

investigation of refrigerants 

extra constraints
1. Ozone depletion potential
2. Health hazard index
3. Flammability 

conclusion

**To-DO:**

