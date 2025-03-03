#base image 
FROM python:3.9-slim
#working directory 
WORKDIR /app
#copying the source code of the project from host to container to build image
COPY . .

#installing the dependencies and libraries 
#run is the command we are writting while building the image 
RUN pip install -r requirements.txt

EXPOSE 80

#cmd is the command we run to start our application after the image of application is completed 

CMD ["python","run.py"]

#we can give the startup command using entrypoint also but the difference between cmd and entrypoint is that entrypoint we can't override the startup commands while in cmd we can override the startup command using enviroment variables 


