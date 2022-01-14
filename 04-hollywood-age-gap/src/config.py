from pathlib import Path
import dotenv

dotenv.load_dotenv()

_WORK_DIR = Path(__file__).parent.parent


def work_dir():
    return _WORK_DIR
