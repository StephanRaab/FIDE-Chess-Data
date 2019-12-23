# Introduction

The first step has us downloading the profile player data (zipped text files) from [FIDE's website](http://ratings.fide.com/download_lists.phtml). Feel free to explore FIDE's website. It seems as if data prior to 2015 is not being displayed anymore. Thankfully, the URLs still host the `.zip` files that we will download.

# Quick Links

- [Data (all text files)](https://github.com/AnujDahiya24/FIDE/tree/master/Chess%20Scripts/Step%201%20-%20Download/Downloaded%20files)
- [Tutorial](https://github.com/AnujDahiya24/FIDE/blob/master/Chess%20Scripts/Step%201%20-%20Download/Download.pdf)
- [R-Markdown file](https://github.com/AnujDahiya24/FIDE/blob/master/Chess%20Scripts/Step%201%20-%20Download/Download.Rmd)

# Download the FIDE files

![Download](https://www.pngarts.com/files/2/Download-Button-Transparent-Background-PNG.png)

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

# Questions?

Please post inquiries in [Issues](https://github.com/AnujDahiya24/FIDE/issues).
