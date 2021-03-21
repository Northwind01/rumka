install_dev:
		pip3 install -U pip
		pip3 install -r requirements.txt
		#pip3 install --use-deprecated=legacy-resolver rasa-x --extra-index-url https://pypi.rasa.com/simple
		#rasa init

check:
		export LC_ALL=en_US.UTF-8
		export LANG=en_US.UTF-8

spacy:
		pip3 install rasa[spacy]
		pip3 install spacy==3.0.0
		python3 -m spacy download ru_core_news_lg
		#python3 -m spacy link ru_core_news_lg ru

