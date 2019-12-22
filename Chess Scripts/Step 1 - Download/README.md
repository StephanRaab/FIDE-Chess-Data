## 1. Download the FIDE files

![Download](https://www.pngarts.com/files/2/Download-Button-Transparent-Background-PNG.png)

The first step has us downloading the profile player data from FIDE's website. 

In order to download the player profile data, we will use something like the following snippet:

```
#R function that downloads FIDE data files and skips over non-existing URLs

download_function <- function(link, dest){
  if (!file.exists(dest)) {
    tryCatch({
      download.file(link, dest, method="auto", quiet = TRUE) 
    }, error=function(e){})
  }
} 

#Download all data files from URLs and direct them to a folder

mapply(download_function, url_vector, url_vect_destfile)
```

in order to download all files of interest and puts them into a destination folder. 
