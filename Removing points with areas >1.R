#define folder used to draw inputs (csv's)
input_path = "/Users/elli.sellinger/Desktop/Juraska Lab/RNA Scope/Area >1 removed input/" 

#define folder where results (csv's) should be exported to
output_path = "/Users/elli.sellinger/Desktop/Juraska Lab/RNA Scope/Area >1 removed output/" 

# define file to be used as output CSV
files <- list.files(path=input_path, pattern="*.csv", 
                    full.names=TRUE, #keeps same name of input file; the output will be stored in a new folder
                    recursive=FALSE) 

#Use counter to track how many points are removed 
counter = 0 #start counter at 0

for (x in files){
  # read in file
  df = read.csv(x, header=TRUE)
  
  # filter rows for area < 1
  new_df = df[df$Area < 1,]
  
  # calculates number of rows dropped 
  diff = dim(df)[1]- dim(new_df)[1]
  counter = counter + diff #add the number of rows dropped to counter
  
  # print counter 
  print(paste("Dropped ", diff, " rows from ", basename(x)))
  
  # write out results
  write.csv(new_df, paste(output_path, basename(x)))
}