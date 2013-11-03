class Shop < ActiveRecord::Base
  attr_accessible :name, :status_id, :token

  belongs_to :status
end
