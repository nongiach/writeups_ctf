file ./adam_not_eve
set confirm off
start png/img-{}-{}.png
b *main+60
c
p/f $xmm0.v4_float[0]
quit
