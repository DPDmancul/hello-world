# Hello world!

Davide Peressoni (dp.d-@live.it)

[← Back](README.md)

## How does it work?


```php
#/*/**/if 0 //<?php echo "\r"; /*
```
- `#` comments out the line for CoffeeScript, Julia, Perl, Python and *sh.
- `/*/**/` starts a comment for C, C++ and Rust. It is also closed for C and C++, but not for Rust.
- `#if 0` starts a "preprocessor comment" for C and C++ and the `//` discards the remaining of the line for them.
- `<?php` starts the PHP interpreter and `echo "\r";` makes the upcoming `echo` to override what was written before the begin of the PHP section.
- `/*` comments out the following lines for PHP.

```coffee
###
```
- starts a block comment for CoffeeScript.
- comments out the line for Julia, Perl, Python and *sh.

```julia
#=
```
- starts a block comment for Julia.
- comments out the line for Perl, Python and *sh.

```perl
q=0
```
- `q=` starts a multi-line string for Perl.
- `q=0` is a valid instruction in Python and *sh.

```py
""":"
```
- `"""` starts a multi-line string for Python.
- The `:` makes *sh happy even if the `""""` isn't valid for it.

```php
###
#*/
###
```
- `*/` closes the block comment for PHP.
- Since `*/` is not allowed into CoffeeScript block comments we must close it and reopen after (`###`).
- The leading `#` comments the line
    + in all tree lines for *sh,
    + in the second line for CoffeeScript,
    + in the thirdh line for PHP.

```sh
echo "Hello world!";
```
Prints "Hello world!" for *sh and PHP.  
The `;` is mandatory for PHP.

```php
exit
("\n\r"); ?>
```
- `exit` stops the execution for *sh.
- `exit("\n\r");` stops the execution for PHP causing a flush.
- `?>` closes the PHP section.

```brainfuck
++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<++++++++.--------.+++.------.--------.>+.>..>[
```
- Reachable only by Brainf***
- Prints "Hello world!" for Brainf***

Note also that:
- Brainf*** discards all which is not `. , + - < > [ ]`. Before this point these symbols are not present, except a pair of balanced `< >` which does nothing.
- The last `>[` will open a loop for Brainf*** which will be executed zero times. This will cause Brainf*** to discard the rest of the code.

```c
#endif
```
Closes the preprocessor comment for C and C++.

```c
#include<stdio.h>

int main(){
  printf("Hello world!\n");
  return 0;
}
```
Prints the "Hello world!" for C and C++.

```c
#if 0
```
Reopens the preprocessor comment for C and C++.

```perl
=; q^
=#
```
- `=#` closes the block comment for Julia.
- `=;` closes the multi-line string for Perl and `q^` reopens it with another delimiter (`^` instead of `=`). This is necessary because otherwise the following `=#` would be an error for Perl. We cannot use `q^` before because it would have been an error for *sh.

```julia
println("Hello world!")
```
Prints "Hello world!" for Julia.

```julia
#=
```
Reopens a block comment for Julia.

```py
//"""
# ^;
```
- `"""` closes the Python multi-line string.
- `^;` closes the Perl multi-line string.
- `//` prevents C and C++ raise error for non closed quotes.
- `#` comments the line for Python.

```py
print("Hello world!");
```
Prints "Hello world!" for Python and Perl.  
Note that:

- `()` is mandatory in Python but not in Perl
- `;` is mandatory in Perl but not in Python.

```go
# =### console.log "Hello world!" #]
```
- `#` comments the remain of the line for Python and Perl.
- `=#;` closes the block comment for Julia.
- `###` ends block comment for CoffeeScript and comments the remain of the line for Julia.
- ```coffee 
  console.log "Hello world!"
  ```
  prints "Hello world!" for CoffeeScript
- `#` comments the remain of the line for CoffeeScript.
- `]` closes the loop for Brainf***.

```rust
#*/[doc=r"\"]#[doc="
```
- `#` comments the remain of the line for Python, Perl, Julia and CoffeeScript.
- `*/` closes the block comment, opened on first line, for Rust.
- `#[doc=r"\"]` is a doc comment for Rust, but since C and C++ don't support raw literal strings the string is not closed for them and it will be closed by the next doc comment.
- `#[doc="` starts another doc comment for Rust which will be closed later and closes the string for C and C++.

  The last two points are needed to comment out `#endif` for Rust and make C and C++ not complain for unclosed strings.

```c
#endif //"] fn main(){println!("Hello world!")}
```
- `#` comments the remain of the line for Python, Perl, Julia and CoffeeScript.
- `#endif` Closes the preprocessor comment for C and C++.
- `//` comments out the rest of the line for C and C++.
- `"]` closes the doc comment for Rust.
- ```rust
  fn main(){println!("Hello world!")}
  ```
  prints "Hello world!" for Rust.


## How is the code viewed for ...

### C and C++
```c
#/*/**/if 0 //<?php echo "\r"; /*

###
#=
q=0
""":"

###
#*/
###

echo "Hello world!";
exit
("\n\r"); ?>

++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<++++++++.--------.+++.------.--------.>+.>..>[

#endif

#include<stdio.h>

int main(){
  printf("Hello world!\n");
  return 0;
}

#if 0

=; q^
=#
println("Hello world!")
#=

//"""
# ^;
print("Hello world!");

# =### console.log "Hello world!" #]

#*/[doc=r"\"]#[doc="
#endif //"] fn main(){println!("Hello world!")}

```
### CoffeeScript
```coffee
#/*/**/if 0 //<?php echo "\r"; /*

###
#=
q=0
""":"

###
#*/
###

echo "Hello world!";
exit
("\n\r"); ?>

++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<++++++++.--------.+++.------.--------.>+.>..>[

#endif

#include<stdio.h>

int main(){
  printf("Hello world!\n");
  return 0;
}

#if 0

=; q^
=#
println("Hello world!")
#=

//"""
# ^;
print("Hello world!");

# =### console.log "Hello world!" #]

#*/[doc=r"\"]#[doc="
#endif //"] fn main(){println!("Hello world!")}
```

### Brainf***
```brainfuck
#if 0 //<?php echo "\r"; /*

###
#=
q=0
""":"

###
#*/
###

echo "Hello world!";
exit
("\n\r"); ?>

++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<++++++++.--------.+++.------.--------.>+.>..>[

#endif

#include<stdio.h>

int main(){
  printf("Hello world!\n");
  return 0;
}

#if 0

=; q^
=#
println("Hello world!")
#=

//"""
# ^;
print("Hello world!");

# =### console.log "Hello world!" #]
#endif
```
### Julia
```julia
#/*/**/if 0 //<?php echo "\r"; /*

###
#=
q=0
""":"

###
#*/
###

echo "Hello world!";
exit
("\n\r"); ?>

++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<++++++++.--------.+++.------.--------.>+.>..>[

#endif

#include<stdio.h>

int main(){
  printf("Hello world!\n");
  return 0;
}

#if 0

=; q^
=#
println("Hello world!")
#=

//"""
# ^;
print("Hello world!");

# =### console.log "Hello world!" #]

#*/[doc=r"\"]#[doc="
#endif //"] fn main(){println!("Hello world!")}
```
### Perl
```perl
#/*/**/if 0 //<?php echo "\r"; /*

###
#=
q=0
""":"

###
#*/
###

echo "Hello world!";
exit
("\n\r"); ?>

++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<++++++++.--------.+++.------.--------.>+.>..>[

#endif

#include<stdio.h>

int main(){
  printf("Hello world!\n");
  return 0;
}

#if 0

=; q^
=#
println("Hello world!")
#=

//"""
# ^;
print("Hello world!");

# =### console.log "Hello world!" #]

#*/[doc=r"\"]#[doc="
#endif //"] fn main(){println!("Hello world!")}
```
### PHP
```php
#/*/**/if 0 //<?php echo "\r"; /*

###
#=
q=0
""":"

###
#*/
###

echo "Hello world!";
exit
("\n\r"); ?>
```
### Python
```py
#/*/**/if 0 //<?php echo "\r"; /*

###
#=
q=0
""":"

###
#*/
###

echo "Hello world!";
exit
("\n\r"); ?>

++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<++++++++.--------.+++.------.--------.>+.>..>[

#endif

#include<stdio.h>

int main(){
  printf("Hello world!\n");
  return 0;
}

#if 0

=; q^
=#
println("Hello world!")
#=

//"""
# ^;
print("Hello world!");

# =### console.log "Hello world!" #]

#*/[doc=r"\"]#[doc="
#endif //"] fn main(){println!("Hello world!")}
```
### Rust
```rust
#/*/**/if 0 //<?php echo "\r"; /*

###
#=
q=0
""":"

###
#*/
###

echo "Hello world!";
exit
("\n\r"); ?>

++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<++++++++.--------.+++.------.--------.>+.>..>[

#endif

#include<stdio.h>

int main(){
  printf("Hello world!\n");
  return 0;
}

#if 0

=; q^
=#
println("Hello world!")
#=

//"""
# ^;
print("Hello world!");

# =### console.log "Hello world!" #]

#*/[doc=r"\"]#[doc="
#endif //"] fn main(){println!("Hello world!")}
```

### *sh
```sh
#/*/**/if 0 //<?php echo "\r"; /*

###
#=
q=0
""":"

###
#*/
###

echo "Hello world!";
exit
```
