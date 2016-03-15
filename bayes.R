
# Bayes 

# Data with values rd and yw
clr = c("rd","rd","rd","yw","yw","yw","yw","yw","rd","rd")
# Data with values sp and su
typ = c("sp","sp","sp","sp","sp","su","su","su","su","sp")
# Data with values do and im
org = c("do","do","do","do","im","im","im","do","im","im")

# Class Value - Data with values ys and no
stl = c("ys","no","ys","no","ys","no","ys","no","no","ys")


dfr = data.frame(clr, typ, org, stl)
tl = length(dfr$stl)

#rd,su,do ==>  red,suv,dom

yc = 0
nc = 0
ryc = 0
rnc = 0
syc = 0
snc = 0
dyc = 0
dnc = 0

for (i in 1:nrow(dfr))
{
	if (dfr$stl[i] == "ys") yc = yc + 1
	if (dfr$stl[i] == "no") nc = nc + 1
	if ((dfr$clr[i] == "rd")&(dfr$stl[i] == "ys")) ryc = ryc + 1
	if ((dfr$clr[i] == "rd")&(dfr$stl[i] == "no")) rnc = rnc + 1
	if ((dfr$typ[i] == "su")&(dfr$stl[i] == "ys")) syc = syc + 1
	if ((dfr$typ[i] == "su")&(dfr$stl[i] == "no")) snc = snc + 1
	if ((dfr$org[i] == "do")&(dfr$stl[i] == "ys")) dyc = dyc + 1
	if ((dfr$org[i] == "do")&(dfr$stl[i] == "no")) dnc = dnc + 1
}


pys = yc/tl
pno = nc/tl

prys = ryc/yc
prno = rnc/nc

psys = syc/yc
psno = snc/nc

pdys = dyc/yc
pdno = dnc/nc

pysr = pys*prys*psys*pdys
pnor = pno*prno*psno*pdno

str = ifelse(pysr>pnor, "stolen", "not stolen")
print (c(yc,ryc,syc,dyc))
print (c(nc,rnc,snc,dnc))
print (c(pys,prys,psys,pdys))
print (c(pno,prno,psno,pdno))
print (str)




# Another way to calculate yc values
ifelse(dfr$stl == "ys", 1,0)
ifelse(dfr$clr == "rd", ifelse(dfr$stl == "ys", 1, 10000), 0)
ifelse(dfr$typ == "su", ifelse(dfr$stl == "ys", 1, 10000), 0)
ifelse(dfr$org == "do", ifelse(dfr$stl == "ys", 1, 10000), 0)



