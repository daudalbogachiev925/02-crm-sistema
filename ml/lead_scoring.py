from sklearn.ensemble import GradientBoostingClassifier
import pandas as pd

def train(df: pd.DataFrame):
    X = df[['source_code', 'days_since_contact', 'activity_count']]
    y = df['converted']
    m = GradientBoostingClassifier(n_estimators=200)
    m.fit(X, y)
    return m

def score(model, lead):
    return model.predict_proba([lead])[0][1]
