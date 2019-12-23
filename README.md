# Introduction

![FIDE](https://images.hamodia.com/hamod-uploads/2017/11/27160118/download.jpg) ![calendar](https://print-a-calendar.com/printable-calendars/one-page-year-thumbnail.png)

This repository is to help all chess players utilize and work with [public chess profile data](http://ratings.fide.com/download_lists.phtml) provided by the `FIDE` organization (through December 2019). Most of the work done, in this repository, is done through R and a bit of Python.

# Where is the data?

The data is located in the `Data files` [folder](https://github.com/AnujDahiya24/FIDE/tree/master/Data%20files).

---
# Example data

An example of what the FIDE **Standard** Rating data looks like in December 2019:  

| ID_NUMBER | Name | Fed | Sex | Tit | WTit | OTit | FOA | Rating | Gms | K | Birthday | Flag |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 25121731 | A C J John | IND| M  |     |     |   |    | 1063 | 0  | 40 | 1987 | |
| 35077023 | A Chakravarthy | IND| M  |     |     |    |    | 1151 | 0  | 40 | 1986 | i  | 
| 10207538 | A E M, Doshtagir | BAN| M  |     |     |    |    | 1840 | 0  | 40 | 1974 | i  |
| 10680810 | A hamed Ashraf, Abdallah  | EGY| M  |     |     |     |    | 1728 | 0  | 40 | 2001 |    | 
| 5716365  | A Hamid, Harman | MAS| M  |     |     | NI            |    | 1325 | 0  | 40 | 1970 | i  |

---

# Metadata information

From the [FIDE Download Rating List page](http://ratings.fide.com/download.phtml), we can understand each column a bit more:

| Column name | Detail |
| --- | --- |
| ID_NUMBER | a FIDE player's ID |
| Name | a FIDE player's name |
| Fed | a FIDE player's federation (country) |
| Sex | a FIDE player's sex (Male/Female) |
| Tit | a FIDE player's title (GM, IM, FM, Women titles, etc.) |
| OTit | a FIDE player's other title(s) (Arbiters, Organizers, Trainers, etc.) |
| FOA (Fide Online Arena) | a FIDE player's FOA titles |
| Rating | a FIDE player's rating |
| Gms | a FIDE player's # of games played in a month |
| K | a FIDE player's K-factor |
| Birthday | a FIDE player's birth year |
| Flag | a FIDE player's level of activity (Active/Inactive) |

---

# Why did I do this?

![](https://imgflip.com/s/meme/Futurama-Fry.jpg)

I chose to work on this project because of several reasons:

- Chess players like to see visuals of themselves, their competitors & friends, top players and populations .
- I wanted to improve my skills in at least 1 or 2 programming languages.
- I take an interest in any data about chess that has not been extensively analyzed.


# Issues

After downloading the files, I wasn't able to import text files downloaded from [FIDE's data download page](http://ratings.fide.com/download_lists.phtml), into R. A typical `read.csv()` statement will not work because the data has no defined delimeter to parse columns on.  

For example, the earliest dataset on FIDE's website is from January 2001. Let's take a moment to look at the first few rows of the raw text file.

```
ID_NUMBER NAME                             TITLE COUNTRY JAN01 GAMES FLAG
  
 1701991  Aaberg, Anton                          SWE     2300    0   i   
 1401815  Aagaard, Jacob                   m     DEN     2374   18       
 1406248  Aage, Bjarke                           DEN     2063    0       
```

There are several issues with working with the data, but the most pressing one is that there is no clear delimeter to import the files on. A regular comma delimeter will not work because the text does not contain commas to separate the columns. Whitespace and tab delimeters won't work either.

One [github user](https://github.com/xdurana/fider/blob/master/R/zzz.R) has imported FIDE data via fixed widths. This works quite well for most, if not all of the data and I'll look into reading in the text files faster using this [stackoverflow post's](https://stackoverflow.com/questions/24715894/faster-way-to-read-fixed-width-files) benchmarking results.

When I first started working on this project, I didn't quite understand it required fixed width functions such as `read_fwf()`. I was new to R and my main motivation was I wanted to learn R and Python in a creative setting.

There are several other issues with the rest of the text files (Text files run from January 2001 through December 2019). Just to name a few (shown with table visuals):

### Some have misspelled columns and ever changing column names over time 

```
ID NUMBER NAME                             TIT  Fed     JAN   GMs FLAG
  
 1701991  Aaberg, Anton                         SWE     2300    0   i       
 1401815  Aagaard, Jacob                   m    DEN     2374   18       
 1406248  Aage, Bjarke                          DEN     2063    0       
```  
- `ID NUMBER` is not `ID_NUMBER`, which is problematic for various programmatic reasons.
- `TIT` is different from `TITLE`
- `FED` is different from `Country`.
- `GMs` is different from `Games`
- `JAN` should be `JAN01`

### Some have their columns out of line or missing columns labels outright


```
ID_NUMBER   NAME                        TITLE   COUNTRYJAN01        FLAG
  
 1701991  Aaberg, Anton                          SWE     2300    0   i   
 1401815  Aagaard, Jacob                   m     DEN     2374   18       
 1406248  Aage, Bjarke                           DEN     2063    0       
```
- `NAME` is out of position
- `COUNTRY` and `JAN01` are one word instead of being separated into two
- `GAMES` is missing

### Some have blank & missing rows

```
ID_NUMBER NAME                             TITLE COUNTRY JAN01 GAMES FLAG
  
 1701991  Aaberg, Anton                          SWE     2300    0   i   

 1406248  Aage, Bjarke                           DEN     2063    0       
```
- The entire 2nd row is missing (Jacob Aagaard's information is missing).

### Some don’t even have column headers

```  
 1701991  Aaberg, Anton                          SWE     2300    0   i   
 1401815  Aagaard, Jacob                   m     DEN     2374   18       
 1406248  Aage, Bjarke                           DEN     2063    0       
```
- The column headers aren't even included in the data.

---

# Lifecycle of data

![](https://tygabox.com/wp-content/uploads/2019/04/lifecycle-tbs-colors.jpg)

The process of acquiring the data through visualizing it is divided into 5 steps. Please click each step below for how I made the data usable.

1. [Download the FIDE files](https://github.com/AnujDahiya24/FIDE/tree/master/Chess%20Scripts/Step%201%20-%20Download)

2. [Reformat the text files](https://github.com/AnujDahiya24/FIDE/tree/master/Chess%20Scripts/Step%202%20-%20Reformat)

3. [Scrape country code data (Optional)](https://github.com/AnujDahiya24/FIDE/tree/master/Chess%20Scripts/Step%203%20-%20FIDE%20Country%20Codes)
 
4. [Visualize the data](https://github.com/AnujDahiya24/FIDE/tree/master/Chess%20Scripts/Step%204%20-%20Analysis)

5. [To Dos & Experimental work](https://github.com/AnujDahiya24/FIDE/tree/master/Chess%20Scripts/Step%205%20-%20Experimental%20work)

---

# Questions?

Please post inquiries about the data in [Issues](https://github.com/AnujDahiya24/FIDE/issues).
