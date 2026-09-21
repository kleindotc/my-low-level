{
  name = "my-low-level";

  languages.nix.enable = true;

  profiles = {
    dev-hdl.module = {
      imports = [
        ./nix/modules/vhdl.nix
        ./nix/modules/verilog.nix
      ];
      languages.vhdl = {
        enable = true;
        compiler = "nvc";
      };
      languages.verilog.enable = true;
    };
    dev-asm.module = {
      imports = [
        ./nix/modules/assembly.nix
      ];
      languages.assembly.enable = true;
    };
    dev-lean.module = {
      languages.lean4.enable = true;
      git-hooks.hooks = {
        lean4-lint = {
          enable = true;
          name = "Lean4 Lint";
          entry = "lake lint";
          files = "\\.lean$";
          types = [
            "text"
            "lean"
          ];
          pass_filenames = true;
        };
      };
    };
    dev-rust.module = {
      languages.rust.enable = true;
      git-hooks.hooks = {
        rustfmt.enable = true;
        clippy.enable = true;
      };
    };
    dev-c.module = {
      languages.c.enable = true;
      languages.cplusplus.enable = true;
      git-hooks.hooks = {
        clang-format = {
          enable = true;
          files = "\.(cpp,cp,cc,cxx,c++,cuh,h,hpp,hh,hxx,h++,m,mm)$";
        };
        clang-tidy = {
          enable = true;
          files = "\.(cpp,cp,cc,cxx,c++,cuh,h,hpp,hh,hxx,h++,m,mm)$";
        };
        cmake-format = {
          enable = true;
          files = "(^|/)CMakeLists\.txt$|\.cmake$";
        };
        checkmake = {
          enable = true;
          files = "(^|/)Makefile$|\.mk$";
        };
      };
    };
    dev-zig.module = {
      languages.zig.enable = true;
      git-hooks.hooks.zig-fmt = {
        enable = true;
        name = "zig fmt";
        entry = "zig fmt";
        files = "\.(zig|zon)$";
        tpyes = [ "file" ];
        pass_filenames = true;
      };
    };
  };

  difftastic.enable = true;

  git-hooks.hooks = {
    shellcheck.enable = true;
    shfmt.enable = true;
    nixfmt.enable = true;
    statix.enable = true;
    deadnix.enable = true;
  };
}
