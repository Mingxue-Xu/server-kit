# Server-kit
A tiny kit that contains some common functions for GPU/CPU central/edge servers.
Keep updating:D

## Network check and reconnection
A simple bash shell script periodically checks the network connection (static IP), reconnects, and generates logs.
```shell
sudo sh network/network-check.sh ip
```
**Alternative Option:** if you want to run the script at the machine startup, follow this link: [How to run a shell script at startup](https://stackoverflow.com/questions/12973777/how-to-run-a-shell-script-at-startup).

## Run MATLAB remotely with Python
Matlab is an essential tool in many fields, but it is computationally intensive for personal computers. An alternative is to run Matlab on the remote server. Furthermore, we can call Matlab commands with Python, so it is easier to organize the code structure (i.e. prevent handling .m files):)

The following instructions are tested with **MATLAB R2022b** and Python 3.8.

### Install MATLAB and the required Python package on the server (Linux)
Follow this [guide](https://www.geeksforgeeks.org/installing-matlab-on-linux/) to install MATLAB on the Linux server. Here the default installation path is suggested since the Python package we will use later uses this default path.

After the MATLAB installation, activate your virtual environment (virtualenv, anaconda, etc.) and install MATLAB engine.
```shell
pip install matlabengine # The current version is 9.13.1 
```
If you didn't install MATLAB in the default path, follow this [guide](https://pypi.org/project/matlabengine/) to add environment variable.

### Call MATLAB with Python
A small set of common functions has been tested in `matlab/call-matlab.py`. Have a glance and choose what you need:D There are explanations available for [more usage examples](https://uk.mathworks.com/help/matlab/matlab_external/call-matlab-functions-from-python.html) and [limitations](https://uk.mathworks.com/help/matlab/matlab_external/limitations-to-the-matlab-engine-for-python.html).     





