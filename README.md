# Project-4

## Creating and optimising a Logistic Regression Model to analyse employee attrition

<em>attrition - the likelihood that an employee leaves employement, for whatever reason, voluntary or involuntary</em>

We used an employee attrition (from IBM) dataset with variety of metrics ranging from age, gender, to job involvement, salary, stock options etc., to create a logistic regression model to predict attrition.

We used a logistic regression model as our base model. We aimed to investigate optimsation by reducing the number of features we inputted into the model. We endeavoured to get the most important features by trying these methods:
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

We comapred and contrasted each of these methods to identify what was most suitable for our model.

Code sources:
* [Dataset](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset/discussion/233758)
* [Explanation of Dataset](https://inseaddataanalytics.github.io/INSEADAnalytics/groupprojects/January2018FBL/IBM_Attrition_VSS.html)
* [Model Coefficients](https://towardsdatascience.com/interpreting-coefficients-in-linear-and-logistic-regression-6ddf1295f6f1)
* [Importing from postgresql to python](https://www.tutorialspoint.com/python_data_access/python_postgresql_database_connection.htm)
