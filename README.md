# Atari TOS cross compiler in vagrant

To use the cross compiler:
* vagrant up
* compile the hello wolrd program with
```
vagrant ssh -- m68k-atari-mint-gcc /vagrant/hello.c -o /vagrant/hello.tos -O2 -Wl,--traditional-format
```
* that's it you have your tos executable
```
file hello.tos
hello.tos: Atari ST M68K contiguous executable (txt=114136, dat=1544, bss=4260, sym=12488)
```
