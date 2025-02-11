-- Overall survival rate
SELECT
	COUNT(*) AS total_passengers
	SUM(Survived) AS survivors,
	ROUND((SUM(Survived) * 100 / COUNT(*)), 2) AS survival_rate 
FROM passengers;

-- Survival rate by ticket class
SELECT Pclass,
	COUNT(*) AS Total_Passengers,
	SUM(Survived) AS Survivors,
	ROUND((SUM(Survived) * 100 / COUNT(*)), 2) AS Survival_Rate 
FROM passengers
GROUP BY Pclass;

-- Average fare by ticket class (to reinforce the socio-economic distinction between the classes)

SELECT Pclass,
	AVG(Fare) AS Average_Fare
FROM passengers 
GROUP BY Pclass;

-- Survival rate by gender
SELECT Sex,
	COUNT(*) AS Total_Passengers,
	SUM(Survived) AS Survivors,
	ROUND((SUM(Survived) * 100 / COUNT(*)), 2) AS Survival_Rate 
FROM passengers
GROUP BY Sex;

-- Age grouping: survival rates for children (under 18) compared to adults (18 and above)
SELECT CASE,
		WHEN Age < 18 THEN ‘Child’ 
		ELSE ‘Adult’
	END AS Age_Group,
	COUNT(*) AS Total_Passengers,
	SUM(Survived) AS Survivors,
	ROUND((SUM(Survived) * 100 / COUNT(*)), 2) AS Survival_Rate
FROM passengers 
GROUP BY Age_Group;

-- Survival rate for women and children combined
SELECT CASE,
		WHEN Sex = ‘female’ OR Age < 18 THEN ‘Women & Children’ 
		ELSE ‘Men & Adults’
	END AS Category,
	COUNT(*) AS Total_Passengers,
	SUM(Survived) AS Survivors,
	ROUND((SUM(Survived) * 100 / COUNT(*)), 2) AS Survival_Rate
FROM passengers 
GROUP BY Category;

-- Survival rate for passengers who boarded alone and passengers who boarded with at least one relative
SELECT CASE,
		WHEN SibSp = 0 AND Parch = 0 THEN ‘Aboard Alone’ 
		ELSE ‘Aboard With Relatives’
	END AS Classification,
	COUNT(*) AS Total_Passengers,
	SUM(Survived) AS Survivors,
	ROUND((SUM(Survived) * 100 / COUNT(*)), 2) AS Survival_Rate
FROM passengers 
GROUP BY Classification
