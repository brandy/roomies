class StaticController < ApplicationController
  def home
    @page_title = "Welcome to Roomies"
  end

  def about
    @page_title = "About Roomies"
  end
end
