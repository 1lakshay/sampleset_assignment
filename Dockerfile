FROM python:3.12

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir -r /code/requirements.txt

COPY . /code

EXPOSE 8501

CMD ["streamlit", "run", "trying.py"]