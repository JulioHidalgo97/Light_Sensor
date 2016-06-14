SRC = Light_Sensor.ino
PORT = /dev/ttyACM0
BAUD = 9600


build:
		arduino --verify $(SRC)

flash:
		arduino --upload $(SRC)

listen:
		miniterm.py $(PORT) $(BAUD)

edit:
		vim $(SRC)
