# Weapon Detection Yolov4

## Description

Weapon detection using yolov4 model with GUI application based. <br>
You can use this code for another object detection, but you must have a class names, config, weights and height weight model.

## Installation

```bash
$ git clone https://github.com/hafidh561/Weapon-Detection-Yolov4.git
```

### Installation Python

```bash
# Python version 3.8 or newer
$ pip install -r requirements.txt
$ python download_model.py
```

### Installation Docker

```bash
# Newest docker version
# Make sure put your test images in directory ./test_images
$ docker build -t hafidh561/weapon-detection-yolov4:1.0 .
```

## Usage

### Usage Python

```bash
$ python app.py -h
usage: app.py [-h] [-s SOURCE_IMG] [-c CONFIDENCE] [-n NMS] [-cls CLASS_NAMES [CLASS_NAMES ...]] [-cfg CONFIG] [-w WEIGHTS] [-wm WIDTH_MODEL]
              [-hm HEIGHT_MODEL]

optional arguments:
  -h, --help            show this help message and exit
  -s SOURCE_IMG, --source-img SOURCE_IMG
                        Input your image source to detect the object
  -c CONFIDENCE, --confidence CONFIDENCE
                        Input your minimal value to detect the object
  -n NMS, --nms NMS     Input your minimal value nms threshold
  -cls CLASS_NAMES [CLASS_NAMES ...], --class-names CLASS_NAMES [CLASS_NAMES ...]
                        Input your custom classes
  -cfg CONFIG, --config CONFIG
                        Input your custom config path
  -w WEIGHTS, --weights WEIGHTS
                        Input your custom weights path
  -wm WIDTH_MODEL, --width-model WIDTH_MODEL
                        Input your model width requirements
  -hm HEIGHT_MODEL, --height-model HEIGHT_MODEL
                        Input your model height requirements

# Example input
$ python app.py -s test_images/weapon0.jpg -c 0.1 -n 0.2 -cls Weapon -cfg yolov4-custom.cfg -w yolov4-custom_last.weights -wm 416 -hm 416
```

### Usage Docker

#### Prerequisite for Windows

1. Download and install [VcXsrv](https://sourceforge.net/projects/vcxsrv/)
2. Run VcXsrv before run this docker app

#### Prerequisite for Linux

```bash
# Expose your xhost
$ xhost +local:docker

# When you finish, you can return the access control by using the following
$ # xhost -local:docker

# Add environment variables
$ XSOCK=/tmp/.X11-unix
$ XAUTH=/tmp/.docker.xauth

# Create the authentication files
$ touch /tmp/.docker.xauth

# Create permission
$ xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -
```

```bash
$ docker run --rm -e DISPLAY=<your local ip address>:0 hafidh561/weapon-detection-yolov4:1.0 -h
usage: app.py [-h] [-s SOURCE_IMG] [-c CONFIDENCE] [-n NMS] [-cls CLASS_NAMES [CLASS_NAMES ...]] [-cfg CONFIG] [-w WEIGHTS] [-wm WIDTH_MODEL]
              [-hm HEIGHT_MODEL]

optional arguments:
  -h, --help            show this help message and exit
  -s SOURCE_IMG, --source-img SOURCE_IMG
                        Input your image source to detect the object
  -c CONFIDENCE, --confidence CONFIDENCE
                        Input your minimal value to detect the object
  -n NMS, --nms NMS     Input your minimal value nms threshold
  -cls CLASS_NAMES [CLASS_NAMES ...], --class-names CLASS_NAMES [CLASS_NAMES ...]
                        Input your custom classes
  -cfg CONFIG, --config CONFIG
                        Input your custom config path
  -w WEIGHTS, --weights WEIGHTS
                        Input your custom weights path
  -wm WIDTH_MODEL, --width-model WIDTH_MODEL
                        Input your model width requirements
  -hm HEIGHT_MODEL, --height-model HEIGHT_MODEL
                        Input your model height requirements

# Example arguments input
$ docker run --rm -e DISPLAY=192.168.0.2:0 hafidh561/weapon-detection-yolov4:1.0 -s test_images/weapon0.jpg -c 0.1 -n 0.2 -cls Weapon -cfg yolov4-custom.cfg -w yolov4-custom_last.weights -wm 416 -hm 416

# For Operating System Windows
$ docker run --rm -e DISPLAY=<your local ip address>:0 hafidh561/weapon-detection-yolov4:1.0

# For Operating System Linux
$ docker run --rm -e DISPLAY=$DISPLAY hafidh561/weapon-detection-yolov4:1.0
```

#### Example

![result0](./screenshots/result0.png)

![result1](./screenshots/result1.png)

![result2](./screenshots/result2.png)

## Give It a Try

If you want make your own deep learning for object detection? Give it a try in this [Google Colab](https://colab.research.google.com/github/hafidh561/Weapon-Detection-Yolov4/blob/main/jupyter_notebook/train_model.ipynb)

## License

[MIT LICENSE](./LICENSE)

© Developed by [hafidh561](https://github.com/hafidh561) - Internship at Nodeflux
