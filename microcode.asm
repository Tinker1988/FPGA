PUSH       = 1 << 0
POP        = 1 << 1
WE_I_TOS   = 1 << 2
WE_NOS_TOS = 1 << 3
WE_Y_TOS   = 1 << 4

#ruledef {
    op {flags} => { flags`8 }
}

#bankdef bank {
    #addr 0
    #size 32
    #bits 8
    #outp 8 
}

#bank bank

nop:
    op 0

li:
    op PUSH | WE_I_TOS

add:
    op POP | WE_Y_TOS

drop:
    op POP | WE_NOS_TOS

dupe:
    op PUSH | WE_NOS_TOS