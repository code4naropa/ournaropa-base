class MainController < ApplicationController

  layout "goodbye", only: [:goodbye]

  def home
  end

  def goodbye
  end
end
