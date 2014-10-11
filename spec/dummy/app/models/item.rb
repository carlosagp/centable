class Item < ActiveRecord::Base
  include Centable

  cent_column :cost
  cent_column :price
end
