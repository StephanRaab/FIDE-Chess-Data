# 📚 Introduction

![FIDE](https://images.hamodia.com/hamod-uploads/2017/11/27160118/download.jpg) ![calendar](https://print-a-calendar.com/printable-calendars/one-page-year-thumbnail.png)

This repository is to help all chess players utilize and work with [public chess profile data](http://ratings.fide.com/download_lists.phtml) provided by the `FIDE` organization (through December 2019). Most of the work done, in this repository, is done through R and a bit of Python.

# 🗺️ Where is the data?

The data is located in the `Data files` [folder](https://github.com/AnujDahiya24/FIDE/tree/master/Data%20files).

---
# 📊 Example data

An example of what the FIDE **Standard** Rating data looks like in December 2019:  

| ID_NUMBER | Name | Fed | Sex | Tit | WTit | OTit | FOA | Rating | Gms | K | Birthday | Flag |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 25121731 | A C J John | IND| M  |     |     |   |    | 1063 | 0  | 40 | 1987 | |
| 35077023 | A Chakravarthy | IND| M  |     |     |    |    | 1151 | 0  | 40 | 1986 | i  | 
| 10207538 | A E M, Doshtagir | BAN| M  |     |     |    |    | 1840 | 0  | 40 | 1974 | i  |
| 10680810 | A hamed Ashraf, Abdallah  | EGY| M  |     |     |     |    | 1728 | 0  | 40 | 2001 |    | 
| 5716365  | A Hamid, Harman | MAS| M  |     |     | NI            |    | 1325 | 0  | 40 | 1970 | i  |

---

# 🗄️ Metadata information

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

# ♟️ Why did I do this?

<!--- j![](https://imgflip.com/s/meme/Futurama-Fry.jpg) ---> 

I chose to work on this project because of several reasons:

- Chess players like to see visuals of themselves, friends, competitors, top players and players across various demographics. I wanted to provide these visuals.
- I wanted to improve my skills in at least 1 or 2 programming languages.
- I've always taken an interest in any data about chess that has not been extensively analyzed. My curiosity drives me.

---

# 🧬 Lifecycle of data

<!--- ![](https://tygabox.com/wp-content/uploads/2019/04/lifecycle-tbs-colors.jpg) ---> 

The process of acquiring the data through visualizing it is divided into 6 steps. Please click each step below for how I made the data usable.

1. [Download the FIDE files](https://github.com/AnujDahiya24/FIDE/tree/master/Chess%20Scripts/Step%201%20-%20Download)

2. [Reformat the text files](https://github.com/AnujDahiya24/FIDE/tree/master/Chess%20Scripts/Step%202%20-%20Reformat)

3. [Scrape country code data](https://github.com/AnujDahiya24/FIDE/tree/master/Chess%20Scripts/Step%203%20-%20FIDE%20Country%20Codes)
 
4. [Cleaning the data](https://github.com/AnujDahiya24/FIDE-Chess-Data/tree/master/Chess%20Scripts/Step%204%20-%20Cleaning)

5. [Visualize the data](https://github.com/AnujDahiya24/FIDE-Chess-Data/tree/master/Chess%20Scripts/Step%205%20-%20Analysis)

6. [To Dos & Experimental work](https://github.com/AnujDahiya24/FIDE-Chess-Data/tree/master/Chess%20Scripts/Step%206%20-%20Experimental%20work)

---

# ❓ Questions?

Please post inquiries about the data in [Issues](https://github.com/AnujDahiya24/FIDE/issues).
