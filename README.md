# Project-4

ELECTRICITY CONSUMPTION: TRANSITION TO RENEWABLES AND KEY INFLUENCING FACTORS

Group Members: Mohsen Farrokhrouz, Shweta Jain, Oliver King

Research Questions:
    1. Will renewable sources account for more than 50% of electricity production by 2050?
    2. Does wealth (GDP per capita) have a significant influence on electricity consumption?

Approach to Answering Research Questions:

    - Provide initial overview of electricity production and consumption, by generation type, for a range of countries/regions/continents.

    1. Forecast electricity production, by generation type, for each country.
        - using time based machine learning model (e.g. ARIMA, KMeans, linear regression)
    2. Analyse relationship between GDP per capita and electricity consumption per capita.
        - which ML model to use???

Datasets used:
    - Electricity Production and Consumption (by generation-type)
        - Source: International Energy Agency (IEA)
        - Countries: 48
        - Time: Jan-2010 -> Jan-2023, monthly
    - Population
        - Source: World Bank
        - Countries: > 200
        - Time: 1960 -> 2021, annual
    GDP
        - Source: World Bank
        - Countries: > 200
        - Time: 1960 -> 2021, annual

Presentation of Data:
    - Tableau:
        - The findings of the research (or answers to the research questions) will be presented using an interactive Tableau Dashboard.
        - Charts to include in Tableau Dashboard:
            1. Total/aggregate electricity consumption p.a. for all countries (combined). This will show growth in the overall amount of electricity used by all countries included in the study.
                a. Include drop down that allows user to select electricity generation-type, so chart can display the growth in coal, wind, solar etc.
            2. Global map with mouseover function that shows electricity consumption data for each country (total electricity consumption, electricity consumption per capita, imports & exports, growth in electricity per capita over 5 or 10 years).
            3. Scatter plot that highlights electricity consumption vs. GDP (both per capita) for all countries (maybe just for one year).
    - Power Point:
        - A power point presentation will be used to highlight the data analysis techniques and processes the team undertook, as well as outlining the platforms used and some detail the machine-learning models implemented.

Machine Learning Models:
    - OUTLINE ML MODELS TO BE USED, OPTIMISATION PROCESS, AND HOW THIS OPTIMISATION PROCESS WILL BE DOCUMENTED.