# Django test

Repository to refresh about Django with [quickstart](https://docs.djangoproject.com/en/4.2/intro/tutorial01/) and test other other tools (i.e: [Django REST framework](https://www.django-rest-framework.org/)).

## Requirements

- [Python](https://www.python.org/downloads/) with [pip](https://pip.pypa.io/en/stable/installation/)

## How to operate

- Check and update environment dependencies

```shell
make env_ok
```

- Remove virtual environment files

```shell
make clean
```

- Apply code formatting fixes to py files ([isort](https://pypi.org/project/isort/), [black](https://pypi.org/project/black/))

```shell
make fmt
```

- Check code formatting ([mypy](https://pypi.org/project/mypy/), [flake8](https://pypi.org/project/flake8/), [isort](https://pypi.org/project/isort/), [black](https://pypi.org/project/black/))

```shell
make check
```

- Run main application (available at [http://localhost:8000/](http://localhost:8000/))

```shell
make run
```