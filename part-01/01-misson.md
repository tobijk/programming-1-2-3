-------------------------------------------------------------------------------

subject: Programming 1-2-3
title: Programming Text Adventures
subtitle: Part 01
author: Tobias Koch &lt;<tobias.koch@gmail.com>&gt;
date: 1 April 2023

document_type: article
bcor: 0cm
div: 16
lang: en_US
papersize: a4
parskip: half
secnumdepth: 0
secsplitdepth: 0
tocdepth: 5

-------------------------------------------------------------------------------

Your Mission
===============================================================================

Your mission, should you choose to accept it, is to program a Text Adventure
game. While there are more modern and easier-to-learn programming languages, we
will be using the C Programming Language because it can teach one a lot about
how computers work and it is still relevant and widely used. Once you have
mastered C, it will be easy for you to move on to other programmig languages
and frameworks.


About Text Adventures
===============================================================================

Some of the earliest computer games were [Text Adventures][1]. During a time
when computers didn't yet have fancy graphics capabilities, Text Adventures were
a simple way of building immersive, interactive experiences through written
story telling.

In a way, Text Adventures are like interactive books. The player is given a
description of their surroundings, such as the following:

> *You find yourself in a dark, gloomy room without windows. There are two
> doors, one on the southern wall and one on the eastern wall. In the middle
> of the room is a table. On the northern wall is a book shelf, in the
> south-west corner is a wooden chest.*

The player is then given choices on how to proceed. They can

* walk around,
* inspect objects,
* open and go through doors,
* interact with creatures they might encounter on their journey,
* etc.

*How* the player interacts with the game depends on how sophisticated the game
engine is. In simple games, the player may simply be given a list of options
to choose from. More advanced Text Adventure game engines may provide a command
prompt where the player can enter actions such as

* <qq>walk south</qq>
* <qq>open door</qq>
* <qq>pick up object</qq>
* ...

In this tutorial series, we will start simple and then improve our game engine
over time.


Initial Research
===============================================================================

Before we start programming, you should make yourself familiar with the Text
Adventure game genre. One of the most popular text adventures games of all
times is [Zork][2].

Please perform the following tasks:

1. Use a search engine to find and download the Zork game files.

2. Find out how Zork can be played on Linux (in particular Debian Linux).

3. Install the necessary software to run Zork.

4. Play Zork.


Preparation
===============================================================================

In order to be able to compile programs written in C, we need a C compiler. On
Linux there are several options, but the most widely-used compilers are GCC and
Clang. Please make sure that you have installed either of them. If there is no
working C compiler on your system, find out how to install one.

You will also need a text editor. As you advance in your programming career, you
may start to prefer smart code editors and integrated development environments
(IDE). For the beginning a simple text editor should be enough. Please make sure
that the text editor <qq>gedit</qq> is installed on your system and that you can
launch it. If it is missing or you cannot launch it, find out how to do that.

Start gedit, then paste the following into the editor window:

```c
#include <stdio.h>

int main(int argc, char **argv) {
    printf("Hello, World!\n");
    return 0;
}
```

Save this file under the name `hello.c`. Then use your C compiler to compile the
program into a binary executable. If you are using GCC, the command to do so may
look like this:

```sh
gcc -o hello hello.c
```

If everything goes according to plan, you should find a file name `hello` in the
same directory.

Oh, you don't know where to insert this command!

You will need to run this on the command line. To get a command line prompt,
you need a terminal emulator. Usually a terminal emulator comes pre-installed
with your operating system. Search for <qq>Terminal</qq> and you will probably
be able to find it. Launch a terminal, find your C program file and compile it
as described above.


Summary and Outlook
===============================================================================

In this tutorial you learned about the Text Adventure game genre. You
familiarized yourself with the game <qq>Zork</qq>. And you installed all the
tools required to do some programming in C. You even compiled your first
program!

In the following parts of this tutorial series, we will slowly build up our
programming skills to the point where we will be able to program a full-blown
Text Adventure!


[1]: https://en.wikipedia.org/wiki/Interactive_fiction
[2]: https://en.wikipedia.org/wiki/Zork
