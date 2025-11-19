# virtual environment commands
venv-create:
	python3 -m venv .venv

venv-up:
	source .venv/bin/activate

venv-down:
	deactivate

# python commands
install-pip:
	pip install --upgrade pip
	pip install -r requirements.txt --upgrade

freeze-pip:
	pip freeze > requirements.txt

# ollama commands
ollama-run:
	ollama run llama3.2

ollama-list:
	ollama list

ollama-remove:
	ollama rm llama3.2

ollama-pull:
	ollama pull llama3.2

ollama-create:
	ollama create james -f ./Modelfile