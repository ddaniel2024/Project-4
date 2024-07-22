# Project-4

## Creating and optimising a Logistic Regression Model to analyse employee attrition

<em>attrition - the likelihood that an employee leaves employement, for whatever reason, voluntary or involuntary</em>

Attrition levels in the UK are close to 20%, which is the maximum threshold for company efficacy. In our project, we aim to investigate factors that are likely to effect attrition, as well as create a Logistic Regression model that is able to accurately predict employee attrition given a range of backgorund variables.

We used an employee attrition dataset (from IBM, sourced via Kaggle) with variety of metrics ranging from age, gender, to job involvement, salary, stock options etc., to create a logistic regression model to predict attrition.

## Step 1
Data was imported from SQL via the psycopg2 module.

## Step 2 
We executed a SQL query with Python and then converted the result into a dataframe with PANDAS, for further analysis and processing with Python. Target (Attrition) and features (all other columns) were identified, and the dataset was cleaned by removing all redundant columns. Outliers were looked for in relevant columns but none were found.

## Step 3 
We created a Logistic Regression model to use to analyse attrition, and as a base for further optimisation.

## Step 4
We aimed to investigate optimsation by reducing the number of features we inputted into the model. We endeavoured to get the most important features by trying these methods:
* Correlation Analysis
   * Discerning how strong the correlation is between attrition and other features, using only the strongest features in our model.
* Permutations
   * Using permutation analysis: shuffling the records in 1 feature and seeing if there is an impact on accuracy. If there is a significant change in accuracy, then the feature is important.
* RFE (Recursive Feature Elimination)
   * Repeatedly eliminating the least important feature until we get our desired number of features for analysis.
* Further pre-processing
   * Enhancing the pre-processing process by droppign more columns etc.
* Comparing Model Coefficients
   * Obtaining the most important features by looking at the absolute weights of the model coefficients.

## Step 5
We comapred and contrasted each of these methods to identify what was most suitable for our model. Our base model had an accuracy score of 83%, and was almost perfect recall. As for optimisation, we found that RFE provided the highest accuracy, with 85%, however, other methods came quite close.

We did observe some limitations and possible enhancements to some of our methods:
* Correlation analysis performed fairly well, but correlation does not necessarily signify causation; we would be getting an accurate result but trying to apply the model in real life and use the highlighted features to address employee attrition may not be successful.
* The coefficient analysis model had a score of 0% in both precision and recall for “no attrition” but high scores for “yes” attrition, but it misidentifies the “no attrition” employees.
* Permutation importance and RFE both use iterative methods when they run. We set the number of iterations to 100 as a standard. More iterations could provide more accurate results, but would take up more time.
* We attempted to combine further pre-processing with RFE but the result ended up with the same accuracy; combining other methods to reduce the number of features may also be a potential future target.
* Binning data – We had a lot of features - although used to reduce errors, it may get complicated based on the dataset we have got.

## Appendix
Code sources:
* [Dataset](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset/discussion/233758)
* [Explanation of Dataset](https://inseaddataanalytics.github.io/INSEADAnalytics/groupprojects/January2018FBL/IBM_Attrition_VSS.html)
* [Model Coefficients](https://towardsdatascience.com/interpreting-coefficients-in-linear-and-logistic-regression-6ddf1295f6f1)
* [Importing from postgresql to python](https://www.tutorialspoint.com/python_data_access/python_postgresql_database_connection.htm)
