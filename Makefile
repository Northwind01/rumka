help:
	@echo "make"
	@echo "    install_dev"
	@echo "        Install basics for development."
	@echo "    clean"
	@echo "        Remove Python/build artifacts."
	@echo "    formatter"
	@echo "        Apply black formatting to code."
	@echo "    lint"
	@echo "        Lint code with flake8, and check if black formatter should be applied."
	@echo "    types"
	@echo "        Check for type errors using pytype."

install_dev:
		pip3 install -U pip
		pip3 install -r requirements.txt
		#pip3 install --use-deprecated=legacy-resolver rasa-x --extra-index-url https://pypi.rasa.com/simple
		#rasa init
		#export LC_ALL=en_US.UTF-8
		#export LANG=en_US.UTF-8
		#pip3 install rasa[spacy]
		#pip3 install spacy==3.0.0
		#python3 -m spacy download ru_core_news_lg
		#unzip ngrok-stable-darwin-amd64.zip
		#./ngrok authtoken <your_auth_token>
		#./ngrok http 5002
		

clean:
		find . -name '*.pyc' -exec rm -f {} +
		find . -name '*.pyo' -exec rm -f {} +
		find . -name '*~' -exec rm -f  {} +
		rm -rf build/
		rm -rf .pytype/
		rm -rf dist/
		rm -rf docs/_build

formatter:
		black actions

lint:
		flake8 actions
		black --check actions

types:
		pytype --keep-going actions