import json
import pandas as pd
import joblib

dataInput = input('dataframe')

print(type(dataInput))

print(dataInput)

dataRaw = json.loads(dataInput)

print(dataRaw)

model = joblib.load(dataRaw.pop("file_path"))

print(model)

dataframe = pd.DataFrame([dataRaw])

print(dataframe)

dataframe_clean = dataframe[model['standardscaler'].feature_names_in_]

result = round((model.predict(dataframe_clean)[0] * 100))

print(result)

