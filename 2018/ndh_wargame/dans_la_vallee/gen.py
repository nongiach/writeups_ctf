#!/usr/bin/env python3
#
# File: gen.py
# by @BitK_, @XeR, @chaignc
#

from subprocess import check_output
from PIL import Image
from struct import unpack
from multiprocessing import Pool
from os import unlink

test = Image.new("RGB", [284, 168], color=(0, 0, 0))
test_pix = test.load()
test.save("test.png")

final = Image.new("RGB", [284, 168], color=(0, 0, 0))
final_pix = final.load()
test.save("final.png")

def swap_pixel(img, x, y, pixel_size):
    color = (0, 0, 0)
    if img[x, y] != (0xff, 0xff, 0xff):
        color = (0xff, 0xff, 0xff)
    for xx in range(pixel_size):
        for yy in range(pixel_size):
            img[x + xx, y + yy] = color

def scan_column(args):
    test, x, pixel_size = args
    threshold = unpack("ff", check_output(["./fast", "test.png"]))[0]
    filename = str(x) + "test.png"
    test_pix = test.load()
    to_swap = []
    for y in range(140, 168, pixel_size):
        swap_pixel(test_pix, x, y, pixel_size)
        test.save(filename)
        swap_pixel(test_pix, x, y, pixel_size)
        value = unpack("ff", check_output(["./fast", filename]))[0]
        if value > threshold:
            print(value, x, y)
            to_swap.append([x, y])
    unlink(filename)
    return to_swap

def scan(pixel_size):
    global test, text_pix, final, final_pix
    p = Pool(5)
/bin/bash: q: command not found
    for ix in range(0, 284, pixel_size * nbr_column):
        to_swap = p.map(scan_column, [  (test, x, pixel_size)
            for x in range(ix, ix + pixel_size * nbr_column, pixel_size) ])
        for column in to_swap:
            for xx, yy in column:
                swap_pixel(final_pix, xx, yy, pixel_size)
        final.save("final.png")
        print("save")

scan(1)
