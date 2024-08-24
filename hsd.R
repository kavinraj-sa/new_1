#vector

my_gene_express = c(1.5,3.2,6.5,5.6)

print(my_gene_express)

print(my_gene_express[1])

my_gene_express[1:3]
my_gene_express[c(1,3)]
my_gene_express[-3]
sum(my_gene_express)
mean(my_gene_express)
sd(my_gene_express)
#normilization
log(my_gene_express)

#2D datastructure

my_gene_name = c("DLGAPS","KIF2C","kdfjh","hsd")

#dataframe:rows and columns
#data.frame

my_gene_DF = data.frame(my_gene_name,my_gene_express)
my_gene_DF

my_gene_DF = data.frame("GENE" = my_gene_name,"Epression"=my_gene_express)
my_gene_DF

my_new_gene = data.frame("GENE" = "rpr2", "Epression" = 6.5)

View(my_new_gene)

my_gene_DF = rbind(my_gene_DF,my_new_gene)
View(my_gene_DF)

my_gene_count = c(55,66,55,85,33)
my_gene_DF = cbind(my_gene_DF,"COUNT" = my_gene_count)
View(my_gene_DF)

my_gene_DF[1,1]
my_gene_DF[3,4]
my_gene_DF[1:3,2]
my_gene_DF[c(1,3),2]
my_gene_DF[,]
my_gene_DF[-3,]



if (3>4){
  print("abab")
}else{print("gaga")}

#AND--> &
#OR --> |

if((9>2) | (3==4)) {
  print("yee")
}else{
  print("joo")
}


if((1>2) & (3==4)) {
  print("yee")
}else{
  print("joo")
}

#loop

for(my_iter in my_gene_name){
  print(my_iter)
}


#gene of interest is hsd

indicator = 0

for (my_gen in my_gene_name){
  if (my_gen == "hsd"){
    print("yes")
    indicator = 1
  }
}

if(indicator==0){   
print("notpresent")
}

#function 1.def 2.call

#define

my_function = function(my_num){
  my_sq = my_num * my_num
  print(my_sq)
}

my_function(3.3)



find_gene = function(gene_name){
  indicator = 0
  for (my_gen in my_gene_name){
    if (my_gen == gene_name){
      print(paste("yes",gene_name," gene"))
      indicator = 1
    }
  }
  
  if(indicator==0){   
    print(paste("notpresent", gene_name, " gene"))
  }
}

find_gene("hsd")
getwd()


my_file = read.csv("csv-hemolysisT-set (1).csv")
my_file

head(my_file$Publication.Year)


