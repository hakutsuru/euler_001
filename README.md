euler_001
========

[Project Euler](https://projecteuler.net) is a source of puzzles for those learning to code. Here is how the project is described...

     Project Euler is a series of challenging mathematical/computer
     programming problems that will require more than just
     mathematical insights to solve.

After working through the first problem though, you should realize that you are likely to learn more about math than programming. But programming is easy, it's building the dexterity and confidence to solve "real" problems that is worthwhile...

So let's not discourage anyone from hacking. But Project Euler wants us to share solutions only on their site, to discourage *cheaters* and enhance community discussion -- to this, I must chortle *nope*.

I will not be promoting this repo, and it is not expected to impress anyone.


Project Euler — Problem 1
--------------------------------------

**Multiples of 3 and 5**

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

Project Euler — Solutions
-------------------------------------

Fizzbuzz, how we love you...

**Solution 1:** Iterate over integers through 999, summing those which meet the criteria. The solution is simple and brutish. As the threshold grows, the algorithm becomes increasingly slow.

**Solution 2:** Let's be clever, and only iterate over potential candidates. Interate over multiples of 3, updating sum. Then iterate over multiples of 5 (being careful to omit multiples of 3), updating sum.

This is indeed clever, and is significantly less work, but *still suffers from the core issue — effort which grows proportional to the threshold*.

**Solution 3:** Recognize the solution may be obtained from three sums, those of multiples of 3, 5 and 15. Those sums can each be calculated from a series, using the sum of integers to the threshold divided by the multiple, e.g. 999 div 5.

Where the sum of integers to a given number n is known, e.g.  (n*n + n) / 2.

This solution is constant time, which is awesome. Yet, computers will hurt your feelings. As you increase the threshold, you are may find limitations on your data types... 

Project Euler — Logistics
-------------------------------------

Most solutions use interpreted languages and contain helpful (if minimal) comments, but I do include compiled languages.

For simplicity, each Project Euler problem will have its own environment. Solutions files are expected to be named uniquely, so it should be easy to start with any *euler* repo, and experiment with code from other problems in the series.

So I will not be configuring solution environments to run simultaneously, until there is a compelling reason.

Naturally, solutions are meant to run under unbutu, but... There will be exceptions.

For AppleScript solutions, you need to use [Script Debugger](http://www.latenightsw.com) or Script Editor. The included editor is free, but the professional IDE is worth the money if you depend on AppleScript.

For Racket, I use [DrRacket](http://racket-lang.org) running on OS X.
