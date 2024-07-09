-- Drop table if exists
DROP TABLE attrition;

-- Create new table
CREATE TABLE attrition (
	Age INT,
	Attrition VARCHAR(3),
	BusinessTravel VARCHAR(30),
	DailyRate INT,
	Department VARCHAR(30),
	DistanceFromHome INT,
	Education INT,
	EducationField VARCHAR(30),
	EmployeeCount INT,
	EmployeeNumber INT,
	EnvironmentSatisfaction INT,
	Gender VARCHAR(6),	
	HourlyRate INT,	
	JobInvolvement INT,
	JobLevel VARCHAR(30),
	JobRole VARCHAR(30),
	JobSatisfaction INT,
	MaritalStatus VARCHAR(10),
	MonthlyIncome INT,
	MonthlyRate INT,
	NumCompaniesWorked INT,
	Over18 VARCHAR(1),
	OverTime VARCHAR(3),
	PercentSalaryHike INT,
	PerformanceRating INT,
	RelationshipSatisfaction INT,
	StandardHours INT,
	StockOptionLevel INT,
	TotalWorkingYears INT,
	TrainingTimesLastYear INT,
	WorkLifeBalance INT,
	YearsAtCompany INT,
	YearsInCurrentRole INT,
	YearsSinceLastPromotion INT,
	YearsWithCurrManager INT
);

-- View table columns and datatypes
SELECT * FROM attrition;