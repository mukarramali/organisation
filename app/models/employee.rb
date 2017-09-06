class Employee < ApplicationRecord

  attr_accessor :manager
  def Employee.names_lookup
    Employee.distinct.select(:id, :name).as_json.map do |tt|
        tt['label'] = tt['name']
        tt
    end
  end

  def manager
    Employee.select(:name).find(self[:manager_id].to_i).name
  end

  def Employee.tree
  end

end
