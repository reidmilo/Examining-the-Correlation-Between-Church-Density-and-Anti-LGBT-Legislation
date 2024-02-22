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

**I used two methods for data analysis:**
1. The first method utilized the Places of Worship GIS dataset, which provides location data for each church or place of worship in the United States using IRS tax forms. The number of churches is summed up at the county or state level and then merged with census population data from 2020. I divided the population by the number of churches to create a person-to-church ratio, assessing church density and religious presence in a community.

2. The second method involved using data from the US Religious Census of 2020. This census, conducted by the Association of Statisticians of American Religious Bodies every 10 years, gathers information about churches and religious practices within the United States. While this data does not provide GIS information about the location of churches, it breaks down data by each county in the United States. The key variable from the dataset was Adherents as a percentage of the total population, which was summed up to determine the percentage of each county's population belonging to a church.

**Data Collection:**
- Voting Patterns Data on the 2020 Presidential election from the [MIT Election Data + Science Lab](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/VOQCHQ)
- Anti-LGBT+ Legislation Introduced Data from the ACLU [Mapping Attacks on LGBTQ Rights in U.S. State Legislatures in 2023](https://www.aclu.org/legislative-attacks-on-lgbtq-rights-2023?state=)
- GIS Data on [All Places of Worship](https://hifld-geoplatform.opendata.arcgis.com/404)
- 2020 [US Religious Census](https://www.usreligioncensus.org/)


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

###  All Places of Worship GIS Data

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

#### US Religous Census

![US - State](/Visualizations/US-%20Chruch-V0tes.png)
The figure above illustrates the percentage of people attending church in each county compared to the percentage of Republican voters in the 2020 election for that county.

![US - State](/Visualizations/States-%20Church%20to%20Votes.png)
The figure above consolidates the same data at the state level rather than the county level to present a statewide perspective.

![US - State](/Visualizations/States%20-%20church%20-%20bills.png)
The figure above currently juxtaposes the percentage of churchgoers in a population with the number of anti-LGBT bills introduced by each state in 2023. This reveals a distinct correlation between religious influence and the introduction of anti-LGBT bills.


To establish statistical significance, a bivariate Ordinary Least Squares (OLS) regression was conducted, with the number of anti-LGBT bills introduced as the independent variable and the percentage of the population attending church as the dependent variable. The regression output and plot are presented below.

![OLS Summary](/Visualizations/Regression%20Summary.png)
![OLS Plot](/Visualizations/OLS%20Plot.png)




The variable shows a significant value with a p-value < 0.001%, providing confirmation that the variables are not random.



## 6. Significance:

**Religious Institutions:** A negative correlation between certain religious beliefs and support for anti-LGBT legislation may lead to increased scrutiny and potential reputational damage.

**Political Leaders and Policymakers:** Understanding the religious influence on voting patterns can help policymakers make more informed decisions regarding anti-LGBT legislation. They may need to balance one’s beliefs with the principles of equality and human rights.

**LGBTQ+ Advocacy Groups:** Findings could guide advocacy groups in strategizing and targeting their efforts. If there is a strong religious correlation with anti-LGBT sentiment, these groups may need to focus on outreach and education within religious communities.

**Community Members/Voters:** Raise public consciousness about the connection between religion, voting choices, and social issues. It could also encourage open dialogues within the community about diversity and acceptance.

**Media and Public Perception:** The media's interpretation and reporting of the study can influence public perception. It is crucial for the media to present the findings accurately and avoid perpetuating stereotypes or stigmatizing any group.

**Legal and Human Rights Organizations:** If the study reveals a connection between religious beliefs and discriminatory legislation, it may prompt legal and human rights organizations to challenge such laws on constitutional or human rights grounds.

