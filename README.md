

# Executable Unicode Examples

This repository contains a few examples of executable Unicode characters.

These files represent 8088 machine code, which can be executed directly in MS-DOS as a COM file, if a 0100h base address is assumed.
All the examples should run in most versions of DosBox.

Each TXT file is identical to the corresponding COM file, except for extension.

A basic explanation of how to construct executable Emoji can be found [here](https://martypc.blogspot.com/2026/08/executable-emoji.html). 

## Hello World

Your basic "Hello World!" program.

The basic concept is to implement enough code in native codepoints to emit a first-stage decoder, the source of which is in /asm/decoder.asm. This decoder then emits native code to print "Hello World!" and jumps to it.

### `EMOJI.COM`

Size: 838 bytes  
MD5: `e7684474f9d77bcfab3fd89321a327cb`  
SHA-256: `7c0f4b56c3d929a2b4b5fff49cc9ff393b57998a609b2687205cabf0436edc31`

### `HANGUL.COM`

Size: 552 bytes  
MD5: `50d38d1f31322b24ee9a384de0d53728`  
SHA-256: `d32d5b96913bfe793d65cbb7b7317c400e8cfc743c1f2f126ee377f47373c1ec`

### `KANA.COM`

Size: 609 bytes  
MD5: `8df97d77cf17a9ad64b22d554eaebd37`  
SHA-256: `4f3e2d11427cef293d9ae0d6f20fd7ee4373dbe530251fc6573ad35ead6e0b78`

### `BRAILLE.COM`

Size: 57,836 bytes  
MD5: `4d3108c581bc67cd3e0c49a074d2d835`  
SHA-256: `b2089f833b9f8f01b3c42636ca89972f8e233e89d7d583900116cf9e06478abf`

`BRAILLE.COM` is not entirely Braille characters; it includes newlines to make it rectangular. This allows to include some cheeky "pixel" art. Visualization below:

![braille](/hello_world/BRAILLE.png)

## Mandelbrot

A Mode 13h VGA Mandelbrot generator with the default VGA palette.

### `MEMOJI.COM`

Size: 1,092 bytes  
MD5: `95482be7ae8d8ddcefca5a1ebbc7363f`  
SHA-256: `35666a686743b66824ceb72eae7230c9c0aa392ee2ea39e4328084d330111cb5`
