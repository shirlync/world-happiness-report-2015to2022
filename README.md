# World Happiness Report (2015 to 2022)
- Source of Dataset: Kaggle (https://www.kaggle.com/datasets/mathurinache/world-happiness-report)
- Data cleaning: Microsoft SQL
- EDA & Data visualization: Power BI & Python

# Explanation of the Happiness Report
- Country – Name of the Country
- Happiness score – A metric measured by asking respondents the question, "How would you rate your happiness on a scale of 0 to 10 where 10 is the happiest?"
- GDP per capita – The extent to which GDP contributes to the Happiness Score
- Social support - The extent to which Social / Family contributes to the Happiness Score
- Health (Life Expectancy) – The extent to which Life expectancy contributed to the Happiness Score
- Freedom of life choice – The extent to which Freedom in life choice contributed to the Happiness Score
- Trust (Perception towards Government Corruption) – The extent to which Perception of Corruption contributes to the Happiness Score

# Analysis of the Happiness Report
#### Data Cleaning in SQL:
- Creating temporary table to avoid from editting the raw data
- Replacing null values with 0
- Added new column, country classification: Developed, Developing and Underdeveloped country
- Cleaning up countries

#### Findings: Exploratory Data Analysis & Visualization from the Analysis:
- For the past 8 years, the average of happiness score globally is fairly consistent at 5.4 point and gradually grew by 0.1 point in 2019 (5.5 point) and 2022 (5.6 point).
- Scandinavian countries (e.g. Finland, Denmark, Switzerland, Iceland, Norway etc) seems to be happiest countries scoring one the highest points among 150+ countries. 
Unsurprisingly, developed countries where they were deemed to have better quality of life, economy and governance score higher happiness score. Developing countries scored 
about 1.0 point lower, followed by Underdeveloped countries. 
- Malaysia, my home country's happiness score were one of the lowest among ASEAN countries (Singapore, Thailand, Indonesia, Vietnam and Phillipines). It fell drastically from 
6.3 to 5.3 point, largely affected by Social support and Trustworthiness towards the Government. The score gradually grew subsequently, but was still far off from the score in 2018.
<img width="638" alt="image" src="https://github.com/shirlync/world-happiness-report-2015to2022/assets/113419639/063eb904-092a-41cc-9951-5bd57067f974">
<br/>


<br/>
- Further analysis in Python: I would also like to know which factors are influencing the happiness score. Hence, I used Seaborn library to create heatmap, and from there, 
I noticed that GDP of the country, Health and Life expectancy are 2 factors that greatly impact the score, which is in line with Developed country scoring the higher happiness score.
Utilizing pairplot, I look at the relationship between the metrics and happiness score as well. Similar to the heatmap, GDP and Health/Life expectancy have a linear relationship with happiness score though there are few outliers.
<br/>
<img width="505" alt="image" src="https://github.com/shirlync/world-happiness-report-2015to2022/assets/113419639/39c0a29e-df19-4cab-9590-fbe14e8152f2">
<br/>
<img width="377" alt="image" src="https://github.com/shirlync/world-happiness-report-2015to2022/assets/113419639/c9285579-e83c-41b2-bc2f-55e85216cafc">



#### Limitation/ Issues of the Analysis:
- The metrics used to measure citizen happiness within their country seems to skew towards developed countries. For instance, GDP, Health and Freedom. Naturally, developed 
countries would have higher GDP, better health support for their citizens and citizens have more freedom to make life choices. I felt we can't just say people living in Developed
countries are happier, and people in Developing countries are least happy. The metrics may have misrepresent the people's true feelings of their countries.


