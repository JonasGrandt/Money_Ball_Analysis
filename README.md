# Money Ball Analysis

## Introduction
This project analyzes baseball player data to compare “lost players” with potential replacements based on their On-Base Percentage (OBP) and salary. It uses data from the 2001 season and calculates key statistics such as batting average (BA), slugging percentage (SLG), and OBP to help identify cost-effective replacement players.

This analysis was completed as the final capstone exercise for the Udemy course *Data Science and Machine Learning Bootcamp with R*.

---

## Files Included

- `analysis.R`: The R script containing the full analysis and visualization code.  
- `Batting.csv`: Batting statistics data.  
- `Salaries.csv`: Player salary data (1985 and later).  

---

## How to Run the Code

1. Make sure you have R and RStudio installed on your computer.  
2. Download or clone this repository to your local machine.  
3. Open `analysis.R` in RStudio.  
4. Run the script line-by-line or all at once to reproduce the analysis and plot.  

---

## Workflow & What You’ll See

- Load and merge batting and salary data from 1985 onward.  
- Calculate key batting statistics: Batting Average (BA), On-Base Percentage (OBP), and Slugging Percentage (SLG).  
- Filter the dataset for the 2001 season and identify three key “lost” players.  
- Compute the average OBP and minimum at-bats for these lost players to set benchmarks.  
- Select replacement candidates who have a higher OBP and sufficient playing time compared to the lost players.  
- Visualize the comparison by plotting salary against OBP, highlighting lost players and potential replacements with distinct colors and labels.

---

## Notes

- The data files included are necessary to run the analysis.  
- The plot uses `ggplot2` for visualization and includes player labels for the lost players.  
- Salary axis is limited to $0 to $15,000,000 for clearer visualization.
