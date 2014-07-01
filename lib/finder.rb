module Finder
  def random
    objects.shuffle.pop
  end

  def find_by_name(name)
    objects.find {|object| object.name == name}
  end

  def find_all_by_name(name)
    objects.find_all {|object| object.name == name}
  end

  def find_by_id(id)
    objects.find {|object| object.id == id}
  end

  def find_by_created_at(created_at)
    objects.find {|object| object.created_at == created_at}
  end

  def find_all_by_created_at(created_at)
    objects.find_all {|object| object.created_at == created_at}
  end

  def find_by_updated_at(updated_at)
    objects.find {|object| object.updated_at == updated_at}
  end

  def find_all_by_updated_at(updated_at)
    objects.find_all {|object| object.updated_at == updated_at}
  end

  def find_by_first_name(first_name)
    objects.find {|object| object.first_name == first_name}
  end

  def find_all_by_first_name(first_name)
    objects.find_all {|object| object.first_name == first_name}
  end

  def find_by_last_name(last_name)
    objects.find {|object| object.last_name == last_name}
  end

  def find_all_by_last_name(last_name)
    objects.find_all {|object| object.last_name == last_name}
  end

  def find_by_item_id(item_id)
    objects.find {|object| object.item_id == item_id}
  end

  def find_all_by_item_id(item_id)
    objects.find_all {|object| object.item_id == item_id}
  end


  def find_by_quantity(quantity)
    objects.find {|object| object.quantity == quantity}
  end

  def find_all_by_quantity(quantity)
    objects.find_all {|object| object.quantity == quantity}
  end

  def find_by_unit_price(unit_price)
    objects.find {|object| object.unit_price == unit_price}
  end

  def find_all_by_unit_price(unit_price)
    objects.find_all {|object| object.unit_price == unit_price}
  end

  def find_by_customer_id(customer_id)
    objects.find {|object| object.customer_id == customer_id}
  end

  def find_all_by_customer_id(customer_id)
    objects.find_all {|object| object.customer_id == customer_id}
  end

  def find_by_merchant_id(merchant_id)
    objects.find {|object| object.merchant_id == merchant_id}
  end

  def find_all_by_merchant_id(merchant_id)
    objects.find_all {|object| object.merchant_id == merchant_id}
  end

  def find_by_status(status)
    objects.find {|object| object.status == status}
  end

  def find_all_by_status(status)
    objects.find_all {|object| object.status == status}
  end


  def find_by_invoice_id(invoice_id)
    objects.find {|object| object.invoice_id == invoice_id}
  end

  def find_all_by_invoice_id(invoice_id)
    objects.find_all {|object| object.invoice_id == invoice_id}
  end

  def find_by_credit_card_number(credit_card_number)
    objects.find {|object| object.credit_card_number == credit_card_number}
  end

  def find_all_by_credit_card_number(credit_card_number)
    objects.find_all {|object| object.credit_card_number == credit_card_number}
  end

  def find_by_result(result)
    objects.find {|object| object.result == result}
  end

  def find_all_by_result(result)
    objects.find_all {|object| object.result == result}
  end
end
