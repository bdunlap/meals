class ShopsController < CrudController
  private
    def object_class
      Shop
    end

    def object_params
      params.expect(shop: [ :name ])
    end

    def object_path
      shops_path
    end
end
