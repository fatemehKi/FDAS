# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import pandas as pd
import matplotlib.pyplot as plt


df = pd.read_csv('weight-height.csv')


df.corr()
df = df.drop('Gender',axis=1)
df.corrwith(df['Height'])


#scatter plot of two variables
plt.scatter(df.Height,df.Weight)
plt.xlabel('Height')
plt.ylabel('Weight')
plt.title("Scatterplot of Height vs Weight")
plt.show()


df2 = pd.read_table('bldgstories.txt',delim_whitespace=True)

import seaborn as sns

corr = df2.corr()

sns.heatmap(corr,annot=True)



















