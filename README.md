Contraption I: Echo Chamber
===========================

What is a _Contraption_?
------------------------

A _Contraption_ is a work of Art. It is a beautifully grotesque landscape. It is an integration of man and machine, a system which expresses aesthetic and inquisitive properties through its very existence. It should evoke visceral reactions and provoke intrigued thoughts. It may or may not have themes: this is entirely subjective. The purpose of a contraption is similarly open to interpretation; though ultimately a contraption models a function with inputs and outputs, this is only a form that it takes. This is to say, its purpose of existence is not to fulfill this function. A contraption exists solely to be interpreted.

Okay. So what is it _really_?
-----------------------------

Haha, okay. Disregard all of that. Quite simply, a _Contraption_ is a system, composed of some subset of software, hardware, and humanware, designed to perform some normally trivial task in an _exceedingly_ convoluted way. It is a _Rube Goldberg_-inspired combination of simple, elegant components which, taken together, are an abomination upon software engineering. It should be crazy, intriguing, and comical in its absurdity.

Ideally, a contraption should spawn smiles: learning what it does and _how_ it does it should evoke a brief chuckle of befuddled amusement, maybe even a "Heh. Neat!" It is an expression of delightfully peculiar creativity that should spark conversation about what _else_ would make a cool _Contraption_. 

Alright. So what is _this_ one?
-------------------------------

This is Contraption Number One: __Echo Chamber__. We all know what `echo` does: it takes in some string of text as an argument, and prints it to `stdout`. Simple:

```
$ echo 'hello, there!'
hello, there!
```

_Echo Chamber_ does the same thing, but in a round-about way. Instead of simply printing the argument all at once, it prints each character one-by-one by hopping in and out of the runtimes of various programming languages. The chamber consists of many scripts (`echo.rb`, `echo.py`, etc.) any of which can be the starting point: you pass the text that you wish to echo into one of the scripts, it prints the first character, it creates a process for the next language in the chamber and passes the remainder of the text to it as an argument, and it annihilates itself, replacing its own process with that of the next language. This continues from language to language, character to character, until there is no remainder left to pass on. At that point, it's over.

And because of the relatively lengthy time required to kill-and-replace each process, the human observer can actually witness the string printing one character at a time. That's perhaps the most satisfying portion of it all.

![demo gif](https://raw.github.com/jessex/contraption-echo-chamber/master/demo.gif)

__Ruby -> Node -> Python -> Perl -> Ruby__

Essentially, the _Echo Chamber_ is a [tesselation](http://en.wikipedia.org/wiki/Tesselation). Because each individual script follows the exact same algorithm with the same inputs and outputs, order does not matter and no set entry or exit point need be designated. It is circular and infinite. You can insert whatever steps you want, in whatever language and order you want, as long as each component adheres to the same contract. If there are more characters to print than there are scripts in the chamber, it simply loops round and round until the entire string has been output. 

It's also a somewhat intriguing abstraction of the illusion of consciousness. Though it certainly _feels_ like a single program creating output from a single input, this is not the case. The system is not composed of a single runtime with a singular startup and termination. Instead, it is a series of isolated, discrete processes, each one performing a single piece of work before creating a new, distinct process and then ceasing to exist. The system has no concept of _I_. There are only individual moments linked in time.

Requirements
------------

You will need the runtimes of any languages found in the Echo Chamber. This initially includes Ruby (_version 1.9 and above_), Python, Perl, and Node.js. The first three should be found on any Unix machine. To run the Node.js portion of the chamber, you will need to [install Node.js](http://nodejs.org/) and install the `kexec` Node package, via `npm install kexec`.

Final Notes
-----------

I intend to occasionally toss in new languages, just for the hell of it. Brainfuck, here I come! These are all interpreted languages so far, but I would like to add a few select compiled languages, too. I will likely add a `bin/compile` script which one can run before entering the chamber to ensure that all compiled components are ready.

If you have a language that you'd like to add to the Echo Chamber, or you have a modification you'd like to make to a current language, feel free to fork this contraption. Art is collaborative!
