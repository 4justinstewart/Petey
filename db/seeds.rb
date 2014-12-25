require 'csv'
csv = CSV.read(Rails.root.join("app/assets/csvs/p_words.csv"))

csv.each do |row|
  word = row[0]
  p word
  Word.create(word: word) if word[0] == word[0].downcase
end