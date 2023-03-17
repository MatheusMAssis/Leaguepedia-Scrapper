ENV_NAME = league
PYTHON = python3
PIP = pip3
BRANCH = develop
PROJECT_PATH = "/Users/matheus_assis/Desktop/projects/Leaguepedia-Scrapper/leaguepedia_scrapper"

league:
	mamba create -n $(ENV_NAME) python=3.8

install:
	git checkout -b $(BRANCH)
	$(PIP) install -r requirements/requirements.txt
	git add .
	git commit -m "Start | Add requirements"
	git push -u origin $(BRANCH)

setup-requirements:
	pip-compile --output-file=requirements/requirements.txt requirements/requirements.in --resolver=backtracking

run:
	streamlit run social_pulse/main/main.py