FROM python
WORKDIR /home/capsdevp/Documentos/workspace/docker/my-app/
COPY requirements.txt .
RUN pip install --upgrade pip setuptools==78.1.1 msgpack==1.2.1
RUN pip install --no-cache-dir -r requirements.txt
RUN apt-get update && apt-get upgrade -y
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5050
CMD ["python3", "sample_app.py"]



