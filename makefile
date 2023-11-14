env_ok: requirements.txt
	rm -rf env env_ok
	python3 -m venv env
	env/bin/pip install -U pip
	env/bin/pip install -r requirements.txt
	touch env_ok

.PHONY: clean
clean:
	rm -rf env env_ok

.PHONY: fmt
fmt: env_ok
	env/bin/isort --sp .isort.cfg ./mysite/mysite/*.py ./mysite/polls/*.py
	env/bin/black ./mysite/mysite/*.py ./mysite/polls/*.py

.PHONY: check
check: env_ok
	env/bin/python -m mypy \
		--no-implicit-optional \
		--check-untyped-defs \
		--ignore-missing-imports \
		./
	env/bin/python -m flake8 --select F ./ --exclude=./env
	env/bin/isort  --sp .isort.cfg  --check ./mysite/mysite/*.py ./mysite/polls/*.py
	env/bin/black --check ./mysite/mysite/*.py ./mysite/polls/*.py

run:
	env/bin/python3 ./mysite/manage.py runserver
