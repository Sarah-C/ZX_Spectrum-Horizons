; Disassembly of the file "C:\temp\32256src.txt"
; 
; CPU Type: Z80
; 
; Created with dZ80 2.0
; 
; on Wednesday, 21 of September 2022 at 03:38 AM
; 
; The 48k Spectrum has a print-buffer between 5B00h (23296) and 5C00h (23552), which is used for variable storage in this code.
;
; Locations such as 23606 and onwards are system variables:
; https://skoolkid.github.io/rom/buffers/sysvars.html
; 
; Comments are a work in progress as I relearn the assembly/environment.   =)

; 5b00 23296 : Pointer to next character to display
; 5b02 23298 : Pointer to next character row(byte) to display in chracter bitmap area (15360 onwards)
; 5b04 23300 : Counter for row (8 to 0)
; 5b05 23301 : ?bit number?
; 5b06 23302 : Current bit pattern for row being drawn, rotated left to get each pixel
; 5b08 23304 : X Position
; 5b09 23305 : Y Position
; 5b0a 23306 : X Position poked from BASIC
; 5b0b 23307 : Y Position poked from BASIC
; 5b0c 23308 : X Size poked from BASIC
; 5b0d 23309 : Y Size poked from BASIC
; 5b0e 23310 : Width in pixels between letters. < 8 results in pixels been rubbed out by later letters
; 5b0f 23311 : (and onwards) Text to display, ending in 255

ORG 7e00;


7e00 210f5b    ld      hl,5b0fh   ; HL = 23311       : Start of text to display
7e03 7e        ld      a,(hl)     ; A = Next ASCII to draw    *LOOP START POINT from line 61*
7e04 23        inc     hl         ; HL++
7e05 22005b    ld      (5b00h),hl ; POKE 23296, HL 
7e08 6f        ld      l,a        ; L = A            : Store the chacrter to draw in L
7e09 3c        inc     a          ; A++
7e0a c8        ret     z          ; Return if A = Zero : (If A is 255, the INC A wraps it to 0, ending the string, and returning to BASIC here)

7e0b 2600      ld      h,00h      ; H = 0
7e0d 29        add     hl,hl      ; HL = HL + HL
7e0e 29        add     hl,hl      ; HL = HL + HL
7e0f 29        add     hl,hl      ; HL = HL + HL     : HL = A * 8  (This is the offset into the character bitmaps for this char)
7e10 ed4b365c  ld      bc,(5c36h) ; BC = PEEK(23606) : Address of character bitmaps (always [0,60] 15360 for ROM)
7e14 09        add     hl,bc      ; HL = HL + BC     : Add the current character bitmap offset to the base address of the character bitmaps.
7e15 3e08      ld      a,08h      ; A = 8            : Count of bytes to draw (row count)
7e17 32045b    ld      (5b04h),a  ; POKE 23300, A    : Store count in 23300
7e1a 3a0b5b    ld      a,(5b0bh)  ; A = PEEK(23307)  : Get Y Position from BASIC
7e1d 32095b    ld      (5b09h),a  ; POKE 23305, Store Y position
7e20 3a0a5b    ld      a,(5b0ah)  ; A = PEEK(23306)  : Get X Position from BASIC *LOOP START POINT from line 69*
7e23 32085b    ld      (5b08h),a  ; POKE 23304, Store X position
7e26 3e09      ld      a,09h
7e28 32055b    ld      (5b05h),a  ; POKE 23301, 9
7e2b 7e        ld      a,(hl)     ; A = PEEK(address of character row to draw)
7e2c 23        inc     hl
7e2d 22025b    ld      (5b02h),hl ; POKE 23298, next character bitmap row to draw
7e30 07        rlca               ; Rotate A left                                *LOOP START POINT from line 91*
7e31 32065b    ld      (5b06h),a  ; POKE 23302, current pixel row rotated left
7e34 3a055b    ld      a,(5b05h)  ; A = PEEK (23301)
7e37 3d        dec     a          ; Dec bit-number counter
7e38 2032      jr      nz,7e6ch   ; GOTO NZ 70  : Jump if not done all bits in row --------------
7e3a 3a045b    ld      a,(5b04h)
7e3d 3d        dec     a          ; Dec row counter
7e3e 2018      jr      nz,7e58h   ; GOTO NZ 62 : Jump if not done all rows -------------- 
7e40 3a0e5b    ld      a,(5b0eh)  ; A = Text to display, 255=End
7e43 47        ld      b,a        ; B = A  : B is character to display
7e44 3a0c5b    ld      a,(5b0ch)  ; A = X Size
7e47 4f        ld      c,a        ; C = A  : C is X size
7e48 3a0a5b    ld      a,(5b0ah)  ; A = X Position poked from BASIC
7e4b 81        add     a,c
7e4c 05        dec     b
7e4d 20fc      jr      nz,7e4bh   ; GOTO NZ 56 --------------
7e4f 320a5b    ld      (5b0ah),a
7e52 2a005b    ld      hl,(5b00h)
7e55 c3037e    jp      7e03h      ; GOTO 19 --------------
7e58 32045b    ld      (5b04h),a
7e5b 3a0d5b    ld      a,(5b0dh)
7e5e 47        ld      b,a
7e5f 3a095b    ld      a,(5b09h)
7e62 80        add     a,b
7e63 32095b    ld      (5b09h),a
7e66 2a025b    ld      hl,(5b02h)
7e69 c3207e    jp      7e20h      ; GOTO 36 --------------
7e6c 32055b    ld      (5b05h),a
7e6f 3a0c5b    ld      a,(5b0ch)  ; 23308 : X Size
7e72 47        ld      b,a
7e73 3a095b    ld      a,(5b09h)  ;                                  *LOOP START POINT from line 89*
7e76 32075b    ld      (5b07h),a
7e79 3a0d5b    ld      a,(5b0dh)  ; 23309 : Y Size
7e7c 4f        ld      c,a
7e7d c5        push    bc         ;                                  *LOOP START POINT from line 84*
7e7e cda47e    call    7ea4h      ; **Slightly dodgy call, as it appears to jump into the middle of a multi-byte command!**
7e81 c1        pop     bc
7e82 3a075b    ld      a,(5b07h)
7e85 3c        inc     a
7e86 32075b    ld      (5b07h),a
7e89 0d        dec     c
7e8a 20f1      jr      nz,7e7dh   ; GOTO NZ 77  --------------
7e8c 3a085b    ld      a,(5b08h)
7e8f 3c        inc     a
7e90 32085b    ld      (5b08h),a
7e93 05        dec     b
7e94 20dd      jr      nz,7e73h  ; GOTO NZ 73 --------------
7e96 3a065b    ld      a,(5b06h)
7e99 c3307e    jp      7e30h     ; GOTO 43 --------------
7e9c 80        add     a,b
7e9d 40        ld      b,b
7e9e 2010      jr      nz,7eb0h  ; GOTO NZ 106????  --------------
7ea0 08        ex      af,af'
7ea1 04        inc     b
7ea2 02        ld      (bc),a
7ea3 013a8e    ld      bc,8e3ah
7ea6 5c        ld      e,h
7ea7 eeff      xor     0ffh
7ea9 47        ld      b,a
7eaa 3a8d5c    ld      a,(5c8dh)   ;  ATTR-P - Permanent current colours
7ead a0        and     b
7eae 47        ld      b,a
7eaf 3a085b    ld      a,(5b08h)
7eb2 e6f8      and     0f8h
7eb4 6f        ld      l,a
7eb5 3a075b    ld      a,(5b07h)
7eb8 fec0      cp      0c0h
7eba d0        ret     nc

7ebb 1f        rra     
7ebc 1f        rra     
7ebd 1f        rra     
7ebe e61f      and     1fh
7ec0 67        ld      h,a
7ec1 cb1c      rr      h
7ec3 cb1d      rr      l
7ec5 cb1c      rr      h
7ec7 cb1d      rr      l
7ec9 cb1c      rr      h
7ecb cb1d      rr      l
7ecd 3e58      ld      a,58h
7ecf b4        or      h
7ed0 67        ld      h,a
7ed1 3a8e5c    ld      a,(5c8eh)   ;  MASK-P - Used for transparent colours
7ed4 a6        and     (hl)
7ed5 b0        or      b
7ed6 77        ld      (hl),a
7ed7 3a075b    ld      a,(5b07h)
7eda 47        ld      b,a
7edb e607      and     07h
7edd f640      or      40h
7edf 67        ld      h,a
7ee0 78        ld      a,b
7ee1 1f        rra     
7ee2 1f        rra     
7ee3 1f        rra     
7ee4 e618      and     18h
7ee6 b4        or      h
7ee7 67        ld      h,a
7ee8 78        ld      a,b
7ee9 17        rla     
7eea 17        rla     
7eeb e6e0      and     0e0h
7eed 6f        ld      l,a
7eee 3a085b    ld      a,(5b08h)
7ef1 47        ld      b,a
7ef2 1f        rra     
7ef3 1f        rra     
7ef4 1f        rra     
7ef5 e61f      and     1fh
7ef7 b5        or      l
7ef8 6f        ld      l,a
7ef9 eb        ex      de,hl
7efa 219c7e    ld      hl,7e9ch
7efd 78        ld      a,b
7efe e607      and     07h
7f00 4f        ld      c,a
7f01 0600      ld      b,00h
7f03 09        add     hl,bc
7f04 46        ld      b,(hl)
7f05 1a        ld      a,(de)
7f06 21065b    ld      hl,5b06h
7f09 cb46      bit     0,(hl)
7f0b 2803      jr      z,7f10h  ; GOTO Z 171 --------------
7f0d b0        or      b
7f0e 12        ld      (de),a   ; Draw A to screen 
7f0f c9        ret              ; --------------

7f10 2f        cpl     
7f11 b0        or      b
7f12 2f        cpl     
7f13 12        ld      (de),a   ; Draw A to screen 
7f14 c9        ret              ; --------------

7f15 00        nop     
