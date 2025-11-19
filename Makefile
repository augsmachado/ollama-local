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
# run the llama3.2 model
ollama-run:
	ollama run llama3.2

# list ollama models
ollama-list:
	ollama list

# remove ollama model
ollama-remove:
	ollama rm llama3.2

# pull ollama model
ollama-pull:
	ollama pull llama3.2

# create ollama model assistant from Modelfile
ollama-create:
	ollama create james -f ./Modelfile