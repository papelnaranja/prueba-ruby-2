class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :assignments, dependent: :destroy
  has_many :tasks, through: :assignments
  after_create :set_tasks

  def set_tasks
    tasks = Task.all
    tasks.each do |t|
      self.assignments.build(task_id:t.id)
      self.save
    end 
  end
end
