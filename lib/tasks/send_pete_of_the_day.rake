desc "Sends the Pete of the Day to the gang"
task :pete_of_the_day => :environment do
  id = Word.ids.sample
  word = Word.find(id).word
  PeteOfTheDay.word_of_the_day(word).deliver
  p ActionMailer::Base.deliveries.count
end