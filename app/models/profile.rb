class Profile < ApplicationRecord
  belongs_to :user

  enum looking_for: { for_myself: 0, as_a_couple: 1, as_a_group_of_friends: 2 }
  enum gender: { female: 0, male: 1, other: 2 }
  enum children: { no_children: 0, children_that_will_visit: 1, children_that_will_live_with_me: 2 }

  validates :looking_for, inclusion: { in: looking_fors.keys }
  validates :gender, inclusion: { in: genders.keys }
  validates :children, inclusion: { in: children.keys }
end
