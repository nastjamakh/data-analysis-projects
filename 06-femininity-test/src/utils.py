import yaml
import pandas as pd

from config import (
    QUESTIONS_DESCR_FILEPATH,
    DATASET_FILEPATH,
)


def load_data(name="eqsq"):
    """Load answers and demographics data."""
    return pd.read_csv(DATASET_FILEPATH.get(name), sep="\t")


def load_questions(name: str = "eqsq", as_series: bool = True):
    """Load questions description."""
    with open(QUESTIONS_DESCR_FILEPATH.get(name), "r+") as f:
        questions = yaml.load(f, Loader=yaml.SafeLoader)

        if as_series:
            return pd.Series(questions)

        return questions
