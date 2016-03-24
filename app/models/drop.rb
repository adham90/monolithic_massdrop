class Drop < ActiveRecord::Base
  include AASM
  belongs_to :product
  has_many :drop_members

  has_many :joint, -> {where(drop_members: {type: true})},
           :through => :drop_members, source: :user

  has_many :commit, -> {where(drop_members: {type: false})},
           :through => :drop_members, source: :user

  aasm :column => 'state' do
    state :running, :initial => true
    state :ended
    state :done

    event :end do
      transitions :from => :running, :to => :ended, after: :commit_to_join
    end

    event :done do
      transitions :from => :ended, :to => :done
    end
  end

  private

  def commit_to_join
    drop_members.update_all(type: :join)
  end
end
