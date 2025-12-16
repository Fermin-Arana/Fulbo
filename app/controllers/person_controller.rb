class PersonController < ApplicationController
  def index
    @person = Person.all
  end

  def show
    @person = current_user
  end

  def new
    @person = Person.new
  end

  def create
  end
end
