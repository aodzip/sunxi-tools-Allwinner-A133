openocd -c 'adapter driver jlink' -c 'adapter speed 100' \
-c 'jtag newtap a133 tap -irlen 4 -expected-id 0x5ba00477' \
-c 'dap create a133.dap -chain-position a133.tap' \
-c 'cti create a133.cti1 -dap a133.dap -ap-num 1 -ctibase 0x81020000' \
-c 'target create a133.cpu0 aarch64 -dap a133.dap -ap-num 1 -cti a133.cti1'

Debug: 581 108 aarch64.c:2294 aarch64_examine_first(): Detected core 0 dbgbase: 81410000 apid: 44770002
Debug: 618 122 aarch64.c:2341 aarch64_examine_first(): cpuid = 0x410fd034
Debug: 619 122 aarch64.c:2342 aarch64_examine_first(): ttypr = 0x00001122
Debug: 620 122 aarch64.c:2343 aarch64_examine_first(): debug = 0x10305106
