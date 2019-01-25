from scipy.optimize import fsolve
import math
import time

import random

start = time.time()

integer_w = 11
fraction_w = 13
fixed_w = integer_w + fraction_w

SCREEN_WIDTH = 720
SCREEN_HEIGHT = 1280

def bitmask(width):
	return (1 << width) - 1

def fixed_from_float(n):
	if n < 0:
		n = -n
		negative = True
	else:
		negative = False

	result = int(n * (1 << fraction_w))

	if negative:
		return (result ^ bitmask(fixed_w)) + 1
	else:
		return result

def float_from_fixed(n):
	n &= bitmask(fixed_w)
	negative = n & (1 << (fixed_w - 1))

	if negative:
		n = (n ^ bitmask(fixed_w)) + 1

	result = (float)(n) / (float)(1 << fraction_w)

	return -result if negative else result

def get_center_vec(p1, p2, p3, p4):
	p1[0] = float_from_fixed((p1[0]*2 - SCREEN_WIDTH)*16)
	p2[0] = float_from_fixed((p2[0]*2 - SCREEN_WIDTH)*16)
	p3[0] = float_from_fixed((p3[0]*2 - SCREEN_WIDTH)*16)
	p4[0] = float_from_fixed((p4[0]*2 - SCREEN_WIDTH)*16)
	p1[1] = float_from_fixed((p1[1]*2 + SCREEN_HEIGHT)*16)
	p2[1] = float_from_fixed((p2[1]*2 + SCREEN_HEIGHT)*16)
	p3[1] = float_from_fixed((p3[1]*2 + SCREEN_HEIGHT)*16)
	p4[1] = float_from_fixed((p4[1]*2 + SCREEN_HEIGHT)*16)

	z_offset = 2.0
	return p1, p2, p3, p4, z_offset

def dist_sq(x1, x2, y1, y2, z1, z2):
	return (((x2-x1)**2) + ((y2-y1)**2) + ((z2-z1)**2))

def equations_outer(p1, p2, p3, p4, z_offset):
	def equations(p):
		lam1, lam2, lam3, lam4 = p
		return (dist_sq(lam1*p1[0], lam2*p2[0], lam1*p1[1], lam2*p2[1], lam1*z_offset, lam2*z_offset), 
			dist_sq(lam1*p1[0], lam3*p3[0], lam1*p1[1], lam3*p3[1], lam1*z_offset, lam3*z_offset),
			dist_sq(lam4*p4[0], lam2*p2[0], lam4*p4[1], lam2*p2[1], lam4*z_offset, lam2*z_offset),
			dist_sq(lam3*p3[0], lam4*p4[0], lam3*p3[1], lam4*p4[1], lam3*z_offset, lam4*z_offset))
	return equations

p1, p2, p3, p4, z_offset = get_center_vec(p1, p2, p3, p4)

lam1, lam2, lam3, lam4 =  fsolve(equations_outer(p1, p2, p3, p4, z_offset), (1, 1, 1, 1))

p1 = p1 + [z_offset]
p2 = p2 + [z_offset]
p3 = p3 + [z_offset]
p4 = p4 + [z_offset]

X1 = [lam1*p for p in p1]
X2 = [lam2*p for p in p2]
X3 = [lam3*p for p in p3]
X4 = [lam4*p for p in p4]

print((X1[0] + X2[0] + X3[0] + X4[0])/4)
print((X1[1] + X2[1] + X3[1] + X4[1])/4)
print((X1[2] + X2[2] + X3[2] + X4[2])/4)

X = fixed_from_float((X1[0] + X2[0] + X3[0] + X4[0])/4)
Y = fixed_from_float((X1[1] + X2[1] + X3[1] + X4[1])/4)
Z = fixed_from_float((X1[2] + X2[2] + X3[2] + X4[2])/4)

print(time.time() - start)
