# About
This repository is used as a reference for distributing app packages on [Deimos](https://github.com/k0dekiller/deimos).

# Setup
The current setup builds `myapp` by transpiling the Zink source file `myapp.z` into the Python built file `myapp.py`.

To change the app name you must:
- Run `make clean` to remove any redundant build file
- Rename `myapp.z`
- Update the `FILE` variable in the Makefile
- Update the `myapp.py` entry in the .gitignore

# Setup for Python
If you wish to develop your app in Python, you need to:
- Follow the setup above
- Build the app once
- Delete `myapp.z` but keep `myapp.py`
In this modified version of the workspace, you won't need to build the app every time, since you already have the Python file. Everything else (like how to release it and publish it) works the same, just make sure you run `make release` instead of `make build release` when you're releasing it.

# Building the app
You can build the app by first installing Zink with `make install`, then running `make build`.

# Releasing the app
You can release the app by running `make build release`. The `gh` command will handle the rest for you, asking for information like the release name, whether to create a new tag and other info. This process automatically builds `myapp.py` and adds it as an asset to the release.

# Publishing the app
It's highly advised to publish your app on the [Official Application Index](https://github.com/k0dekiller/deimos-apps). Follow the documentation there to correctly publish your app.

# Add documentation
Lastly, you must delete this README file and add one of your own to describe what the app does and how to use it.