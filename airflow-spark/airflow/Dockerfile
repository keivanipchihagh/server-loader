FROM apache/airflow:2.5.0

# Must use 'airflow' user to install PIP packages
USER airflow

# Install requirements
COPY requirements.txt /
RUN pip install -r /requirements.txt