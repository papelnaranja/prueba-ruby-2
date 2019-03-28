class Task < ApplicationRecord
has_many :assignments
has_many :users, through: :assignments
after_create :update_users

def update_users
    users = User.all
    users.each do |u|
        self.assignments.build(user_id:u.id)
        self.save
    end 
end

end
