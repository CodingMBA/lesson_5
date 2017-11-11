hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |_, arr|
  arr.each do |word|
    word.chars.each do |char|
      puts char if char =~ /[AEIOUaeiou]/
    end
  end
end
