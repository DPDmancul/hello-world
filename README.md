# Hello world!

Davide Peressoni (davide.peressoni@tuta.io)

An "Hello world!" which works in:

  1. (Literate) Agda
  1. C
  1. C++
  1. Objective-c
  1. CoffeeScript
  1. Brainf***
  1. (Literate) Haskell
  1. Julia
  1. Nim
  1. Perl
  1. PHP
  1. Python
  1. Raku
  1. Ruby
  1. Rust
  1. *sh (sh, bash, zsh, ...)
  1. fish
  
## Explanation
See [How does it work?](hello.md)
  
## Usage

  1. `temp=$(mktemp --directory) && cp hello "$temp/hello.lagda" && cd "$temp" && agda --compile hello.lagda && ./hello`
  1. `gcc -x c hello && ./a.out`
  1. `g++ -x c++ hello && ./a.out`
  1. `clang -x objective-c hello && ./a.out`
  1. `coffee hello`
  1. `./brainf.py hello`
  1. `temp=$(mktemp --suffix=.lhs) && cp hello "$temp" && runghc "$temp"`
  1. `julia hello`
  1. `temp=$(mktemp --suffix=.nim /tmp/tmpXXX) && cp hello "$temp" && nim c -r "$temp"`
  1. `perl hello`
  1. `php hello`
  1. `python3 hello`
  1. `raku hello`
  1. `ruby hello`
  1. `rustc hello -o hello.out && ./hello.out`
  1. `sh hello`, `bash hello`, `zsh hello`
  1. `fish hello`

## Automatic test

```sh
make test
```

You can optionally pull all dependencies with

```sh
nix-shell --pure --run make
```

## License
Released under MIT license

