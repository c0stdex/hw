
FROM python:3.12


WORKDIR /app


COPY . /app


RUN pip install pipenv
RUN pipenv install --deploy --ignore-pipfile


CMD ["pipenv", "run", "python", "hw.py"]