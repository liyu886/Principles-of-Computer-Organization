.data 0x0
x:    .space 4
y:    .space 4

.text 0x3000
.globl main
main:
     sw    $0,x         # x = 0;
     addi  $9,$0,1      # y = 1;
     sw    $9,y
     lw    $8,x
while:                  # while (y < 100) {
     slti  $10,$9,100
     beq   $10,$0,endw
     add   $10,$0,$8    #     int t = x;
     add   $8,$0,$9     #     x = y;
     sw    $8,x
     add   $9,$10,$9    #     y = t + y;
     sw    $9,y
     j     while        # }
endw:ori $v0, $0, 10				#System call code 10 for exit
	syscall					#exit the program
