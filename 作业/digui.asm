.data 0x10010000
x:      .word 10
.text 0x400000
.globl main
main:
     lw    $a0,x         # allocate register for i
     beq	$0,$0,then
sqr:	addiu	$sp,$sp,-8
	sw	$ra,4($sp)
	sw	$a0,0($sp)
	slti	$t0,$a0,2
beq	$t0,$0,then
move	$v0,$a0
beq	$0,$0,rtn	
then:
addi	$a0,$a0,-1
jal	sqr
lw	$a0,0($sp)
add	$v0,$v0,$a0
add	$v0,$v0,$a0
addi	$v0,$v0,-1
rtn:
lw	$ra,4($sp)
	addiu	$sp,$sp,8
jr	$ra
