DogChat
===========

Video chatting for dogs.

Hardware
------

The DogChat hardware is built on top of a Raspberry Pi. The Pi starts a web server and uses an attached USB Webcam to create a video stream over a local port. It uses ngrok to allow access to itself from outside of the local network. GET requests to the Raspberry Pi control the servo motor, which is used to dispense a treat to the dog, and allows a viewer to access the video feed. There is a force-sensitive resistor used as a button the dog can press to send a message to the user. (Currently in progress)

iOS App
------

The DogChat iOS app is like FaceTime for dogs. There is a live video stream displayed fullscreen, with a custom button interface overlaid on top of it. The main button is used to tell the Raspberry Pi to dispense a treat to the dog.

![DogChat Interface](https://raw.githubusercontent.com/lauraskelton/dog-chat/master/Examples/demo_dogchat.jpg "DogChat Interface")

![DogChat Notification](https://github.com/lauraskelton/dog-chat/raw/master/Examples/demo_notification.jpg "DogChat Notification")