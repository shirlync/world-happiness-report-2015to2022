#!/usr/bin/env python
# coding: utf-8

# # Imports libraries 

# In[20]:


import numpy as np
import pandas as pd
import seaborn as sb
import matplotlib.pyplot as plt
import plotly.express as px
import plotly.graph_objects as go
from plotly import __version__ as pvm


# #  Reads data cleaned through SQL

# In[42]:


rpt = pd.read_csv('C:\\Users\\shirl\\OneDrive\\Desktop\\MS SQL\\WorldHappinessRpt_May2023\\Happiness Report_2015 to 2022 (cleaned) with score_grp.csv')


# In[43]:


rpt.head()


# In[44]:


print('Missing Value Counts for Each Column\n' + '='*36)

print(rpt.isnull().sum())

# Since there is only 1 missing data in perception corruption, the row will not be removed 


# In[45]:


rpt.describe()


# # To identify factors that correlate to happiness

# In[46]:


plt.rcParams['figure.figsize'] = (15, 10)
plt.rcParams.update({'font.size': 13})

sb.set(font_scale = 1.5)
sb.set_style(style='white')

sb.heatmap(rpt.corr(numeric_only=True), annot=True, linewidth=1).set_title('Annotated Correlation Matrix of Combined Dataset')


# In[47]:


fig = plt.figure()
fig.set_size_inches(12, 12)
sb.set(font_scale = 1.25)

sb.pairplot(rpt,hue='score_grp').fig.suptitle("Birds Eye of View of Column Distributions and Correlations", y=1.01)

