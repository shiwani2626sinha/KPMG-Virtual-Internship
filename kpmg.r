install.packages("readxl")

library(readxl)

excel_sheets("kpmg.xlsx")

pop_1<- read_excel("kpmg.xlsx", sheet=4)

pop_1
colnames(pop_1)
hist(pop_1$Age, breaks =10, col=rainbow(7), xlab = "age", ylab = "freq")


no_females=sum(pop_1$gender=='Female')
no_females
no_males=sum(pop_1$gender=='Male')
no_males
no_unknown=sum(pop_1$gender=='U')
no_unknown

install.packages("plotrix")
library(plotrix)
slices <- c(no_females,no_males,no_unknown)
lbls <- c("FEMALE", "MALE", "UNKNOWN")
pie3D(slices,labels=lbls,explode=0.1,main="3D Pie Chart")


a=sum(pop_1$job_industry_category =='Agriculture')
b=sum(pop_1$job_industry_category =='Entertainment')
c=sum(pop_1$job_industry_category =='Financial Services')
d=sum(pop_1$job_industry_category =='Health')
e=sum(pop_1$job_industry_category =='IT')
f=sum(pop_1$job_industry_category =='Manufacturing')
g=sum(pop_1$job_industry_category =='Property')
h=sum(pop_1$job_industry_category =='Retail')
i=sum(pop_1$job_industry_category =='n/a')
j=sum(pop_1$job_industry_category =='Telecommunications')

slices <- c(a,b,c,d,e,f,g,h,i,j)
lbls <- c("Agriculture", "Entertainment","Financial Services", "Health","IT", "Manufacturing",
          "Property","Retail","n/a","Telecommunications" )
pie(slices, labels = lbls, main="Pie Chart of Customers industry wise")

pop_2<- read_excel("kpmg.xlsx", sheet=5)
vic=sum(pop_2$state=='VIC')
nsw=sum(pop_2$state=='NSW')
qld=sum(pop_2$state=='QLD')
slices<- c(vic,nsw,qld)
lbls<-c("VIC","NSW","QLD")
pie(slices,labels = lbls,main="State wise customer distribution")