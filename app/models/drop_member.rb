class DropMember < ActiveRecord::Base
  belongs_to :user
  belongs_to :drop
end
