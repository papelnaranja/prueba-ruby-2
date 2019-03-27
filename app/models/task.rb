class Task < ApplicationRecord
has_many :assignments
has_many :users, through: :assignments
# before_create :set_user

# def set_user
#     users = User.all
#     users.each do |u|
#         self.assignments.build(user_id:u.id)
#         byebug

#         self.save
#     end 
# end

end
