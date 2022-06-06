class Item < ApplicationRecord
    # validation rails methods
    # run and make sure name is present before it saves to db
    validates :name, presence: true
    validates :price, numericality: true
end
