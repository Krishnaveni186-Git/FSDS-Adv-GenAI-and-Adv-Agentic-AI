import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

dataset = pd.read_csv(r'C:\Users\user\FSDS_Adv_Gene_AI_&Agentic_AI\Machine Learning\Regression\MLR_Model\Investment.csv')

x = dataset.iloc[:, :-1]
y = dataset.iloc[:, 4]

x = pd.get_dummies(x,dtype = int)

from sklearn.model_selection import train_test_split
from sklearn.model_selection import train_test_split

x_train, x_test, y_train, y_test = train_test_split(
    x, y, test_size=0.2, random_state=0
)

from sklearn.linear_model import LinearRegression
regressor = LinearRegression()
regressor.fit(x_train, y_train)

y_pred = regressor.predict(x_test)

#== we build mlr model 

m = regressor.coef_
print(m)

c = regressor.intercept_
print(c)

x = np.append(arr = np.full((50, 1), 42467).astype(int), values = x, axis = 1)

import statsmodels.api as sm
x_opt = x[:,[0,1,2,3,4,5]]

# Ordinary least square
regressor_OLS = sm.OLS(endog=y, exog=x_opt).fit()
regressor_OLS.summary()

import statsmodels.api as sm
x_opt = x[:,[0,1,2,3,4]]

# Ordinary least square
regressor_OLS = sm.OLS(endog=y, exog=x_opt).fit()
regressor_OLS.summary()

import statsmodels.api as sm
x_opt = x[:,[0,1,2,3]]

# Ordinary least square
regressor_OLS = sm.OLS(endog=y, exog=x_opt).fit()
regressor_OLS.summary()

import statsmodels.api as sm
x_opt = x[:,[0,1,2]]

# Ordinary least square
regressor_OLS = sm.OLS(endog=y, exog=x_opt).fit()
regressor_OLS.summary()
 
import statsmodels.api as sm
x_opt = x[:,[0,1]]

# Ordinary least square
regressor_OLS = sm.OLS(endog=y, exog=x_opt).fit()
regressor_OLS.summary()
 
bias = regressor.score(x_train, y_train)
bias
 
variance = regressor.score(x_test, y_test)
variance