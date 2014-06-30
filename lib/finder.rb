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
end
