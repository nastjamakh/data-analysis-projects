from pathlib import Path
import dotenv

dotenv.load_dotenv()

_WORK_DIR = Path(__file__).parent.parent


def work_dir():
    return _WORK_DIR


""" Paths """

QUESTIONS_DESCR_FILEPATH = {
    "eqsq": work_dir() / "data/emphasizing-systemizing-questions.yaml",
    "sex-role": work_dir() / "data/sex-role-inventory-questions.yaml",
}
DATASET_FILEPATH = {
    "eqsq": work_dir() / "data/emphasizing-systemizing-data.csv",
    "sex-role": work_dir() / "data/sex-role-inventory-data.csv",
}
