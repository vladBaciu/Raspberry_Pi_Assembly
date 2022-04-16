Three offset modes in LDR/STR:

Offset mode uses an immediate as offset

<b> ldr   r3, [r1, #4] </b>

Offset mode uses a register as offset

<b> ldr   r3, [r1, r2] </b>

Offset mode uses a scaled register as offset

<b> ldr   r3, [r1, r2, LSL#2] </b>

How to remember the different address modes in LDR/STR:

If there is a !, it’s prefix address mode

<b> ldr   r3, [r1, #4]!
  
ldr   r3, [r1, r2]!
  
ldr   r3, [r1, r2, LSL#2]! </b>

If the base register is in brackets by itself, it’s postfix address mode

<b> ldr   r3, [r1], #4

ldr   r3, [r1], r2

ldr   r3, [r1], r2, LSL#2 </b>

Anything else is offset address mode.

<b> ldr   r3, [r1, #4]

ldr   r3, [r1, r2]

ldr   r3, [r1, r2, LSL#2] </b>
