# Install Images
FROM python:3.8.12-slim

# Set working directory
WORKDIR /home/app

# Install packages
RUN apt-get update -y && apt-get upgrade -y && \
apt-get install ffmpeg libsm6 libxext6 -y && \
apt-get install tk -y

# Copy all files into working directory
COPY app.py download_model.py requirements.txt yolov4-custom.cfg /home/app/

# Copy test images
COPY test_images/ /home/app/test_images/

# Instal python libraries
RUN pip install -r requirements.txt

# Download Model
RUN python download_model.py

# Run script
ENTRYPOINT ["python", "app.py"]