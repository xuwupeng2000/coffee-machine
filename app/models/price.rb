class Price
  include Her::Model

  collection_path "ords/trading/prices/prices"
  attributes :date, :period, :type, :grid_point, :price, :run_time

  scope :final,                 -> { where(price_types: 'F') }
  scope :interim,               -> { where(price_types: 'T') }
  scope :provisional,           -> { where(price_types: 'V') }
  scope :nrss,                  -> { where(price_types: 'N') }
  scope :nrsl,                  -> { where(price_types: 'L') }
  scope :prss,                  -> { where(price_types: 'A') }
  scope :prsl,                  -> { where(price_types: 'G') }
  scope :wds,                   -> { where(price_types: 'W') }
  scope :five_minutes_averages, -> { where(price_types: '5') }

end
