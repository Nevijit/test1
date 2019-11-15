//begin task1//
clear
use "C:\1 reference\test2\baseline_data_stata12.dta"
des
sum
rename g_crops Inc_crops
rename g_livestock Inc_livestock
rename g22 Inc_agr
rename g23 Inc_tree
rename g24 Inc_rent
rename g25 Inc_landsales
rename g26 Inc_remitt
rename g27 Inc_IntDiv
rename g28 Inc_pension
rename g29_men Inc_lab_Men
rename g29_women Inc_labor_Women
rename g29_child Inc_labor_Child
rename g210_men Inc_Salary_Men
rename g210_women Inc_Salary_Women
rename g210_child Inc_Salary_Child
rename g211 Inc_gift
rename g212 Inc_Other
rename g212_spec Inc_Other_Specify
rename g21 Inc_nonfarm
sum Inc_nonfarm Inc_crops Inc_livestock Inc_agr Inc_tree Inc_rent Inc_landsales Inc_remitt Inc_IntDiv Inc_pension Inc_lab_Men Inc_labor_Women Inc_labor_Child Inc_Salary_Men Inc_Salary_Women Inc_Salary_Child Inc_gift Inc_Other Inc_Other_Specify
replace Inc_nonfarm = 0 if Inc_nonfarm ==.
replace Inc_crop = 0 if Inc_crop ==.
replace Inc_livestock = 0 if Inc_crop ==.
replace Inc_livestock = 0 if Inc_crop ==.
replace Inc_livestock = 0 if Inc_crop ==.
replace Inc_livestock = 0 if Inc_livestock ==.
replace Inc_agr = 0 if Inc_agr ==.
replace Inc_tree = 0 if Inc_tree ==.
replace Inc_rent = 0 if Inc_rent ==.
replace Inc_landsales = 0 if Inc_landsales ==.
replace Inc_remitt = 0 if Inc_remitt ==.
replace Inc_IntDiv = 0 if Inc_IntDiv ==.
replace Inc_pension = 0 if Inc_pension ==.
replace Inc_lab_Men = 0 if Inc_lab_Men ==.
replace Inc_labor_Women = 0 if Inc_labor_Women ==.
replace Inc_labor_Child = 0 if Inc_labor_Child==.
replace Inc_Salary_Men = 0 if Inc_Salary_Men==.
replace Inc_Salary_Women = 0 if Inc_Salary_Women==.
replace Inc_Salary_Child = 0 if Inc_Salary_Child==.
replace Inc_Salary_Child = 0 if Inc_Salary_Child==.
replace Inc_gift = 0 if Inc_gift==.
replace Inc_Other = 0 if Inc_Other ==.
replace Inc_nonfarm = 0 if Inc_nonfarm ==0
tab Inc_nonfarm,nola
*all member are in the table -- number of observation 4,972*
*all member is in the table -- number of observation 4,972*
codebook Inc_crops
tab Inc_crops,nola
sum Inc_crops
tab Inc_livestock
tab Inc_agr
replace Inc_agr = 0 if Inc_agr ==-88
tab Inc_agr,nola
tab Inc_lab_Men, nola
replace Inc_lab_Men = 0 if Inc_lab_Men ==-99
replace Inc_gift = 0 if Inc_gift ==-99
replace Inc_gift = 0 if Inc_gift ==-99
sum Inc_nonfarm
** since income  in Other_Specify is not in number and we have no way to estimate this income, so we will exclude this income from Total*
label define G22 0 "0", replace
label define G23 0 "0" 77 "refused" 88 "don't know" 99 "missing", replace
label define G24 0 "0" 77 "refused" 88 "don't know" 99 "missing", replace
label define G25 0 "0" 77 "refused" 88 "don't know" 99 "missing", replace
label define G26 0 "0" 77 "refused" 88 "don't know" 99 "missing", replace
label define G27 0 "0" 77 "refused" 88 "don't know" 99 "missing", replace
label define G28 0 "0" 77 "refused" 88 "don't know" 99 "missing", replace
label define G29_CHILD 0 "0" 77 "refused" 88 "don't know" 99 "missing", replace
label define G29_MEN 0 "0" 77 "refused" 88 "don't know" 99 "missing", replace
label define G2_WOMEN 0 "0" 77 "refused" 88 "don't know" 99 "missing", replace
label define G211 0 "0" 77 "refused" 88 "don't know" 99 "missing", replace
label define G212 0 "0" 77 "refused" 88 "don't know" 99 "missing", replace
generate Inc_TOTAL1 = Inc_nonfarm + Inc_crops + Inc_livestock + Inc_agr + Inc_tree + Inc_rent + Inc_landsales + Inc_remitt + Inc_IntDiv + Inc_pension + Inc_lab_Men + Inc_labor_Women + Inc_labor_Child+ Inc_Salary_Men  + Inc_Salary_Women + Inc_Salary_Child + Inc_gift + Inc_Other, after(Inc_Other_Specify)
sum Inc_nonfarm Inc_crops Inc_livestock Inc_agr Inc_tree Inc_rent Inc_landsales Inc_remitt Inc_IntDiv Inc_pension Inc_lab_Men Inc_labor_Women Inc_labor_Child Inc_Salary_Men Inc_Salary_Women Inc_Salary_Child Inc_gift Inc_Other Inc_TOTAL1
//End task1//
//begin task2//
*if I have time, I will rename the variable to be something understandable before the followoing steps*
tab d61_1, nola
graph bar (mean) d61_1 (mean) d61_2 (mean) d61_3 (mean) d61_4 (mean) d61_5 (mean) d61_6 (mean) d61_7
*if I have time, I will calculate the probability of the answer "Yes" for each technology, and plot bar graph that represent the probability to use each technology.
