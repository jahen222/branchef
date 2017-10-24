class Membership < ApplicationRecord

  def price_whit_discount
    "#{price-price*base_discount/100}"
  end

  def saving
    "#{price*base_discount/100}"
  end
end
