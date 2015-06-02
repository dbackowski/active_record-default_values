class User < ActiveRecord::Base
  default_value :first_name, 'John'
  default_value :last_name, 'Doe'
  default_value :active, false
  default_value :add_time, -> { Time.at(1_432_728_429) }
  default_value :age, 20
  default_value :description, 'Test', if: :blank?
end
