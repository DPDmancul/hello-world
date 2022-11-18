#! /bin/sh

T=$(mktemp)

t(){
  R=$(sh -c "$2" | sed -e 'N;s/\r$//' -e 's/^.*\r//')
  if test "$R" = "Hello world!"; then
    printf "\033[32m%s: passed!\033[m\n" "$1"
  else
    printf "\033[31m%s: failed\033[m\n" "$1"
    echo "$R"
    # printf "%q" "$R"
  fi
}


# Agda
t "agda" "temp=\$(mktemp --directory) && cp $1 \$temp/hello.lagda && cd \$temp && agda --compile hello.lagda > /dev/null && ./hello"

# C*
t "c" "gcc -x c -o $T $1 && $T"
t "c++" "g++ -x c++ -o $T $1 && $T"
t "obj-c" "clang -x objective-c -o $T $1 && $T"

# COFFEESCRIPT
t "coffeescript" "coffee $1"

# BRAINF***
t "brainf***" "./brainf.py $1"

# Haskell
t "haskell" "temp=\$(mktemp --suffix=.lhs) && cp $1 \$temp && runghc \$temp"

# JULIA
t "julia" "julia $1"

# NIM
t "nim" "temp=\$(mktemp --suffix=.nim -t tmpXXX) && cp $1 \$temp && nim c -r \$temp 2> /dev/null"

# PERL
t "perl" "perl $1"

# PHP
t "php" "php $1"

# PYTHON
t "python" "python3 $1"

# RAKU
t "raku" "raku $1"

# RUBY
t "ruby" "ruby $1"

# Rust
t "rust" "rustc -o $T $1 && $T"

# *SH
t "sh" "sh $1"
t "bash" "bash $1"
t "zsh" "zsh $1"
t "fish" "fish -N $1"

rm -f "$T"
