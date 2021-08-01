# FuseSoC demo

Prereq:
 - Get the or1k newlib toolchain: https://github.com/stffrdhrn/gcc/releases
 - Install fusesoc: https://fusesoc.readthedocs.io/en/stable/user/installation.html

Compiling our c program:


```
or1k-elf-gcc hello.c -o hello.elf
```

Setting up FuseSoC

```
fusesoc library list
fusesoc library add mor1kx /home/shorne/work/openrisc/local-cores/mor1kx
fusesoc library add mor1kx-generic /home/shorne/work/openrisc/local-cores/mor1kx-generic
fusesoc library add elf-loader /home/shorne/work/openrisc/local-cores/elf-loader
```

Try it (demo when you get a failure)
```
fusesoc run --tool icarus --target mor1kx_tb ::mor1kx-generic:1.1 --elf_load ./hello.elf --vcd
```

Fail and try again:

```
fusesoc library list
fusesoc library add intgen https://github.com/stffrdhrn/intgen.git
```

```
fusesoc run --tool icarus --target mor1kx_tb ::mor1kx-generic:1.1 --elf_load ./hello.elf --vcd
```
