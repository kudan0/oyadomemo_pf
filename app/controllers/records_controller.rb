class RecordsController < ApplicationController
  def index
  end

  def new
    @record = Record.new
  end
  
  def create
    @record = Record
  end

  def show
  end

  def edit
  end
end
