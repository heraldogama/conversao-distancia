FROM python:3.13.2
WORKDIR /app
COPY requirements.txt .
RUN python -m pip install --no-cache-dir -r requirements.txt
COPY . .
CMD [ "gunicorn", "-b", "0.0.0.0:5000", "app:app" ]