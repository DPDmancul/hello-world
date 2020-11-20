#!/usr/bin/env sh

F="hello"

T="`mktemp`"

t(){
  R="`$2 | sed -e 'N;s/\\r$//' -e 's/^.*\\r//'`"
  if test "$R" = "Hello world!"; then
    echo -e "\e[32m$1: passed!\e[m"
  else
    echo -e "\e[31m$1: failed\e[m"
    echo "$R"
    # printf "%q" "$R"
  fi
}


# C*
gcc -x c -o $T $F
t "c" "$T"
g++ -x c++ -o $T $F
t "c++" "$T"

# COFFEESCRIPT
t "coffeescript" "coffee $F"

# BRAINF***
t "brainf***" "./brainf.py $F"

# JULIA
t "julia" "julia $F"

# PERL
t "perl" "perl $F"

# PHP
t "php" "php $F"

# PYTHON
t "python" "python3 $F"

# *SH
t "sh" "sh $F"
t "bash" "bash $F"
t "zsh" "zsh $F"


rm -f "$T"
