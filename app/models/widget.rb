class Widget < ActiveRecord::Base
  validates_presence_of :name, message: "Name is required"
end
