FROM python
WORKDIR /home/capsdevp/Documentos/workspace/docker/my-app/
RUN apt-get update && apt-get upgrade -y
RUN pip install --upgrade pip setuptools==78.1.1 wheel==0.46.2 jaraco.context==6.1.0 msgpack==1.2.1
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt


COPY . .
EXPOSE 5050
CMD ["python3", "sample_app.py"]



