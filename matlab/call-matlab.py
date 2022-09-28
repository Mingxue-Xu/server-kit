import matlab.engine
import matplotlib.pyplot as plt
import numpy as np

# Start MATLAB engine
eng = matlab.engine.start_matlab()

# go to a directory
eng.cd(r"YOUR_PATH", nargout=0)

# run a MATLAB command, make sure the required MATLAB packages and data are valid in your current path
eng.eval('[csi_data, ~] = csi_get_all(\'xxx.dat\')',nargout=0)

# import the result from MATLAB
csi_ = np.asarray(eng.workspace['csi_data'])

# play with data:D
csi_real = csi_.real
csi_image = csi_.imag
print("csi image shape {}".format(csi_image.shape))

# quit the engine
eng.quit()



