module EmployeesHelper

  def nested_employees(employee)
    content_tag(:ol) do
      concat(content_tag(:a, "#{employee.name} (#{employee.title})", :href => "employees/#{employee.id}"))
      employee.tree.each do |emp|
        concat(content_tag(:li,  nested_employees(emp)))
      end
    end
  end

end
