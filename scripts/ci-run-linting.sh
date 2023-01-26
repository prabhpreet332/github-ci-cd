IGNORED_FILES="venv"
CHECK_FLAG="--check"

python3 -m black $CHECK_FLAG --exclude migrations --line-length=88 ./
python3 -m isort $CHECK_FLAG --profile black --skip migrations ./
python3 -m flake8 --config setup.cfg ./