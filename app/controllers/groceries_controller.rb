class GroceriesController < CrudController
  private
    def object_class
      Grocery
    end

    def object_params
      params.expect(grocery: [ :name, :shop_id ])
    end

    def object_path
      groceries_path
    end
end
