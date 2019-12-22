## 2. Reformat the text files

![](https://miro.medium.com/max/500/1*yWFQiGjlgHUVYeh4ELELyw.jpeg)

Our next step is to work through each file and transform them into a usable format. 

The `multi_processing()` function below is the general wrapper that weaves everything together and cleans each file.
```
#run All_files_fwrite() in parallel 

multi_processing <- function(Year_num){
                    functions = ls(globalenv())
                    cl <- makeCluster(detectCores()) 
                    clusterExport(cl, functions)
                    registerDoParallel(cl)
                    foreach(i = Year_num,
                            .export = functions,
                            .packages = c("dplyr", 
                                          "data.table", 
                                          "Kmisc")) %dopar% {All_files_fwrite(i)}
                    stopCluster(cl)
                                      } 
```
After this function is executed on every one of the `.txt` files, they will become usuable `.csv` files.
