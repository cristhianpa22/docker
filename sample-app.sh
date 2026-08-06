#!/bin/bash

mkdir tempdir
mkdir tempdir/templates
mkdir tempdir/static

cp sample_app.py tempdir/.
cp -r templates/* tempdir/templates/.
cp -r static/* tempdir/static/.

echo "FROM python" >> tempdir/Dockerfile
echo "RUN pip install flask" >> tempdir/Dockerfile
echo "COPY ./static /home/capsdevp/Documentos/workspace/docker/my-app/static/" >> tempdir/Dockerfile
echo "COPY ./templates /home/capsdevp/Documentos/workspace/docker/my-app/templates/" >> tempdir/Dockerfile
echo "COPY sample_app.py /home/capsdevp/Documentos/workspace/docker/my-app" >> tempdir/Dockerfile
echo "EXPOSE 5050" >> tempdir/Dockerfile

echo "CMD python3 /home/capsdevp/Documentos/workspace/docker/my-app/sample_app.py" >> tempdir/Dockerfile