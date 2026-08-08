; 17-byte 8088 payload decoder
; On entry DI points immediately beyond it, at the encoded payload

bits 16
org 0

    push di
    pop  si                         ; SI = encoded emoji data
    mov  di,0100h
    push di                         ; RET target after reconstruction
    mov  cx,25

.decode:
    lodsw                           ; discard the fixed F0 9F prefix
    lodsw                           ; AL=third UTF-8 byte, AH=fourth
    aad  8Fh                        ; AL=(AL + 8Fh*AH) & FFh; AH=0
    stosb
    loop .decode
    ret                             ; execute reconstructed COM at 0100h

%if $-$$ != 17
    %error "decoder must remain exactly 17 bytes"
%endif