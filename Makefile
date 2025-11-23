FILE := myapp

all: build

clean:
	rm -f $(FILE).py

install:
	python -m pip install zlang

build: clean
	python -m zlang --lang py --pretty --verbose $(FILE).z $(FILE).py

flash: build
	mpremote cp -r $(FILE).py :/apps/

run: flash
	mpremote reset
	sleep 2
	mpremote

release:
	gh release create "" $(FILE).py