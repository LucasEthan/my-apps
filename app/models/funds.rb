class Funds < ApplicationRecord
  def amount_in_dollars
    amount / 100
  end
end
