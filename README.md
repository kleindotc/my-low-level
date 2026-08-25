# my-low-level

> A personal laboratory to understand how things work from the most basic.

My personal project where I'm learning building operating systems from scratch:

- writing boot loaders.
- firmware.
- kernels.
- and other fundamental pieces of software infrastructure.

Let's see if I survive.

## Supported Stack

These are the tools that will be used in the development
of this project.

| Categories      | Tools                                  |
|-----------------|----------------------------------------|
| Languages       | C/C++, Zig, Rust                       |
| Assembly        | x86/64 (NASM, FASM, YASM), ARM, RISC-V |
| Hardware Design | VHDL                                   |

The compatibility of [assembly.nix](./assembly.nix) and [vhdl.nix](./vhdl.nix)
thanks to [klein.c](https://github.com/kleindotc).

You can see the PR's to support assembly and vhdl in devenv here:

- [feature/add new languages support (ada/assembly/vhdl) #3118](https://github.com/cachix/devenv/pull/3118)

>~~- [feat: Add Assembly language support - #3078](https://github.com/cachix/devenv/pull/3078)~~
>~~- [feat: Add VHDL language support - #3077](https://github.com/cachix/devenv/pull/3077)~~

---

License: AGPL-3.0+
