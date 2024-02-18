# Examining the Correlation Between Church Density and Anti-LGBT Legislation: Voting Patterns and Sociopolitical Influences in the United States
---

## 1. Introduction:

**Background:**
The United States has been engaged in ongoing debates and legislative efforts surrounding LGBT rights. This study aims to investigate the potential correlation between church density, the introduction of anti-LGBT legislation, and voting patterns. The objective is to provide insights into the role religion plays in voters' morals and how it influences their political decisions.


## 2. Objectives:

The main objectives are to analyze the correlation between church density and the introduction of anti-LGBT legislation in the United States, including:
- Examine voting patterns associated with anti-LGBT legislation.
- Identify sociopolitical influences contributing to the correlation.
- Assess regional variations in church density and legislative trends.

## 3. Data Analysis:

**Data Collection:**
- Voting Patterns Data
- Anti-LGBT+ Legislation Introduced Data
- GIS Data on Places of Worship in the US

**Analysis:**
- Conduct correlation analyses between church density and anti-LGBT legislation.
- Identify significant patterns in voting records.
- Use GIS analysis to visualize regional trends.

## 4. Research Questions:

1. What is the strength and nature of the correlation between church density and the introduction of anti-LGBT legislation in the United States?
2. How do voting patterns align with church density and influence legislative outcomes?
3. What sociopolitical factors contribute to the observed correlation?
4. Are there regional variations in church density that correspond to distinct legislative trends?

## 5. Results
### Exploratory Data Analysis

![Church Density in the United States](Visualizations/US%20Church%20Density.png)
The figure above shows the density of churches within the United States. We see the majority of the United States has a higher density of churches represented by red while a low density of churches, represented by green, or prominent in urban areas. 

![Church and Voting Visualization in the United States](Visualizations/US-%20Church-%20Voting.png)
The figure above compares the density of churches with the percentage of Republican voters in each state. We can start to see a correlation between states having a low church density and a low percentage of Republican voters. 

![Pennsylvania Dashboard Visualization](Visualizations/PA%20Dashboard.png)
To further investigate this data, I used Pennsylvania as a sample state to explore the correlation on a county level within a state before analyzing the county level nationally. This visual shows a very large correlation between the presence of churches within a county and Republican voters. 

![Pennsylvania Registration Visualization](Visualizations/PA%20Reg.png)
To confirm a statistically significant relationship, I ran an OLS linear regression with the Percentage of Republican Voters as the independent variable and the density of churches as the independent variable.
The low p-value indicates high significance between the variables.

- The coefficient -0.000124 represents the estimated change in the percentage of Republican votes for a one-unit increase in the ratio of population to churches.
- The negative sign of the coefficient suggests an inverse relationship between the ratio of population to churches and the percentage of Republican votes. This means that, on average, as the population-to-churches ratio increases, the percentage of Republican votes is expected to decrease.
  
- The ratio of population to churches is the independent variable in this model. If this ratio is higher, it implies a larger population relative to the number of churches in the county.

It's important to note that correlation does not imply causation, so while there may be an association between these variables, the model does not establish a causal relationship.


## 6. Significance:

This research aims to contribute valuable insights into the factors influencing anti-LGBT legislation, helping policymakers and advocacy groups in understanding the dynamics of these decisions.
