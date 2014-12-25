class PeteOfTheDay < ActionMailer::Base
  default from: "thepeoplebehindpetey@popularpays.com"

  def word_of_the_day(word)
    @word = word
    mail(to: "justin@popularpays.com", subject: "Pete of the Day")
  end
end
