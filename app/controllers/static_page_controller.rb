class StaticPageController < ApplicationController
  before_action :authenticate_candidate!, only: [:home]

  def index
  end

  def home
  end

  def contact
  end

  def help
  end

  def about
  end
end
