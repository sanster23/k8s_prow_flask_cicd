FROM python:3.5

# Create working space
WORKDIR /app/src

# Copy the requirements.txt file in docker image
COPY requirements.txt /app/src/requirements.txt

# Install all the required pip packages
RUN pip install -r requirements.txt

# Copy the application code in docker image
COPY app.py /app/src/app.py

EXPOSE 5000

CMD ["python", "app.py"]
