.data 0x0
sum:    .space 4
i:      .space 4
a:      .word 7,8,9,10,8

.text 0x3000
.globl main
main:
     sw    $0,sum       # sum = 0;
     sw    $0,i         # for (i = 0;
     lw    $9,i         # allocate register for i
     lw    $8,sum       # allocate register for sum
loop:
     sll   $10,$9,2     # covert "i" to word offset
     lw    $10,a($10)   # load a[i]
     addu  $8,$8,$10    # sum = sum + a[i];
     sw    $8,sum       # update variable in memory
     addi  $9,$9,1      # for (...; ...; i++
     sw    $9,i         # update memory
     slti  $10,$9,5     # for (...; i<5;
     bne   $10,$0,loop
end: 	ori $v0, $0, 10				#System call code 10 for exit
	syscall					#exit the program