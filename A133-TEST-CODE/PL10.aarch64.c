void main()
{
    (*((int *)0x07022004)) = 0x00007177;
}
/*
    movz x0, #0x2004
    movk x0, #0x702, lsl #16
    movz w1, #0x7177
    str w1, [x0]
*/