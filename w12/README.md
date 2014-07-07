## Algorithms!

* (the story of the little-o that could)
 * Why do we care? (30 min)
  * What's an algorithm (You knew Wikipedia was coming: http://en.wikipedia.org/wiki/Algorithm)
  * Useful!
    * Where are algorithms used
      * besides Array#sort
      * Machine Learning (Chess, Go, Backgammon...)
      * Complex problem solving, e.g. genetic algorithms ( http://www.theprojectspot.com/tutorial-post/creating-a-genetic-algorithm-for-beginners/3 )
      * http://drewblaisdell.github.io/astar-javascript-pathfinder/
      * Graphics
        * https://github.com/lewispollard/pixi-raycast
        * http://www.stephanboyer.com/post/30/real-time-ray-tracing-in-javascript
        * http://bost.ocks.org/mike/algorithms/
      * Encryption
      * Even the game of life has algorithms. The implementation of the game of life is an algorithm.
        * https://github.com/erming/game-of-life
      * 64k demos
        * http://en.wikipedia.org/wiki/64k_intro
  * Efficiency - his helps to understand bigger problems and write scalable code
    * Restrictions: time, memory, processing power, data set sizes.
    * "Good enough": http://en.wikipedia.org/wiki/Fast_inverse_square_root#Overview_of_the_code
 * Benchmarking (90 min)
   * Show the Benchmark module. Quickly show a benchmark example.
   * Read results
   * Groups benchmark Array#sort AND (random / nearly sorted / few uniques):
     * bubble sort
     * quicksort
   * Groups benchmark finding a list of prime numbers using Fixnum#prime? AND (10, 100, 10_000 prime numbers):
     * Sieve of Eratosthenes
 * Big-O Notation (90 min)
   * representation of relative size of complexity - changes in input size.
   * best, worst, average case
   * Big-O for quicksort, bubble sort, merge sort, insertion sort
 * Additional resources
   * http://www.sorting-algorithms.com/
   * http://www.cs.usfca.edu/~galles/visualization/Algorithms.html
   * http://stackoverflow.com/questions/487258/plain-english-explanation-of-big-o
   * http://bigocheatsheet.com/
   * http://en.wikipedia.org/wiki/Analysis_of_algorithms
