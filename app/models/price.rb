class Price
  include Her::Model

  collection_path "ords/trading/prices/prices"
  attributes :date, :period, :type, :grid_point, :price, :run_time
  validates :date, :period, :type, :grid_point, :price, :run_time, presence: true

end
#
