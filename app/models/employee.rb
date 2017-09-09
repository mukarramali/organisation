class Employee < ApplicationRecord

  attr_accessor :manager
  before_save :default_values

  def default_values
    self.manager_id ||= 0
  end

  def Employee.names_lookup
    Employee.distinct.select(:id, :name).as_json.map do |tt|
        tt['label'] = tt['name']
        tt
    end
  end

  def manager
    puts "manager_id:#{self.manager_id}"
    return '' if self.manager_id.to_i == 0
    puts Employee.select(:name).find_by(id: self.manager_id)
    Employee.select(:name).find_by(id: self.manager_id).name
  end

  def tree
    Employee.select(:id, :name, :title).where(manager_id: self.id)
  end

  def Employee.heads
    Employee.where(manager_id: 0)
  end
end
