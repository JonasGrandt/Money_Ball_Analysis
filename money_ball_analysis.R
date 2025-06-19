#Loading batting data
batting <- read.csv('Batting.csv')

#Creating new col batting$BA
batting$BA <- batting$H / batting$AB
#Creating new col batting$OBP
batting$OBP <- (batting$H + batting$BB + batting$HBP) / (batting$AB + batting$BB + batting$HBP + batting$SF)
#Creating new col batting$X1B, to calculate SLG
batting$X1B <- batting$H - batting$X2B - batting$X3B - batting$HR
#Creating new col batting$SLG
batting$SLG <- (batting$X1B + 2*batting$X2B + 3*batting$X3B + 4*batting$HR) / batting$AB

#Filtering data for >= 1985
batting <- subset(batting, yearID >= 1985)

#Loading salary data
sal <- read.csv('Salaries.csv')
#Merging batting and salary data
combo <- merge(batting, sal, by = c("playerID", "yearID"))

#Locating statistics on lost players of 2001
lost.players <- subset(combo, playerID %in% c('giambja01', 'damonjo01', 'saenzol01') & yearID == 2001)
#Calculating OBP avg among lost players
mean.OBP <- mean(lost.players$OBP, na.rm = TRUE)
#Calculating min AB among lost players
min.AB <- min(lost.players$AB)

#Finding replacements based on yearID, mean.OBP, and min.AB
replacements <- combo %>% 
  filter(yearID == 2001 & OBP > mean.OBP & AB >= min.AB) %>%
  arrange(salary) %>%
  select(playerID, OBP, AB, salary)

head(replacements)

#Labeling lost players and replacement options
lost.players$type <- "Lost Players"
replacements$type <- "Replacement Players"
replacements <- replacements %>% 
  filter(!playerID %in% lost.players$playerID)

#Combining datasets
comparison <- rbind(
  lost.players[, c("playerID", "OBP", "salary", "type")],
  replacements[, c("playerID", "OBP", "salary", "type")]
)

#Plotting OBP vs Salary
ggplot(comparison, aes (x = salary, y = OBP, color = type, shape = type)) + 
  geom_point(size = 2) +
  geom_text(
    data = subset(comparison, type == "Lost Players"),
    aes(label = playerID,),
    hjust = 0.5, vjust = -1,
    size = 2
  ) +
  labs(
    title = "Lost vs Replacement Players: OBP vs Salary (2001)",
    x = "Salary",
    y = "On-Base Percentage (OBP)",
    color = "Player Type",
    shape = "Player Type"
  ) +
  scale_x_continuous(labels = scales::dollar,
                     limits = c(0, 15000000)) + 
  theme_minimal()

