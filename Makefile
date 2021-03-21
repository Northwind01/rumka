install_dev:
		pip3 install -U pip
		pip3 install -r requirements.txt
		pip3 install --use-deprecated=legacy-resolver rasa-x --extra-index-url https://pypi.rasa.com/simple
		#rasa init
