#---------------------------------
# Lab 5: Pixel Conversion
#
# Name: <YOUR-NAME-HERE>
# Onyen: <YOUR-ONYEN-HERE>
#
# --------------------------------
# Below is the expected output.
# 
# Converting pixels to grayscale:
# 0
# 1
# 2
# 34
# 5
# 67
# 89
# Finished.
# -- program is finished running --
#---------------------------------
.data 0x0
	startString:	.asciiz	"Converting pixels to grayscale:\n"
	finishString:	.asciiz	"Finished."
	newline:	.asciiz	"\n"
	pixels:		.word 	0x00010000,	0x010101,	0x6,		0x3333, 
				0x030c,		0x700853,	0x294999,	-1

.text 0x3000

main:
	ori $v0, $0, 4				#System call code 4 for printing a string
	ori $a0, $0, 0x0   	 		#address of startString is in $a0
	syscall					#print the string


#------- INSERT YOUR CODE HERE -------
#
#(You may delete the comment here when you insert your code)
#
#------------ END CODE ---------------


exit:

	ori $v0, $0, 4				#System call code 4 for printing a string
	ori $a0, $0, 33  			#address of finishString is in $a0; we computed this
						#  simply by counting the number of chars in startString,
						#  including the \n and the terminating \0

	syscall					#print the string

	ori $v0, $0, 10				#System call code 10 for exit
	syscall					#exit the program

