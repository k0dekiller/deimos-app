# About
This repository is used as a reference for distributing app packages on [Deimos](https://github.com/k0dekiller/deimos).

# Setup
The current setup builds `myapp` by transpiling the Zink source file `myapp.z` into the Python built file `myapp.py`.

To change the app name you must:
- Run `make clean` to remove any redundant build file
- Rename `myapp.z`
- Update the `FILE` variable in the Makefile
- Update the `myapp.py` entry in the .gitignore

# Releasing the app
You can release the app by running `make build release`. The `gh` command will handle the rest for you, asking for information like the release name, whether to create a new tag and other info. This process automatically builds `myapp.py` and adds it as an asset to the release.

# Publishing the app
It's highly advised to publish your app on the [Official Application Index](https://github.com/k0dekiller/deimos-apps). Follow the documentation there to correctly publish your app.

# Add documentation
Lastly, you must delete this README file and add one of your own to describe what the app does and how to use it.