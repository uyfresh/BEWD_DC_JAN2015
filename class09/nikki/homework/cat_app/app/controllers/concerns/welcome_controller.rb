class WelcomeController < ApplicationController
  def index
    render :index
  end

  def didi
    render :didi
  end

  def tomwaits
    render :tomwaits
  end

  def stormy
    render :stormy
  end
end