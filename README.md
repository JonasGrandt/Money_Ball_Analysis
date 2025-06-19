NOTE: This project was completed as the final capstone exercise for the Udemy course Data Science and Machine Learning Bootcamp with R.

# Money_Ball_Analysis
Lost vs Replacement Baseball Players Analysis (2001)
This project analyzes Major League Baseball players from the 2001 season to compare “lost players” (three specific players no longer on the team) and potential replacement players. It uses batting and salary data to identify replacement candidates based on on-base percentage (OBP) and at-bats (AB), and visualizes salary vs. OBP differences.

About the Analysis
Data sources: Batting statistics (Batting.csv) and salary information (Salaries.csv).

Key metrics:
Batting Average (BA)
On-Base Percentage (OBP)
Slugging Percentage (SLG)

Process:
Load and merge batting and salary data.
Calculate new statistics (BA, OBP, SLG).
Filter for the year 2001 and select three “lost” players.
Calculate average OBP and minimum at-bats among lost players.
Find replacement candidates with better OBP and enough playing time.
Plot salary vs OBP to compare lost and replacement players.

How to Use
Place Batting.csv and Salaries.csv in your working directory.
Run the R script analysis.R (or the script file you name it).
View the generated plot to explore salary and OBP distributions.
