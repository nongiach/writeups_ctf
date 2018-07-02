# NDH wargame 2018 : reverse 850

**Category:** reverse |
**Name:** dans la vallee |
**Solves:** 0 |
**Description:** Reverse a machine learning model embeded in an ELF binary.

___
## TLDR
This challenge is about reversing a machine learning model embeded in an ELF binary to find the flag. The binary prints "You got it!" or "Wrong password" if the given png file contains the flag or not. We solved this challenge by instrumenting this binary to use the embeded machine learning model for analyzing each pixel one by one. Here is the result:

| ![flag](flag.png) | ![quick_flag](quick_flag.png) |

Flag: NDH{GR4DIEN7_D3SCEN7_4EVER}


## Reverse

As we can see here with the [plasma](https://github.com/plasma-disassembler/plasma) tool, the binary:
- Expects a PNG filename in arguments
- Uses the *read_png* function to open the PNG and perform some check like *png_get_image_height() == 284 && png_get_image_width() == 168 && png_get_bit_depth() == 8 && png_get_color_type() == 2*
- Uses the *eval_model* that loads a machine learning model embeded in the ELF and evalutates if the PNG contains the flag or not, then returns  a float value between 0 or 1
- if float_value > 0.9 then prints "You got it!" else prints "Wrong passwords".

## Machine Learning Model

A basic homemade 4 layers Neural Network using sigmoid and relu as activation functions, there is only one output cell to say the input contains the flag or not.

## Instrumentation

At first we used this gdb script to breakpoint after the evaluation and print the float value, but it was too slow so we asked @XeR to manually rewritte the binary to write the float value before exiting. [@XeR](https://github.com/XeR) is a cheap tool and more optmimized than frida or gdb, pintool or whatever...

| [gdb script](gdb.gdbinit) | [manually rewrited binary](fast) | [original binary](adam_not_eve) |
| --- | --- | --- |

## Solution

Using a bit of python we generate a 168 by 284 pixels black PNG and evaluate this black PNG with the model, the returned value will be our threshold. Then we change a pixel in the image, if the neural network output for this new image is higher than the threshold then the new pixel is saved.

```sh
threshold = evaluate(full_black_png)

foreach pixel of full_black_png:
  pixel = white_color
  if threshold < evaluate(full_black_png_with_one_white_pixel):
    final_png.pixel = white_color
```

----
[HexpressoTeam](https://twitter.com/HexpressoCTF)
