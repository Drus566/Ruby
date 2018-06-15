class Product < ApplicationRecord
    has_many :line_items
    before_destroy :ensure_not_referenced_by_any_line_item

    validates :title, :description, :image_url, presence: true
    validates :price, numericality: { greather_than_or_equal_to: 0.01 }
    validates :title, uniqueness: true, length: { minimum: 10, message: "must be greater than or equals to 10 symbols" }
    validates :image_url, allow_blank: true, format:{
        with: %r{\.(gif|jpg|png)\Z}i,
        message: 'must be a URL for GIF, JPG or PNG image'
    }

    private 

        # ensure that there are no line items referencing this product
        def ensure_not_referenced_by_any_line_item
            unless line_items.empty?
                errors.add(:base, 'Line items present')
                throw :abort
            end
        end
end
