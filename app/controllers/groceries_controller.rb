class GroceriesController < ApplicationController
  def index
    @groceries = Grocery.all
  end

  def show
    @grocery = Grocery.find(params[:id])
  end

  def new
    @grocery = Grocery.new
  end

  def create
    @grocery = Grocery.new(grocery_params)

    if @grocery.save
      redirect_to @grocery
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def grocery_params
      params.expect(grocery: [ :name ])
    end
end
