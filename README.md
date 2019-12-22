# Introduction

![FIDE](https://images.hamodia.com/hamod-uploads/2017/11/27160118/download.jpg) ![calendar](https://print-a-calendar.com/printable-calendars/one-page-year-thumbnail.png)

This repository is to help all chess players utilize and work with public chess profile data provided by the `FIDE` organization (through December 2019). Most of the work done with programming languages such as R and Python.

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

- `ID_NUMBER` is each individual FIDE player's ID value

- `Name` is each individual's name

- `Fed` is the federation of a player

- `Sex` is the sex of a player (Male/Female)

- `Tit` is title of a player (Grandmaster, International Master, FIDE Master, Women's titles, etc.)
 
- `OTit` is the other titles of a given FIDE player (Arbiters, Organizers, Trainers, etc.)

- `FOA` stands for Fide Online Arena and the column contains values about FIDE player titles in the FOA platform.

- `Rating` is a FIDE player's rating

- `Gms` is the number of games played by a FIDE player in a given month

- `K`- A player's K-factor

- `Birthday` - A player's birth year

- `Flag` - A player's level of activity (Active/Inactive)

---

# Lifecycle of data

The file processing is organized into 5 steps:

1. [Download the FIDE files](https://github.com/AnujDahiya24/FIDE/tree/master/Chess%20Scripts/Step%201%20-%20Download)

2. [Reformat the text files](https://github.com/AnujDahiya24/FIDE/tree/master/Chess%20Scripts/Step%202%20-%20Reformat)

3. [Scrape country code data (Optional)](https://github.com/AnujDahiya24/FIDE/tree/master/Chess%20Scripts/Step%203%20-%20FIDE%20Country%20Codes)
 
4. [Visualize the data](https://github.com/AnujDahiya24/FIDE/tree/master/Chess%20Scripts/Step%204%20-%20Analysis)

5. [To Dos & Experimental work](https://github.com/AnujDahiya24/FIDE/tree/master/Chess%20Scripts/Step%205%20-%20Experimental%20work)

---

# Questions?

Please post inquiries about the data in [Issues](https://github.com/AnujDahiya24/FIDE/issues).
