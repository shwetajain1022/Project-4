# Project-4

GENERATING ELECTRICITY: RENEWABLES & NON-RENEWABLES

Group Members: Shweta Jain, Mohsen Farrokhrouz, Oliver King

Research Questions:
    1. What proportion of electricity generation will renewable sources account for by 2025?
    2. Does wealth (GDP per capita) have a significant influence on electricity consumption?
    3. What is the outlook for solar-based electricity generation in Australia (to 2025)? 

Approach to Answering Research Questions:

    - Provide initial overview of electricity production and consumption, by generation type, for a range of countries/regions/continents.
        (Tableau dashboard)

    1. Forecast electricity production separately for renewables and non-renewables.
        - using time-series machine-learning model from ARIMA family (e.g. ARMA, ARIMA, SARIMA).
    2. Analyse relationship between GDP per capita and electricity consumption per capita.
        - user able to investigate this phenomenon on interactive Tableau dashbaord.

Datasets used:
    - Electricity Production and Consumption (by generation-type)
        - Source: International Energy Agency (IEA)
        - Countries: 48
        - Time: Jan-2010 -> Jan-2023, monthly
    - Population
        - Source: World Bank
        - Countries: > 200
        - Time: 1960 -> 2021, annual
    - GDP
        - Source: World Bank
        - Countries: > 200
        - Time: 1960 -> 2021, annual
    - Continent/Region/Country/Country Code
        - Source: GitHub user: "lukes"
        - Countries: > 200
        - Time: single period

Presentation of Data:
    - Tableau:
        - The findings of the research (or answers to the research questions) will be presented using an interactive Tableau Dashboard.
        - Charts included in Tableau Dashboard:
            1. Global map with mouseover function that shows electricity production data for user selected country.
            2. Total/aggregate electricity production (by generation-type) for user selected country. Users will be able to contrast and compare the make-up of electricity generation-types for different countries.
            3. Historical breakdown of renewable and non-renewable electricity generation for user selected country.
            4. Presentation of relationship between energy consumption per-capita and GDP per-capita for user selected country
    - Power Point:
        - A power point presentation will be used to highlight the data analysis techniques and processes the team undertook, as well as outlining the platforms used and detail the machine-learning models implemented and results produced.

Instructions for Running ML Models in Google Colab:
    1. Upload notebook from 'AI Modelling' folder to Google Colab
    2. Click the 'Files' icon on left of screen, then right click in sidebar and select 'New Folder' to create a new folder.
    3. Name this new folder 'model_data'
    4. Copy 'energyconsumptiongdppopulation.csv' from the 'FinalModelCSV' folder and paste it in the recently created 'model_data' folder.
    5. Once the csv has uploaded, the data should read in (second cell block) and model should run without error.

Navigating the Repository:

- Repository URL: https://github.com/shwetajain1022/Project-4.git

- Files in home directory:
    1. '.gitignore'
        - file to protect password used to access database via SQLAlchemy.
    2. 'electricity_model.ipynb'
        - SQLAlchemy engine to access and query locally hosted database.
    3. 'population_gdp.ipynb'
        - Jupyter notebook used to read in csv data, clean and transform the data, then export to csv.
    4. 'README.md'
        - This file, outlining contents of repository and project details.
- Folders/Directories:
    1. 'AI Modelling':
        - includes 3 x notebooks to be run in Google Colab.
        - each notebook runs an ARIMA-family time-series model on a different dataset, including:
            a. non-renewable electricity production: global
            b. renewable electricity production: global
            c. solar electricity production: australia
        - Instructions for running ML models can be found above, under "Instructions for Running ML Models in Google Colab" sub-heading.
    2. 'Database Models':
        - 'electricity_db.sql': script used to create tables for SQL database for storage of data.
        - 'QuickDBD-EnergyConsumption.png': Entity relationship diagram used to develop SQL database format.
    3. 'FinalModelCSV':
        - includes 5 x csv files that are the output of the data-cleansing and transformation process undertaken in 'population_gdp.ipynb'.
        - these 5 csv's were then imported into the database 'electricity_db.sql'.
    4. 'Presentation':
        - 'Electricity_Consumption.twbx': interactive tableau dashboard
        - 'Proj4_presentation.pptx': powerpoint presentation to be used on presentation night (01/06/2023)
    5. 'Resources':
        - includes 6 x csv files that were original data sources for the project and 1 x csv used as a template for the desired layout of the transformed data.
        - 'Resource Documentation': includes information relevant to any of the projects data sources.
    6. 'zzzArchived':
        - includes a range of files and notebooks in which work was undertaken, but were not useful in the final presented project.