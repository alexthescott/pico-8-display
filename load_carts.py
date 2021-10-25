"""
load_carts.py by alexthescott
10/23/21 2:13pm

Grab a list of carts from a given folder, then run runner.p8
cart passing in found list
"""

import subprocess
import pdb

PATH_PICO8 = '/home/pi/Documents/pico-8/pico8'
PATH_CART_RUNNER = '/home/pi/.lexaloffle/pico-8/carts/runner.p8'
PATH_CARTS_FOLDER = '/home/pi/.lexaloffle/pico-8/carts/to_display'
DISPLAY_SECONDS = '3600'

result = subprocess.run(['ls', PATH_CARTS_FOLDER], capture_output=True)
CARTS = "".join(chr(x) for x in result.stdout).replace('\n', ' ')[:-1]

PATH_CARTS_FOLDER = '/{}'.format(PATH_CARTS_FOLDER.split('/')[-1])
PARAM_STR = "{} {} {}".format(PATH_CARTS_FOLDER, DISPLAY_SECONDS, CARTS)

cmd = [PATH_PICO8, '-p', PARAM_STR, '-run', PATH_CART_RUNNER]
subprocess.run(cmd)