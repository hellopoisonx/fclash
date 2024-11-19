{
  description = "Flutter project";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim.url = "github:hellopoisonx/nixvim";
  };

  outputs =
    inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "aarch64-darwin"
        "x86_64-darwin"
      ];
      perSystem =
        {
          inputs',
          pkgs,
          system,
          ...
        }:
        {
          packages.ffigen-config =
            with pkgs;
            writers.writeYAML "ffigen.yaml" {
              output = "lib/clash/core_bindings.gen.dart";
              name = "CoreBindings";
              llvm-path = [ "${lib.getLib libclang}/lib/libclang.so" ];
              compiler-opts = [
                "-isystem ${lib.getLib libclang}/lib/clang/${lib.versions.major (lib.getVersion libclang)}/include/"
                "-idirafter ${stdenv.cc.libc_dev}/include/"
              ];
              headers.entry-points = [ "./core/build/${system}/core.h" ];
              library-imports.go_string = "package:fclash/clash/go_string.dart";
              type-map = {
                typedefs = {
                  GoString = {
                    "lib" = "go_string";
                    "c-type" = "GoStringDart";
                    "dart-type" = "GoStringDart";
                  };
                };
              };
            };
          devShells.default = pkgs.mkShell {
            packages = with pkgs; [
              zsh
              cmake
              pkg-config
              gdb
              cmake-format
              cmake-language-server
              clang-tools
              flutter
              go
              gopls
              go-tools
              gotools
              jq
              yamlfmt
              zenity
              (inputs'.nixvim.packages.default.extend {
                keymaps = [
                  {
                    key = "<leader>t";
                    action = "<cmd>terminal exec zsh<cr>";
                    mode = "n";
                  }
                ];
                plugins.lsp.servers = {
                  clangd.enable = true;
                  cmake.enable = true;
                  gopls.enable = true;
                };
                plugins.conform-nvim.settings.formatters_by_ft = {
                  c = [ "clang-format" ];
                  cpp = [ "clang-format" ];
                  cc = [ "clang-format" ];
                  h = [ "clang-format" ];
                  hpp = [ "clang-format" ];
                  cmake = [ "cmake_format" ];
                  dart = [ "dart_format" ];
                  go = [ "gofmt" ];
                  yaml = [ "yamlfmt" ];
                  json = [ "jq" ];
                };
                plugins.treesitter.settings.grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
                  dart
                  c
                  cpp
                  go
                  gosum
                  gomod
                  yaml
                  json
                  xml
                  markdown
                  markdown_inline
                ];
                plugins.dressing.enable = true;
                extraPlugins = with pkgs.vimPlugins; [
                  {
                    plugin = flutter-tools-nvim;
                    optional = false;
                    config = ''
                      lua << EOF
                        require("flutter-tools").setup {}
                      EOF
                    '';
                  }
                ];
              })
            ];
            builtInputs = with pkgs; [
              libclang
            ];
            shellHook = ''
              exec zsh
            '';
          };
        };
    };
}
