#!/usr/bin/env python

input = open("02_input.txt")

total = 0

for line in input:
	l, w, h = line.split("x")

	l = int(l)
	w = int(w)
	h = int(h)

	areaSmallest = min(l * w, w * h, h * l)
	total += 2 * ((l * w) + (w * h) + (h * l)) + areaSmallest

print(total)
