class PagesController < ApplicationController
  def home
  @concerts = Concert.all
  end

  def about
  end
end
