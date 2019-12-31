# 📚 Introduction

If you want to: 
1. View the process of the data visualization, then see the `Tutorial` below
2. Run the script yourself, then you should download the `R-Markdown file` below and run it on your local machine.

# ⚡ Quick Links

- [Tutorial](https://github.com/AnujDahiya24/FIDE-Chess-Data/blob/master/Chess%20Scripts/Step%205%20-%20Analysis/Analysis%20%26%20Visuals/Analysis.pdf)
- [R-Markdown file](https://github.com/AnujDahiya24/FIDE-Chess-Data/blob/master/Chess%20Scripts/Step%205%20-%20Analysis/Analysis%20%26%20Visuals/Analysis.Rmd)

---

# Visuals

#### FIDE player (Active) rating distribution of Males & Females over time.

![](https://github.com/AnujDahiya24/FIDE-Chess-Data/blob/master/Chess%20Scripts/Step%206%20-%20Experimental%20work/Experiments/Men_women_gif.gif)

I find this graph to be interesting because it shows a few strange trends:

- The graphs look like play-dough that has been slowly compressed over time.
- There were no players rated below 2200 in many of the early datasets provided by FIDE.
- Around 2014, both the male and female distributions looked fairly Guassian in their shape
- Since 2014, FIDE's rating floor of 1000 has prevented players from naturally falling below the floor. I will look to explore the differences between the male and female distributions (both are heavily right skewed, but the female distribution is even more so) moving foward. There's an interesting sociological phenomenon present here that has not been vocalized in public yet.

# ⌚ Time Length

Note: The files take a several minutes to combine because of functions like `rbindlist()`, unfortunately.

---

# ❓ Questions?

Please post inquiries about the data in [Issues](https://github.com/AnujDahiya24/FIDE/issues).
