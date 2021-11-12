    li  $v0, 1           # service 1 is print integer
    add $a0, $t0, $zero  # load desired value into argument register $a0, using pseudo-op
    syscall