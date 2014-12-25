class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def pete_of_the_day
    @word = "pastor"
    render "app/views/pete_of_the_day/word_of_the_day.html.erb"
  end
end
