class PagesController < ApplicationController
  def home
  end

  def schauspieler
    @actor = Actor.all.order(start_date: :desc)
  end

  def regisseur
    @director = Director.all.order(start_date: :desc)
  end

  def texter
    @writer = Writer.all.order(year: :desc)
  end

  def media
  end

  def steckbrief
  end

  def kontakt
  end
end
