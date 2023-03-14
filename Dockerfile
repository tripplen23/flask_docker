#TODO: start by pulling the python image
#TODO: Since Docker allows us to inherit(Thừa kế) existing images, we install a Python image and install it in our Docker image. Alpine is a lightweight Linux distro that will serve as the OS on which we install our image
FROM python:3.8-alpine

#TODO: Here, we copy the requirements file and its content (the generated packages and dependencies) into the app folder of the image
#TODO: copy the requirements file into the image
COPY ./requirements.txt /app/requirements.txt

#TODO: switch working directory
#TODO: We proceed to set the working directory as /app, which will be the root directory of our application in the container
WORKDIR /app

#TODO: install the dependencies and packages in the requirements file
#TODO: This command installs all the dependencies defined in the requirements.txt file into our application within the container
RUN pip install -r requirements.txt

#TODO: copy every content from the loal file to the image
#TODO: This copies every other file and its respective contents into the app folder that is the root directory of our application within the container
COPY . /app

#TODO: configure the container to run in an excecuted manner
#TODO: nThis is the command that runs the application in the container
ENTRYPOINT ["python"]

#TODO: Finally, this appends the list of parameters to the EntryPoint parameter to perform the command that runs the application. This is similar to how you would run the Python app on your terminal using the python view.py command
CMD ["view.py"]

