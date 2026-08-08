

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

Hello World using displayable color Emoji. Requires an 8088 CPU or lenient emulator such as DosBox due to the UD-producing `lock lahf` prefix on most Emoji codepoints.

Size: 838 bytes  
MD5: `e7684474f9d77bcfab3fd89321a327cb`  
SHA-256: `7c0f4b56c3d929a2b4b5fff49cc9ff393b57998a609b2687205cabf0436edc31`
[Disassembly](https://dasm.martypc.net/?cpu=intel808x&segment=16&offset=00000100&eu=1&cu=0&hex_gz=H4sIAAAAAAAA_8VTSw6CMBS8ukYTF6LUonwiSZcaokV3SEK8Sy9gj-A8Kp80BXXFYvJe-2am7RC0YIWKy1fhaxGHWrAbagTkw6g5e-CpxW5eSycqm-rP8tG1L7gYRIGDFCAGlrXDkwTybpvJdkRB0KgPS01sl6HsFNaxtr8ceIvl-sNdiDIWUv-u1Ddpjd7GjqaBJWrgyML5ae1Q2DeoBCetHsBV-ZlK1_DAyp8ZgreE9Rm4G2xhzjn60PReafYX1B_RQxck8Kigp_8jBR9rfjBzqpy_AfTv2hpGAwAA)

### `HANGUL.COM`

Hello world in Korean Hangul.

Size: 552 bytes  
MD5: `50d38d1f31322b24ee9a384de0d53728`  
SHA-256: `d32d5b96913bfe793d65cbb7b7317c400e8cfc743c1f2f126ee377f47373c1ec`
[Disassembly](https://dasm.martypc.net/?cpu=intel808x&segment=16&offset=00000100&eu=1&cu=0&hex_gz=H4sIAAAAAAAA_2WRyxKCMAxFfz224LgssGBcuXUJPnkp_9Ok_2Db0Ic602GSE5rem9Dc0Cpx6uh11O-9UaA70MOZDhUKH99Br_Y4QmJyJKRG2K9C8HBhqIjTeCYHDWRktKTBIr_VEKfjlpoif6hG8d3zuXH64a5zbVj2w1uQLKAiGf5cMv0Mr5Eo3IHuOU2Qdv93lWF4iaTBcrNGJQQvqWpKfsjbsaqGvFqTZFOJbNqGpBYL3oW3Y-NbcFFAmFVmJE5mCC7EjCCx4xMmNnO1Rbug3gXEm-pjq9aAwhN8ACKMfxkoAgAA)

### `KANA.COM`

Hello World in a mix of Katakana and Hiragana. Doing this in just one or the other is left as an exercise for the reader.

Size: 609 bytes  
MD5: `8df97d77cf17a9ad64b22d554eaebd37`  
SHA-256: `4f3e2d11427cef293d9ae0d6f20fd7ee4373dbe530251fc6573ad35ead6e0b78`
[Disassembly](https://dasm.martypc.net/?cpu=intel808x&segment=16&offset=00000100&eu=1&cu=0&hex_gz=H4sIAAAAAAAA_6WOwQpAQBiEX92_KxKHFcXBhYNScuIg5GHmRUipLdNKavubnW92_4GeIQuUB2WgPcg5M-jymvt19aEEIrcobrFDDQ-aMDo6n6SMBiy5MnOzzJh9ZSzdOps0TloxGrFk_1Zjci7qv5ekNWqWTFmys8zQ0jm0-XkOl4ees2ECAAA)

### `BRAILLE.COM`

Hello World in Braille + newlines.

Size: 57,836 bytes  
MD5: `4d3108c581bc67cd3e0c49a074d2d835`  
SHA-256: `b2089f833b9f8f01b3c42636ca89972f8e233e89d7d583900116cf9e06478abf`

`BRAILLE.COM` is not entirely Braille characters; it includes newlines to make it rectangular. This allows to include some cheeky "pixel" art. Visualization below:

![braille](/hello_world/BRAILLE.png)

`BRAILLE.COM` is by necessity quite large because most of the available memory offsets are above `E000`.

## Mandelbrot

A Mode 13h VGA Mandelbrot generator with the default VGA palette.

### `MEMOJI.COM`

Mandelbrot generator in Emoji. Requires an 8088 CPU or lenient emulator such as DosBox due to the UD-producing `lock lahf` prefix on most Emoji codepoints.

Size: 1,092 bytes  
MD5: `95482be7ae8d8ddcefca5a1ebbc7363f`  
SHA-256: `35666a686743b66824ceb72eae7230c9c0aa392ee2ea39e4328084d330111cb5`
[Disassembly](https://dasm.martypc.net/?cpu=intel808x&segment=16&offset=00000100&eu=1&cu=0&hex_gz=H4sIAAAAAAAA_6VSW07DMBC8OiDRUrATO2leUHAlQJUqkiBVqKGo9C65AD4CY68hbkgpEh-jcbyzs2M7WommzTcfTahVnmolnsEZUP-CV-JkRW1YigoQ_0FbgvjWOg6SHWHSTYEnQhb7CnlqKUZ8sfwuLtC3qLtt4-NK-Y5KPnrdRj1kWHUdvbGev686MucPUYzk2AUNHbLuCwcCf8FPU3UYuAFn4uiAs3su98IFXMf4d8ZlGy7b2ZVWUYLCCdofSRTfa3VxrRVjAOoh9hg08g28AcD8RatRgTVC8FuwIC2fE4tzrGfwjvC9Qi8mBmPiicQ6II7u4JOSZhQc1ghoZO20mJ8gD9tRXo4cErnkdn9WlP30SRP6ZsX-eQQQnNHaelQ0UzTwf3DzjG5OWntmp2Vr7AXEvKR7M7ONv_UwmXEX7AZ3C3B48RjA4_A1ZeE58E57fi5TYzmxgCe7pPcw_oGgP3SKd2OTT3H12clEBAAA)