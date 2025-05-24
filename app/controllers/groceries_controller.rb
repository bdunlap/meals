class GroceriesController < CrudController
  before_action :set_object, only: [ :show, :edit, :needed, :not_needed ]

  def needed
    set_needed(true)
  end

  def not_needed
    set_needed(false)
  end

  private
    def object_class
      Grocery
    end

    def object_params
      params.expect(grocery: [ :name, :shop_id, :in_pantry, :shop_location, :house_location ])
    end

    def object_path
      groceries_path
    end

    def set_needed(value)
      if @grocery.update(needed: value)
        redirect_to @grocery
      else
        redirect_to @grocery, alert: 'Could not set "needed" state'
      end
    end
end
