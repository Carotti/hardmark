import os
import re

def create_sv(f_name):
	with open(f_name, 'r') as html_file:
		text = html_file.read()
	colours = re.findall("[0-9a-f]{6}", text)
	sv_name = f_name[:-4] + 'sv'
	with open(sv_name, "w+") as sv_file:
		sv_file.write('localparam NUM_PIXELS_' + f_name[:-5].upper() + ' = ' + str(len(colours)) + ';\n')
		sv_file.write('logic [23:0] ' + f_name[:-5] + ' [')
		sv_file.write('0:' + str(len(colours)-1) + '];\n')
		ind = 0;
		for colour in colours:
			sv_file.write("assign " + f_name[:-5] + "[" + str(ind) + "] = " + "24'h" + colour + ";\n")
			ind = ind + 1
	return sv_name

test_images = [f for f in os.listdir("./") if f.endswith(".html")]

with open("images_lib.sv", "w+") as image_lib:
	for f_name in test_images:
		image_lib.write('`include "')
		new_name = create_sv(f_name)
		image_lib.write(new_name + '"\n')
