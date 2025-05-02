#Please see README file for instructions.
FROM rockylinux/rockylinux
RUN dnf install python39 -y
RUN dnf install python39-pip

WORKDIR /opt/currentworkdir
COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY . .
RUN python3 model.py

EXPOSE 5000
CMD ["Python3","flaskapp.py"]
