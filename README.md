# SurvivoR Database
![jeff-probst](https://github.com/user-attachments/assets/5771e248-d463-4d33-9d7d-ee136f304aef)


## Description

This database using the [survivoR](https://github.com/doehm/survivoR) package. Datasets of interest include:
- Castaways
- Season Summary for Seasons 1-47
- Voting History
- Challenge Results

This datasets have been cleaned to help answer the following query:
**Which occupations have won the most immunity challenges in seasons 1-47?**

Other potential queries that this database can be used to answer:
- On average, which personality types win the title of Sole Survivor the most?
- What percentage of final tribal councils have been majority men vs women?
- What personality types are most often the first boot? 

## Repository Structure

```
survivoR-database
├─ data 
│  ├─ castaways.csv
│  ├─challenges.csv
│  ├─ seasons.csv
│  └─ votes.csv
├─ .gitignore
├─ README.md
├─ survivoR-database.Rproj
├─ survivor-data-cleaning.qmd
├─ survivor-database.db
├─ survivor-query.qmd
├─ survivor-schema.sql
└─ images
   ├─ Jeff-probst-jpg
   └─ survivor-query.png
```

## Schema
Below is a diagram that outlines the structure and organization of the database. It contains 4 tables: seasons, castaways, challenges and votes. Schema created using dbdiagram.io.

<img width="390" alt="Screenshot 2025-05-15 at 12 54 57 PM" src="https://github.com/user-attachments/assets/cdac191a-dc32-403f-917f-ac3869df226d" />


## Data Access

The data was accessed from the [survivoR repository](https://github.com/doehm/survivoR)

## Author

Brooke Grazda

Master of Environmental Data Science
Bren School of Environmental Sciience & Management

## Acknowldgements

The material for this assignment was presented by TA Annie Adams in the course Databases and Data Management (EDS 213) at the Bren School of Environmental Science & Management, Fall 2024. I'd also like to acknowledge the instructors of this course, Julien Brun and Greg Janée.

