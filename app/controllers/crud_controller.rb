class CrudController < ApplicationController
  before_action :set_object, only: [ :show, :edit ]
  before_action :find_object, only: [ :update, :destroy ]

  def index
    instance_variable_set("@#{object_name.pluralize}", object_class.all)
  end

  def show
  end

  def new
    instance_variable_set("@#{object_name}", object_class.new)
  end

  def create
    object = object_class.new(object_params)
    if object.save
      redirect_to object, notice: "#{object_class.name} was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @object.update(object_params)
      redirect_to object_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @object.destroy
    redirect_to object_path
  end

  private

    def set_object
      instance_variable_set("@#{object_name}", object_class.find(params[:id]))
    end

    def find_object
      @object = object_class.find(params[:id])
    end

    def object_class
      raise NotImplementedError, "Subclasses must implement #object_class"
    end

    def object_params
      raise NotImplementedError, "Subclasses must implement #object_params"
    end

    def object_path
      raise NotImplementedError, "Subclasses must implement #object_params"
    end

    def object_name
      object_class.name.underscore
    end
end
