# hasekll_training

  Little haskell training bits.
  Im using the following two resources to get my self a haskell education.

## Why?

  The primary focus of this repo is purely personal. It is a place to keep a  diary of my haskell learnings. 

## Code 

  All code will be commented and executed to make sure it works. 
  There will examples that differ from the books for a test of my memory.

## Resources 

  The primary resource of the material is from [learnyouahaskell](http://www.learnyouahaskell.com) and [standfords intro to haskell](http://www.seas.upenn.edu/~cis194/spring13/lectures/01-intro.html). 

===

### Learnyouahaskell :: [*Chapter 1*](./chapter_1)

  The first Chapter seems to be pretty basic and just talks how to get started on haskell.

### Learnyouahaskell :: [*Chapter 2*](./chapter_2)

  The second chapter starts to get into code, the basics of haskell and some common functions. 

  It ends of list comprehensions which seem a bit weird to me coming from a JS background, but I think I just need to play around a bit more with it.

### Learnyouahaskell :: [*Chapter 3*](./chapter_2)

  Chapter 3 is really explaining what types and type class's are. There is not much to actually do but just read most of the chapter.

### Learnyouahaskell :: [*Chapter 4*](./chapter_3)

  Chapter 4 dives into more of the function syntax. Cases, pattern matching, let, and where. I like this chapter cause its start to get more into the coding.

### Learnyouahaskell :: [*Chapter 5*](./chapter_4)

#### [Recursion](./chapter_4/recursion.hs) 

  Im familiar with recursion but have always found it a little bit difficult. Haskell seems to use recusive functions a lot, because in Haskell there are no loops; loops like we have in Java and Javascript and C++. This is going to be a mind shift...

#### [Higher-Order functions]
  
  In this chapter of the book the author trys to give us a understanding of currying functions. I've used currying in JS before, but not every function declared. In Haskell all function are curried. Instead of having params we each parameter is a function that returns another function only if the last function is specified to return a value. It quite easy to nice to use currying but im still unfamiliar to when I would need to use it in a slightly diffrent way.
  
  This chapter also goes over lamdas. Which are anoymus functions. This actually quite like JS where we use map and reduce for things.

#### [Folds and maps]

  In Haskell we do recursion quiet a lot to iterarte over lists. Becasue we do this so much the core Haskell has some nice functions to do that for us.
  Haskell's core gives us Foldables and Mappables. Which are essenstially things we can iterate over and apply function too. Maps a functions that take a list and return a list folds are functions that take a list and an optional starting point and reduce a list to one value. Compared to JS they are very similar. The concepts still apply but the syntax is quiet different. 




    
