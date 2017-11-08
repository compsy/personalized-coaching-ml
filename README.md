# Personalized Coaching - The ML Pipeline
The ML pipeline establishes individual models for reaching the daily steps threshold on an individual level, based on FitbitFlex data.

The ML Pipeline consists of 4 jupyter notebooks:
1. 1 HanzeFitbit Data preparation
2. 2 HanzeFitbit Determine the score
3. 3 HanzeFitbit all treament ids, classification algorithms results database pickle
4. 4 HanzeFitbit normal dataframe all treament ids, all models, results database, Predict

These notebooks use an Oracle xe 11g2 database to store and retrieve data. In the folder Metrics and Database the schema needed is added: DatabaseWithoutData.dll

After installation of the database and the schema, Fitbit csv files can be loaded into the database with notebook 1.
Notebook 2 determines the F1-score and Acccuracy of several classification algorithms on grouplevel.
Notebook 3 determines the F1-score and Accuracy of several classification algorithms of treatment_id level and pickles the models
Notebook 4 uses the pickled models to predict the probability on one meeeting his threshold.
