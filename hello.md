# Hello world!

Davide Peressoni (davide.peressoni@tuta.io)

[← Back](README.md)

## How does it work?

In the following C will state C, C++ and Objective-C.

```php hello
 #/*/**/if 0 //<?php echo "\r"; /*
```
- `#` comments out the line for CoffeeScript, Julia, Nim, Perl, Python, Raku, Ruby and *sh.
- `/*/**/` starts a comment for C and Rust. It is also closed for C, but not for Rust.
- `#if 0` starts a "preprocessor comment" for C and the `//` discards the remaining of the line for it.
- `<?php` starts the PHP interpreter and `echo "\r";` makes the upcoming `echo` to override what was written before the begin of the PHP section.
- `/*` comments out the following lines for PHP.
- The space before `#` is required by Haskell. The same will be for every line starting with `#`.

```nim hello +=
 #[
```
- starts a comment block for Nim
- comments out the line for CoffeeScriptm Julia, Perl, Python, Raku, Ruby and *sh.

```coffee hello +=
 ###
```
- starts a block comment for CoffeeScript.
- comments out the line for Julia, Perl, Python, Raku, Ruby and *sh.

```raku hello +=
 #`{{
```
- starts a comment block for Raku
- comments out the line for Julia, Perl, Python, Ruby and *sh.

```julia hello +=
 #=
```
- starts a block comment for Julia.
- comments out the line for Perl, Python, Ruby and *sh.

```perl hello +=
q="""" ":" "=; q^"
```
- `q=` starts a multi-line string for Perl. It ends with `=;` and `q^` reopens it with another delimiter (`^` instead of `=`). This is necessary because otherwise the following `=begin` would be an error for Perl. We cannot use `q^` before because it would have been an error for *sh.
- `q="""` is a valid instruction in Python, which opens a multi-line string.
- `q="""" ":" "=; q^"` is a valid instruction in *sh and Ruby

```ruby hello +=
true || \
=begin
```
- `=begin` opens a block comment for Ruby.
- The whole is correct syntax for both Ruby and *sh (for short-circuit evaluation the `=begin` part is not executed by *sh).


```php hello +=
 ###
 #*/
 ###]#
```
- `*/` closes the block comment for PHP. `]#` closes it for Nim.
- Since `*/` is not allowed into CoffeeScript block comments we must close it and reopen after (`###`).
- The leading `#` comments the line
    + in all tree lines for *sh,
    + in the second line for CoffeeScript,
    + in the last line for PHP.

```sh hello +=
echo "Hello world!"; ##[]
```
- Prints "Hello world!" for Nim, PHP and *sh. The `;` is mandatory for PHP.
- `#[` re-opens a block comment for Nim.
- The double hash prevents PHP for interpreting `#[]` as an attribute.
- The closed `]` is for Brainf***: it closes a never-executing loop.

```php hello +=
exit
/* :' 
 ###
 #*/
 ###
("\n\r"); ?>
```
- `exit` stops the execution for *sh.
- `exit("\n\r");` stops the execution for PHP causing a flush.
- `?>` closes the PHP section.
- `:'` comments out (until the next `'`) the code for fish. This part is not executed by fish (thanks to the previous `exit`) but fish will anyway check its syntax is correct.
- `/*` opens a comment for PHP without harming *sh (already exited). This comment is closed with the same technique of before to not have errors in CoffeeScript.

```brainfuck hello +=
++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<++++++++.--------.+++.------.--------.>+.>..>[
```
- Reachable only by Brainf***
- Prints "Hello world!" for Brainf***

Note also that:
- Brainf*** discards all which is not `. , + - < > [ ]`. Before this point these symbols are not present, except a pair of balanced `< >` and `[]` which does nothing.
- The last `>[` will open a loop for Brainf*** which will be executed zero times. This will cause Brainf*** to discard the rest of the code.

```c hello +=
 #endif
```
Closes the preprocessor comment for C.

```c hello +=
 #include<stdio.h>

int main(){
  printf("Hello world!\n");
  return 0;
}
```
Prints the "Hello world!" for C.

```c hello +=
 #if 0
```
Reopens the preprocessor comment for C and C++.

```go hello +=
 ###
 console.log "Hello world!"
 ###
```
- `###` ends block comment for CoffeeScript and then reopens it.
-
  ```coffee 
  console.log "Hello world!"
  ```
  prints "Hello world!" for CoffeeScript

```julia hello +=
=#
println("Hello world!")
 #=
```
- Prints "Hello world!" for Julia.
- `=#` closes the block comment for Julia and `#=` opens another.

```haskell hello +=
\begin{code}%
open import Agda.Builtin.IO
open import Agda.Builtin.String
data Unit : Set where
  tt : Unit
{-# COMPILE GHC Unit = data () (()) #-}
postulate
  putStrLn : String -> IO Unit
{-# FOREIGN GHC import qualified Data.Text as T #-}
{-# COMPILE GHC putStrLn = putStrLn . T.unpack #-}
\end{code}%
```
- Prepares Agda to print to stdout.
- Thanks to the two `%` is not evaluated by Haskell.
- It is, together with the following, the only part of literate Agda evaluated.

```haskell hello +=
\begin{code}
main = putStrLn "Hello world!"
\end{code}
```
Prints "Hello world!" for Haskell and Agda.  
It is the only part of literate Haskell evaluated.

```py hello +=
=end
" """
 #}}
 # ^;
```
- `=end` closes the multi-line comment for Ruby.
- `"""` closes the Python multi-line string. The leading `" ` is required by Ruby and C to balance quotes.
- `}}` closes the multi-line comment for Raku.
- `^;` closes the Perl multi-line string.
- `#` comments the line for Python, Raku and Ruby.

```py hello +=
print("Hello world!");
```
Prints "Hello world!" for Python, Perl, Raku and Ruby.  
Note that:

- `()` is mandatory only in Python;
- `;` is mandatory only in Perl.

```go hello +=
 # =###
```
- `#` comments the remain of the line for Python, Perl, Raku and Ruby.
- `=#` closes the block comment for Julia.
- `###` ends block comment for CoffeeScript and comments the remain of the line for Julia.

```rust hello +=
 #*/[doc=r"\"] #[doc="
```
- `#` comments the remain of the line for Python, Perl, Julia, Raku, Ruby and CoffeeScript.
- `*/` closes the block comment, opened on first line, for Rust.
- `#[doc=r"\"]` is a doc comment for Rust, but since C and C++ don't support raw literal strings the string is not closed for them and it will be closed by the next doc comment.
- `#[doc="` starts another doc comment for Rust which will be closed later and closes the string for C. The leading space avoids a `]#`, which would close the multi-line Nim comment.

  The last two points are needed to comment out `#endif` for Rust and make C not complain for unclosed strings.

```c hello +=
 #endif //"] fn main(){println!("Hello world!")} // []#]## #'
```
- `#` comments the remain of the line for Python, Perl, Julia, Raku, Ruby and CoffeeScript.
- `#endif` Closes the preprocessor comment for C.
- `//` comments out the rest of the line for C.
- `"]` closes the doc comment for Rust.
- ```rust
  fn main(){println!("Hello world!")}
  ```
  prints "Hello world!" for Rust.
- `//` comments out the rest of the line for Rust.
- `[]` balances brackets for Brainf***.
- The first `]#` closes inner comment for Nim (opened for Rust doc comment).
- The second `]#` closes the outer multi-line comment for Nim (opened at the beginning).
- `'` closes the string for fish, the leading `#` comments it for Nim avoiding unclosed quotes.

