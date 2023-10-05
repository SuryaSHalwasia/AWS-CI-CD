#Base image
FROM python:3.8

#Set the working directory inside the container
WORKDIR /

#Copy the requirements file
COPY requirements.txt .

#Install the project dependencies
RUN pip install -r requirements.txt

#Copy the application code into the container
COPY . .

#Expose the port
EXPOSE 5000

#Run
CMD [ "python", "app.py" ]