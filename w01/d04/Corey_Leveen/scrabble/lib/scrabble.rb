class ScrabbleWord
attr_accessor :word
def initialize(word)
  @word = word.downcase!
end

score_hash = {
  a: 1,
  b: 3,
  c: 3,
  d: 2,
  e: 1,
  f: 4,
  g: 2,
  h: 4,
  i: 1,
  j: 8,
  k: 5,
  l: 1,
  m: 3,
  n: 1,
  o: 1,
  p: 3,
  q: 10,
  r: 1,
  s: 1,
  t: 1,
  u: 1,
  v: 4,
  w: 4,
  x: 8,
  y: 4,
  z: 10
}

  def score
    # Create empty score array
    word_score_array = []
    # Turn given word into an array of symbols
    sym_array = @word.split(//).each { |x| x.to_sym }
    # Initialize counter
    count = 0
    # While counter is less than the array's length
    while count < sym_array.length
      # Put the letter's score into the score array
      if sym_array[count] == score_hash[count]
        word_score_array.push(score_hash(count))
      end
      count +=1
    end
  end
end


new_word = ScrabbleWord.new("SampleWordd")
