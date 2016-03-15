# Factors

data <- c(1,2,2,3,1,2,3,3,1,2,3,3,1)
fdata <- factor(data)
fdata
fdata <- factor(data, labels = c("I","II","III"))
fdata
levels(fdata) <- c("x", "xx", "xxx")
fdata

# Each unique character value is stored only once
mons = c("March","April","January","November","January",
         "September","October","September","November","August",
         "January","November","November","February","May","August",
         "July","December","August","August","September","November",
         "February","April")
mons = factor(mons)
# Counts each combination of factor levels
table(mons)

mons = factor(mons,
              levels=c("January","February","March", "April","May","June",
                       "July","August","September", "October","November","December"),
              ordered=TRUE)
mons[1] < mons[2]
table(mons)

# Covert back to integer
fert = c(10,20,20,50,10,20,10,50,20)
fert = factor(fert,levels=c(10,20,50),ordered=TRUE)
fert
mean(fert)
levels(fert)[fert]
as.integer(levels(fert)[fert])
mean(as.integer(levels(fert)[fert]))


# Loops and how not to use them
s <- sample(letters,size = 15, replace = TRUE)
table(factor(s))


yes = 0
no = 0
for (i in 1:length(s)){
  if (s[i] == "yes"){
    yes <- yes + 1
  }else{
    no <- no + 1
  }
}
c(yes,no)

s <- sample(c("yes", "no"), size = 15)
s <- sample(c("yes", "no"), size = 15, replace = TRUE)
s
s_fact <- factor(s)
table(s_fact)
ifelse(s == "yes", 1, 0)
sum(ifelse(s=="yes",1,0))

s <- sample(1:10000, size = 20, replace = T)
s
mean(s)
median(s)
table(factor(s))
ifelse(s > mean(s), 1, ifelse(s > median(s), -1, 0))





