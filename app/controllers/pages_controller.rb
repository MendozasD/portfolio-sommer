class PagesController < ApplicationController
  def home
  end

  def schauspieler
    @actor = Actor.all
  end

  def regisseur
    @director = Director.all
  end

  def texter
    @writer = Writer.all
  end

  def media
  end

  def steckbrief
  end

  def kontakt
  end
end
