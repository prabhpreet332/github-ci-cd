IGNORED_FILES="venv"
CHECK_FLAG="--check"

echo "Checking of formating - black"
python3 -m black $CHECK_FLAG --line-check=88 ./

echo "Checking of import formating - isort"
python3 -m isort $CHECK_FLAG --profile black --check ./
