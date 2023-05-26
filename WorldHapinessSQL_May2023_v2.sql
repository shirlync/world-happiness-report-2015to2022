-- Create temporary tables for World Happiness Report 2015 to 2022
DROP Table if exists #cleaned_WHR_2015
Create Table #cleaned_WHR_2015
(
country nvarchar(255),
region nvarchar(255),
happiness_score float,
dystopia_residual float,
gdp_per_capita float,
social_support float,
healthy_life_expectancy float,
freedom_life_choices float,
generosity float,
perception_corruption float,
)

DROP Table if exists #cleaned_WHR_2016
Create Table #cleaned_WHR_2016
(
country nvarchar(255),
region nvarchar(255),
happiness_score float,
dystopia_residual float,
gdp_per_capita float,
social_support float,
healthy_life_expectancy float,
freedom_life_choices float,
generosity float,
perception_corruption float,
)

DROP Table if exists #cleaned_WHR_2017
Create Table #cleaned_WHR_2017
(
country nvarchar(255),
happiness_score float,
dystopia_residual float,
gdp_per_capita float,
social_support float,
healthy_life_expectancy float,
freedom_life_choices float,
generosity float,
perception_corruption float,
)

DROP Table if exists #cleaned_WHR_2018
Create Table #cleaned_WHR_2018
(
country nvarchar(255),
happiness_score float,
gdp_per_capita float,
social_support float,
healthy_life_expectancy float,
freedom_life_choices float,
generosity float,
perception_corruption float,
)

DROP Table if exists #cleaned_WHR_2019
Create Table #cleaned_WHR_2019
(
country nvarchar(255),
happiness_score float,
gdp_per_capita float,
social_support float,
healthy_life_expectancy float,
freedom_life_choices float,
generosity float,
perception_corruption float,
)

DROP Table if exists #cleaned_WHR_2020
Create Table #cleaned_WHR_2020
(
country nvarchar(255),
region nvarchar(255),
happiness_score float,
dystopia_residual float,
gdp_per_capita float,
social_support float,
healthy_life_expectancy float,
freedom_life_choices float,
generosity float,
perception_corruption float,
)

DROP Table if exists #cleaned_WHR_2021
Create Table #cleaned_WHR_2021
(
country nvarchar(255),
region nvarchar(255),
happiness_score float,
dystopia_residual float,
gdp_per_capita float,
social_support float,
healthy_life_expectancy float,
freedom_life_choices float,
generosity float,
perception_corruption float,
)

DROP Table if exists #cleaned_WHR_2022
Create Table #cleaned_WHR_2022
(
country nvarchar(255),
happiness_score float,
dystopia_residual float,
gdp_per_capita float,
social_support float,
healthy_life_expectancy float,
freedom_life_choices float,
generosity float,
perception_corruption float
)

-- Insert data into temporary table
Insert Into #cleaned_WHR_2015
SELECT 
	[Country] AS country
	,[Region] AS region
	,[Happiness score] AS happiness_score
	,[Dystopia Residual] AS dystopia_residual
	,[Economy (GDP per capita)] AS gdp_per_capita
	,[Family] AS social_support
	,[Health (Life Expectancy)] AS healthy_life_expectancy
	,[Freedom] AS freedom_life_choices
	,[Generosity] AS generosity
	,[Trust (Government Corruption)] AS perception_corruption
FROM [WorldHappiness2015-2022_May2023]..WHR_2015

Insert Into #cleaned_WHR_2016
SELECT 
	[Country] AS country
	,[Region] AS region
	,[Happiness score] AS happiness_score
	,[Dystopia Residual] AS dystopia_residual
	,[Economy (GDP per capita)] AS gdp_per_capita
	,[Family] AS social_support
	,[Health (Life Expectancy)] AS healthy_life_expectancy
	,[Freedom] AS freedom_life_choices
	,[Generosity] AS generosity
	,[Trust (Government Corruption)] AS perception_corruption
FROM [WorldHappiness2015-2022_May2023]..WHR_2016

Insert Into #cleaned_WHR_2017
SELECT 
	[Country] AS country
	,[Happiness#score] AS happiness_score
	,[Dystopia#Residual] AS dystopia_residual
	,[Economy##GDP#per#Capita#] AS gdp_per_capita
	,[Family] AS social_support
	,[Health##Life#Expectancy#] AS healthy_life_expectancy
	,[Freedom] AS freedom_life_choices
	,[Generosity] AS generosity
	,[Trust##Government#Corruption#] AS perception_corruption
FROM [WorldHappiness2015-2022_May2023]..WHR_2017

Insert Into #cleaned_WHR_2018
SELECT 
	[Country or region] AS country
	,[Score] AS happiness_score
	,[GDP per capita] AS gdp_per_capita
	,[Social support] AS social_support
	,[Healthy life expectancy] AS healthy_life_expectancy
	,[Freedom to make life choices] AS freedom_life_choices
	,[Generosity] AS generosity
	,[Perceptions of corruption] AS perception_corruption
FROM [WorldHappiness2015-2022_May2023]..WHR_2018

Insert Into #cleaned_WHR_2019
SELECT 
	[Country or region] AS country
	,[Score] AS happiness_score
	,[GDP per capita] AS gdp_per_capita
	,[Social support] AS social_support
	,[Healthy life expectancy] AS healthy_life_expectancy
	,[Freedom to make life choices] AS freedom_life_choices
	,[Generosity] AS generosity
	,[Perceptions of corruption] AS perception_corruption
FROM [WorldHappiness2015-2022_May2023]..WHR_2019

Insert Into #cleaned_WHR_2020
SELECT 
	[Country name] AS country
	,[Regional indicator] AS region
	,[Ladder score] AS happiness_score
	,[Dystopia + residual] AS dystopia_residual
	,[Explained by: Log GDP per capita] AS gdp_per_capita
	,[Explained by: Social support] AS social_support
	,[Explained by: Healthy life expectancy] AS healthy_life_expectancy
	,[Explained by: Freedom to make life choices] AS freedom_life_choices
	,[Explained by: Generosity] AS generosity
	,[Explained by: Perceptions of corruption] AS perception_corruption
FROM [WorldHappiness2015-2022_May2023]..WHR_2020

Insert Into #cleaned_WHR_2021
SELECT 
	[Country name] AS country
	,[Regional indicator] AS region
	,[Ladder score] AS happiness_score
	,[Dystopia + residual] AS dystopia_residual
	,[Explained by: Log GDP per capita] AS gdp_per_capita
	,[Explained by: Social support] AS social_support
	,[Explained by: Healthy life expectancy] AS healthy_life_expectancy
	,[Explained by: Freedom to make life choices] AS freedom_life_choices
	,[Explained by: Generosity] AS generosity
	,[Explained by: Perceptions of corruption] AS perception_corruption
FROM [WorldHappiness2015-2022_May2023]..WHR_2021

Insert Into #cleaned_WHR_2022
SELECT 
	Country AS country
	,[Happiness score]/1000 AS happiness_score
	,[Dystopia (1#83) + residual]/1000 AS dystopia_residual
	,[Explained by: GDP per capita]/1000 AS gdp_per_capita
	,[Explained by: Social support]/1000 AS social_support
	,REPLACE([Explained by: Healthy life expectancy], ',', '.') AS healthy_life_expectancy
	,REPLACE([Explained by: Freedom to make life choices], ',', '.') AS freedom_life_choices
	,REPLACE([Explained by: Generosity], ',', '.') AS generosity
	,REPLACE([Explained by: Perceptions of corruption], ',', '.') AS perception_corruption
FROM [WorldHappiness2015-2022_May2023]..WHR_2022

-- Alter and update data
ALTER TABLE #cleaned_WHR_2022
ADD classification nvarchar(255)

-- Updated the temporary table to change NULL to 0
UPDATE #cleaned_WHR_2022
SET happiness_score = ISNULL(happiness_score, 0),
    dystopia_residual = ISNULL(dystopia_residual, 0),
    gdp_per_capita = ISNULL(gdp_per_capita, 0),
    social_support = ISNULL(social_support, 0),
    healthy_life_expectancy = ISNULL(healthy_life_expectancy, 0),
    freedom_life_choices = ISNULL(freedom_life_choices, 0),
    generosity = ISNULL(generosity, 0),
    perception_corruption = ISNULL(perception_corruption, 0);

-- Remove 1 row with xx as country
DELETE FROM #cleaned_WHR_2022
WHERE country = 'xx';

-- Replace * in some countries
UPDATE #cleaned_WHR_2022
SET country = REPLACE(country, '*', '')
WHERE country LIKE '%*%';

-- Clean up country
UPDATE #cleaned_WHR_2015
SET country = 
    CASE 
		WHEN country = 'Swaziland' THEN 'Eswatini'
		WHEN country = 'Congo (Brazzaville)' THEN 'Congo'
		WHEN country = 'Trinidad and Tobago' THEN 'Trinidad & Tobago'
		WHEN country = 'Somaliland region' THEN 'Somalia'
    END
WHERE country IN ('Somaliland region', 'Swaziland', 'Congo (Brazzaville)', 'Trinidad and Tobago');

UPDATE #cleaned_WHR_2016
SET country = 
    CASE 
		WHEN country = 'Congo (Brazzaville)' THEN 'Congo'
		WHEN country = 'Trinidad and Tobago' THEN 'Trinidad & Tobago'
    END
WHERE country IN ('Congo (Brazzaville)', 'Trinidad and Tobago');

UPDATE #cleaned_WHR_2017
SET country = 
    CASE 
        WHEN country = 'Taiwan Province of China' THEN 'Taiwan'
        WHEN country = 'Hong Kong S.A.R., China' THEN 'Hong Kong'
		WHEN country = 'Congo (Brazzaville)' THEN 'Congo'
		WHEN country = 'Trinidad and Tobago' THEN 'Trinidad & Tobago'
    END
WHERE country IN ('Trinidad and Tobago', 'Taiwan Province of China', 'Hong Kong S.A.R., China', 'Congo (Brazzaville)');

UPDATE #cleaned_WHR_2018
SET country = 
    CASE 
        WHEN country = 'Northern Cyprus' THEN 'North Cyprus'
		WHEN country = 'Congo (Brazzaville)' THEN 'Congo'
    END
WHERE country IN ('Northern Cyprus', 'Congo (Brazzaville)');

UPDATE #cleaned_WHR_2019
SET country = 
    CASE 
        WHEN country = 'Northern Cyprus' THEN 'North Cyprus'
		WHEN country = 'North Macedonia' THEN 'Macedonia'
		WHEN country = 'Swaziland' THEN 'Eswatini'
		WHEN country = 'Congo (Brazzaville)' THEN 'Congo'
		WHEN country = 'South Sudan' THEN 'Sudan'
    END
WHERE country IN ('South Sudan', 'Northern Cyprus', 'North Macedonia', 'Swaziland', 'Congo (Brazzaville)');

UPDATE #cleaned_WHR_2020
SET country = 
    CASE 
        WHEN country = 'Taiwan Province of China' THEN 'Taiwan'
        WHEN country = 'Hong Kong S.A.R. of China' THEN 'Hong Kong'
		WHEN country = 'Swaziland' THEN 'Eswatini'
		WHEN country = 'Burundi' THEN 'Burundi'
		WHEN country = 'Congo (Brazzaville)' THEN 'Congo'
		WHEN country = 'Trinidad and Tobago' THEN 'Trinidad & Tobago'
		WHEN country = 'South Sudan' THEN 'Sudan'
    END
WHERE country IN ('South Sudan', 'Trinidad and Tobago', 'Taiwan Province of China', 'Hong Kong S.A.R. of China', 'Swaziland','Burundi', 'Congo (Brazzaville)');

UPDATE #cleaned_WHR_2021
SET country = 
    CASE 
        WHEN country = 'Taiwan Province of China' THEN 'Taiwan'
        WHEN country = 'Hong Kong S.A.R. of China' THEN 'Hong Kong'
        WHEN country = 'Eswatini, Kingdom of' THEN 'Eswatini'
		WHEN country = 'North Macedonia' THEN 'Macedonia'
		WHEN country = 'Swaziland' THEN 'Eswatini'
		WHEN country = 'Burundi' THEN 'Burundi'
		WHEN country = 'Congo (Brazzaville)' THEN 'Congo'
    END
WHERE country IN ('Burundi', 'Congo (Brazzaville)', 'Taiwan Province of China', 'Hong Kong S.A.R. of China', 'Eswatini, Kingdom of', 'North Macedonia', 'Swaziland');

UPDATE #cleaned_WHR_2022
SET country = 
    CASE 
        WHEN country = 'Taiwan Province of China' THEN 'Taiwan'
        WHEN country = 'Hong Kong S.A.R. of China' THEN 'Hong Kong'
        WHEN country = 'Eswatini, Kingdom of' THEN 'Eswatini'
		WHEN country = 'Czechia' THEN 'Czech Republic'
		WHEN country = 'North Macedonia' THEN 'Macedonia'
    END
WHERE country IN ('Taiwan Province of China', 'Hong Kong S.A.R. of China', 'Eswatini, Kingdom of', 'Czechia', 'North Macedonia');

-- Insert country unavailble in WHR 2022 from other tables
INSERT INTO #cleaned_WHR_2022 (country)
SELECT country
FROM #cleaned_WHR_2015
WHERE country NOT IN (SELECT country FROM #cleaned_WHR_2022)
UNION
SELECT country
FROM #cleaned_WHR_2016
WHERE country NOT IN (SELECT country FROM #cleaned_WHR_2022)
UNION
SELECT country
FROM #cleaned_WHR_2017
WHERE country NOT IN (SELECT country FROM #cleaned_WHR_2022)
UNION
SELECT country
FROM #cleaned_WHR_2018
WHERE country NOT IN (SELECT country FROM #cleaned_WHR_2022)
UNION
SELECT country
FROM #cleaned_WHR_2019
WHERE country NOT IN (SELECT country FROM #cleaned_WHR_2022)
UNION
SELECT country
FROM #cleaned_WHR_2020
WHERE country NOT IN (SELECT country FROM #cleaned_WHR_2022)
UNION
SELECT country
FROM #cleaned_WHR_2021
WHERE country NOT IN (SELECT country FROM #cleaned_WHR_2022)

-- Source: https://unctad.org/
-- Source: https://www.igi-global.com/dictionary/developing-countries/7401
UPDATE #cleaned_WHR_2022
SET [classification] = 'Developed'
WHERE country IN ('Andorra','Australia','Austria','Belgium','Bermuda','Bulgaria','Canada','Croatia','Cyprus','Czech Republic'
	,'Denmark','Estonia','Faroe Islands','Finland','France','Germany','Gibraltar','Greece','Greenland','Holy See'
	,'Hungary','Iceland','Ireland','Israel','Italy','Japan','Latvia','Lithuania','Luxembourg','Malta','Netherlands'
	,'New Zealand','Norway','Poland','Portugal','Romania','Saint Pierreand Miquelon','SanMarino','Slovakia','Slovenia','Spain'
	,'Sweden','Switzerland','United Kingdom','United States','South Korea')

UPDATE #cleaned_WHR_2022
SET [classification] = 'Developing'
WHERE country IN ('Syria','Puerto Rico','Zimbabwe','Tanzania','Iran','Venezuela','Georgia','Ukraine','Azerbaijan','Macedonia','Armenia','Russia','North Cyprus','Montenegro','Bosnia and Herzegovina','Belarus','Moldova','Kosovo','Kazakhstan','Serbia','Algeria','American Samoa','Anguilla','Antigua and Barbuda','Argentina','Aruba','Bahamas','Bahrain'
	,'Barbados','Belize','Plurinational State of Bolivia','Bonaire','Sint Eustatius and Saba','Botswana','Bouvet Island'
	,'Brazil','British','Indian Ocean Territory','British Virgin Islands','Brunei Darussalam','Cabo Verde'
	,'Cameroon','Cayman Islands','Chile','China','Hong Kong','Macao','Taiwan','Colombia','Congo','Cook Islands'
	,'Costa Rica','Côte d’Ivoire','Cuba','Curaçao','Dominica','Dominican Republic','Ecuador','Egypt','El Salvador'
	,'Equatorial Guinea','Eswatini','Falkland Islands (Malvinas)','Fiji','French Polynesia','French Southern Territories'
	,'Gabon','Ghana','Grenada','Guam','Guatemala','Guyana','Honduras','India','Indonesia','Islamic Republic of Iran'
	,'Iraq','Jamaica','Jordan','Kenya','Democratic People’s Republic of Korea','Republic of Korea','Kuwait','Lebanon'
	,'Libya','Malaysia','Maldives','Marshall','Islands','Mauritius','Mexico','Federated States of Micronesia','Mongolia'
	,'Montserrat','Morocco','Namibia','Nauru','Netherlands Antilles','New Caledonia','Nicaragua','Nigeria','Niue'
	,'Northern Mariana Islands','Oman','Pacific Islands','Trust Territory','Pakistan','Palau','Panama','Papua New Guinea'
	,'Paraguay','Peru','Philippines','Pitcairn','Qatar','Saint','Barthélemy','Saint Helena','Saint Kitts and Nevis'
	,'Saint Lucia','Saint Martin (French part)','Saint Vincent and the','Grenadines','Samoa','Saudi Arabia'
	,'Seychelles','Singapore','Sint Maarten (Dutch part)','South Africa','South Georgia','South Sandwich Islands','Sri Lanka'
	,'State of Palestine','Suriname','Syrian Arab Republic','Thailand','Tokelau','Tonga','Trinidad & Tobago','Tunisia'
	,'Turkey','Turks and Caicos Islands','United Arab Emirates','Minor Outlying Islands','Uruguay','Bolivarian Republic of Venezuela'
	,'Vietnam','Wallis and Futuna Islands','Western Sahara')

UPDATE #cleaned_WHR_2022
SET [classification] = 'Underdeveloped'
WHERE country IN ('Palestinian Territories','Benin','Laos','Albania','Ivory Coast','Tajikistan','Turkmenistan','Bolivia','Kyrgyzstan','Uzbekistan','Afghanistan','Angola','Bangladesh','Benin Republic','Bhutan','Burkina Faso','Burundi','Cambodia'
	,'Central African Republic','Chad','Comoros','Congo','Djibouti','Eritrea','Ethiopia','Gambia','Guinea','Guinea-Bissau'
	,'Haiti','Kiribati','Lao People’s Democratic Republic','Lesotho','Liberia','Madagascar','Malawi','Mali','Mauritania'
	,'Mozambique','Myanmar','Nepal','Niger','Rwanda','Sao Tome and Principe','Senegal','Sierra Leone','Solomon Islands'
	,'Somalia','South Sudan','Sudan','Timor-Leste','Togo','Tuvalu','Uganda','United Republic of Tanzania'
	,'Yemen','Zambia')

UPDATE #cleaned_WHR_2022
SET [classification] = 'Underdeveloped'
WHERE country IN ('Palestinian Territories','Benin','Laos','Albania','Ivory Coast','Tajikistan','Turkmenistan','Bolivia','Kyrgyzstan','Uzbekistan','Afghanistan','Angola','Bangladesh','Benin Republic','Bhutan','Burkina Faso','Burundi','Cambodia'
	,'Central African Republic','Chad','Comoros','Congo','Djibouti','Eritrea','Ethiopia','Gambia','Guinea','Guinea-Bissau'
	,'Haiti','Kiribati','Lao People’s Democratic Republic','Lesotho','Liberia','Madagascar','Malawi','Mali','Mauritania'
	,'Mozambique','Myanmar','Nepal','Niger','Rwanda','Sao Tome and Principe','Senegal','Sierra Leone','Solomon Islands'
	,'Somalia','South Sudan','Sudan','Timor-Leste','Togo','Tuvalu','Uganda','United Republic of Tanzania'
	,'Yemen','Zambia')

-- To calculate average of congo
UPDATE #cleaned_WHR_2015
SET happiness_score = (SELECT AVG(happiness_score)
             FROM #cleaned_WHR_2015
             WHERE country IN ('Congo', 'Congo (Kinshasa)')
            )
WHERE country = 'Congo';

UPDATE #cleaned_WHR_2016
SET happiness_score = (SELECT AVG(happiness_score)
             FROM #cleaned_WHR_2016
             WHERE country IN ('Congo', 'Congo (Kinshasa)')
            )
WHERE country = 'Congo';

UPDATE #cleaned_WHR_2016
SET happiness_score = (SELECT AVG(happiness_score)
             FROM #cleaned_WHR_2016
             WHERE country IN ('Somalia', 'Somaliland region')
            )
WHERE country = 'Somalia';

UPDATE #cleaned_WHR_2016
SET happiness_score = (SELECT AVG(happiness_score)
             FROM #cleaned_WHR_2016
             WHERE country IN ('South Sudan', 'Sudan')
            )
WHERE country = 'Sudan';

UPDATE #cleaned_WHR_2017
SET happiness_score = (SELECT AVG(happiness_score)
             FROM #cleaned_WHR_2017
             WHERE country IN ('Congo', 'Congo (Kinshasa)')
            )
WHERE country = 'Congo';

UPDATE #cleaned_WHR_2017
SET happiness_score = (SELECT AVG(happiness_score)
             FROM #cleaned_WHR_2017
             WHERE country IN ('South Sudan', 'Sudan')
            )
WHERE country = 'Sudan';

UPDATE #cleaned_WHR_2018
SET happiness_score = (SELECT AVG(happiness_score)
             FROM #cleaned_WHR_2018
             WHERE country IN ('Congo', 'Congo (Kinshasa)')
            )
WHERE country = 'Congo';

UPDATE #cleaned_WHR_2018
SET happiness_score = (SELECT AVG(happiness_score)
             FROM #cleaned_WHR_2018
             WHERE country IN ('South Sudan', 'Sudan')
            )
WHERE country = 'Sudan';

UPDATE #cleaned_WHR_2019
SET happiness_score = (SELECT AVG(happiness_score)
             FROM #cleaned_WHR_2019
             WHERE country IN ('Congo', 'Congo (Kinshasa)')
            )
WHERE country = 'Congo';

UPDATE #cleaned_WHR_2020
SET happiness_score = (SELECT AVG(happiness_score)
             FROM #cleaned_WHR_2020
             WHERE country IN ('Congo', 'Congo (Kinshasa)')
            )
WHERE country = 'Congo';

-- After calculating the average, delete Congo (Kinshasa) from the tables
DELETE FROM #cleaned_WHR_2022
WHERE country = 'Congo (Kinshasa)'

DELETE FROM #cleaned_WHR_2022
WHERE country = 'Trinidad and Tobago'

DELETE FROM #cleaned_WHR_2022
WHERE country = 'Somaliland region'

DELETE FROM #cleaned_WHR_2022
WHERE country = 'South Sudan'

-- Exploratory data analysis
SELECT 
	wh15.country AS country_15
	,wh16.country AS country_16
	,wh17.country AS country_17
	,wh18.country AS country_18
	,wh19.country AS country_19
	,wh20.country AS country_20
	,wh21.country AS country_21
	,wh22.country AS country_22
FROM #cleaned_WHR_2022 wh22
FULL JOIN #cleaned_WHR_2021 wh21 
	ON wh22.country = wh21.country
FULL JOIN #cleaned_WHR_2020 wh20
	ON wh22.country = wh20.country
FULL JOIN #cleaned_WHR_2019 wh19
	ON wh22.country = wh19.country
FULL JOIN #cleaned_WHR_2018 wh18
	ON wh22.country = wh18.country
FULL JOIN #cleaned_WHR_2017 wh17
	ON wh22.country = wh17.country
FULL JOIN #cleaned_WHR_2016 wh16
	ON wh22.country = wh16.country
FULL JOIN #cleaned_WHR_2015 wh15
	ON wh22.country = wh15.country
ORDER BY 1 ASC

--Happiness score by each country
SELECT 
	wh22.country
	,wh15.happiness_score AS happyscore_15
	,wh16.happiness_score AS happyscore_16
	,wh17.happiness_score AS happyscore_17
	,wh18.happiness_score AS happyscore_18
	,wh19.happiness_score AS happyscore_19
	,wh20.happiness_score AS happyscore_20
	,wh21.happiness_score AS happyscore_21
	,wh22.happiness_score AS happyscore_22
FROM #cleaned_WHR_2022 wh22
FULL JOIN #cleaned_WHR_2021 wh21 
	ON wh22.country = wh21.country
FULL JOIN #cleaned_WHR_2020 wh20
	ON wh22.country = wh20.country
FULL JOIN #cleaned_WHR_2019 wh19
	ON wh22.country = wh19.country
FULL JOIN #cleaned_WHR_2018 wh18
	ON wh22.country = wh18.country
FULL JOIN #cleaned_WHR_2017 wh17
	ON wh22.country = wh17.country
FULL JOIN #cleaned_WHR_2016 wh16
	ON wh22.country = wh16.country
FULL JOIN #cleaned_WHR_2015 wh15
	ON wh22.country = wh15.country
WHERE wh22.country IS NOT NULL

-- Happiness score by classification
SELECT 
	wh22.[classification]
	,AVG(wh15.happiness_score) as avghappyscore_15
	,AVG(wh16.happiness_score) as avghappyscore_16
	,AVG(wh17.happiness_score) as avghappyscore_17
	,AVG(wh18.happiness_score) as avghappyscore_18
	,AVG(wh19.happiness_score) as avghappyscore_19
	,AVG(wh20.happiness_score) as avghappyscore_20
	,AVG(wh21.happiness_score) as avghappyscore_21
	,AVG(wh22.happiness_score) as avghappyscore_22
FROM #cleaned_WHR_2022 wh22
FULL JOIN #cleaned_WHR_2021 wh21 
	ON wh22.country = wh21.country
FULL JOIN #cleaned_WHR_2020 wh20
	ON wh22.country = wh20.country
FULL JOIN #cleaned_WHR_2019 wh19
	ON wh22.country = wh19.country
FULL JOIN #cleaned_WHR_2018 wh18
	ON wh22.country = wh18.country
FULL JOIN #cleaned_WHR_2017 wh17
	ON wh22.country = wh17.country
FULL JOIN #cleaned_WHR_2016 wh16
	ON wh22.country = wh16.country
FULL JOIN #cleaned_WHR_2015 wh15
	ON wh22.country = wh15.country
WHERE wh22.country IS NOT NULL
GROUP BY wh22.[classification]

DROP Table if exists combined_classification
CREATE TABLE combined_classification (
	year int,
	classification nvarchar(255),
	happiness_score float,
)

INSERT INTO combined_classification (year, [classification], happiness_score)
SELECT
	2015
	,wh22.[classification]
	,AVG(wh15.happiness_score)
FROM #cleaned_WHR_2022 wh22
FULL JOIN #cleaned_WHR_2015 wh15
	ON wh22.country = wh15.country
GROUP BY wh22.[classification]

INSERT INTO combined_classification (year, [classification], happiness_score)
SELECT
	2016
	,wh22.[classification]
	,AVG(wh16.happiness_score)
FROM #cleaned_WHR_2022 wh22
FULL JOIN #cleaned_WHR_2016 wh16
	ON wh22.country = wh16.country
GROUP BY wh22.[classification]

INSERT INTO combined_classification (year, [classification], happiness_score)
SELECT
	2017
	,wh22.[classification]
	,AVG(wh17.happiness_score)
FROM #cleaned_WHR_2022 wh22
FULL JOIN #cleaned_WHR_2017 wh17
	ON wh22.country = wh17.country
GROUP BY wh22.[classification]

INSERT INTO combined_classification (year, [classification], happiness_score)
SELECT
	2018
	,wh22.[classification]
	,AVG(wh18.happiness_score)
FROM #cleaned_WHR_2022 wh22
FULL JOIN #cleaned_WHR_2018 wh18
	ON wh22.country = wh18.country
GROUP BY wh22.[classification]

INSERT INTO combined_classification (year, [classification], happiness_score)
SELECT
	2019
	,wh22.[classification]
	,AVG(wh19.happiness_score)
FROM #cleaned_WHR_2022 wh22
FULL JOIN #cleaned_WHR_2019 wh19
	ON wh22.country = wh19.country
GROUP BY wh22.[classification]

INSERT INTO combined_classification (year, [classification], happiness_score)
SELECT
	2020
	,wh22.[classification]
	,AVG(wh20.happiness_score)
FROM #cleaned_WHR_2022 wh22
FULL JOIN #cleaned_WHR_2020 wh20
	ON wh22.country = wh20.country
GROUP BY wh22.[classification]

INSERT INTO combined_classification (year, [classification], happiness_score)
SELECT
	2021
	,wh22.[classification]
	,AVG(wh21.happiness_score)
FROM #cleaned_WHR_2022 wh22
FULL JOIN #cleaned_WHR_2021 wh21
	ON wh22.country = wh21.country
GROUP BY wh22.[classification]

INSERT INTO combined_classification (year, [classification], happiness_score)
SELECT
	2022
	,[classification]
	,AVG(wh22.happiness_score)
FROM #cleaned_WHR_2022 wh22
GROUP BY [classification]

SELECT *
FROM combined_classification
WHERE happiness_score IS NOT NULL and [classification] IS NOT NULL

-- Happiness score within Malaysia neighbouring countries (ASEAN)
SELECT 
	wh22.country
	,wh15.happiness_score AS happyscore_15
	,wh16.happiness_score AS happyscore_16
	,wh17.happiness_score AS happyscore_17
	,wh18.happiness_score AS happyscore_18
	,wh19.happiness_score AS happyscore_19
	,wh20.happiness_score AS happyscore_20
	,wh21.happiness_score AS happyscore_21
	,wh22.happiness_score AS happyscore_22
FROM #cleaned_WHR_2022 wh22
FULL JOIN #cleaned_WHR_2021 wh21 
	ON wh22.country = wh21.country
FULL JOIN #cleaned_WHR_2020 wh20
	ON wh22.country = wh20.country
FULL JOIN #cleaned_WHR_2019 wh19
	ON wh22.country = wh19.country
FULL JOIN #cleaned_WHR_2018 wh18
	ON wh22.country = wh18.country
FULL JOIN #cleaned_WHR_2017 wh17
	ON wh22.country = wh17.country
FULL JOIN #cleaned_WHR_2016 wh16
	ON wh22.country = wh16.country
FULL JOIN #cleaned_WHR_2015 wh15
	ON wh22.country = wh15.country
WHERE wh22.country IN ('malaysia','singapore','indonesia','vietnam','philippines','thailand')

-- Identifying which factors have the highest influence against happiness score (through python)
DROP Table if exists combined_data
CREATE TABLE combined_data (
	year int,
	country nvarchar(255),
	happiness_score float,
	gdp_per_capita float,
	social_support float,
	healthy_life_expectancy float,
	freedom_life_choices float,
	generosity float,
	perception_corruption float,
)

INSERT INTO combined_data (year, country, happiness_score, gdp_per_capita, social_support, healthy_life_expectancy, freedom_life_choices, generosity, perception_corruption)
SELECT 2015, country, happiness_score, gdp_per_capita, social_support, healthy_life_expectancy, freedom_life_choices, generosity, perception_corruption
FROM #cleaned_WHR_2015

INSERT INTO combined_data (year, country, happiness_score, gdp_per_capita, social_support, healthy_life_expectancy, freedom_life_choices, generosity, perception_corruption)
SELECT 2016, country, happiness_score, gdp_per_capita, social_support, healthy_life_expectancy, freedom_life_choices, generosity, perception_corruption
FROM #cleaned_WHR_2016

INSERT INTO combined_data (year, country, happiness_score, gdp_per_capita, social_support, healthy_life_expectancy, freedom_life_choices, generosity, perception_corruption)
SELECT 2017, country, happiness_score, gdp_per_capita, social_support, healthy_life_expectancy, freedom_life_choices, generosity, perception_corruption
FROM #cleaned_WHR_2017

INSERT INTO combined_data (year, country, happiness_score, gdp_per_capita, social_support, healthy_life_expectancy, freedom_life_choices, generosity, perception_corruption)
SELECT 2018, country, happiness_score, gdp_per_capita, social_support, healthy_life_expectancy, freedom_life_choices, generosity, perception_corruption
FROM #cleaned_WHR_2018

INSERT INTO combined_data (year, country, happiness_score, gdp_per_capita, social_support, healthy_life_expectancy, freedom_life_choices, generosity, perception_corruption)
SELECT 2019, country, happiness_score, gdp_per_capita, social_support, healthy_life_expectancy, freedom_life_choices, generosity, perception_corruption
FROM #cleaned_WHR_2019

INSERT INTO combined_data (year, country, happiness_score, gdp_per_capita, social_support, healthy_life_expectancy, freedom_life_choices, generosity, perception_corruption)
SELECT 2020, country, happiness_score, gdp_per_capita, social_support, healthy_life_expectancy, freedom_life_choices, generosity, perception_corruption
FROM #cleaned_WHR_2020

INSERT INTO combined_data (year, country, happiness_score, gdp_per_capita, social_support, healthy_life_expectancy, freedom_life_choices, generosity, perception_corruption)
SELECT 2021, country, happiness_score, gdp_per_capita, social_support, healthy_life_expectancy, freedom_life_choices, generosity, perception_corruption
FROM #cleaned_WHR_2021

INSERT INTO combined_data (year, country, happiness_score, gdp_per_capita, social_support, healthy_life_expectancy, freedom_life_choices, generosity, perception_corruption)
SELECT 2022, country, happiness_score, gdp_per_capita, social_support, healthy_life_expectancy, freedom_life_choices, generosity, perception_corruption
FROM #cleaned_WHR_2022

-- To add score_group for pair plot chart in python
ALTER TABLE combined_data
ADD [score_grp] nvarchar(255)

WITH percentile_values AS (
  SELECT 
    PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY happiness_score) OVER () AS p25,
    PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY happiness_score) OVER () AS p50,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY happiness_score) OVER () AS p75
  FROM combined_data
)
UPDATE combined_data
SET [score_grp] = 
  CASE
    WHEN happiness_score < p25 THEN 'Low'
    WHEN happiness_score >= p25 AND happiness_score < p50 THEN 'Mid-Low'
    WHEN happiness_score >= p50 AND happiness_score < p75 THEN 'Mid-Top'
    WHEN happiness_score >= p75 THEN 'Top'
  END
FROM percentile_values;


SELECT *
FROM combined_data
WHERE happiness_score IS NOT NULL


	