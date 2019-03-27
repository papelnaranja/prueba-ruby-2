module ApplicationHelper

def current_state
        task_all = Task.all
        users_tasks = Assignment.all
        completed_tasks = []
        users_tasks.each do |c|
           if c.completed == true && current_user.id == c.user_id
             completed_tasks << c
           end
        end
        return "#{completed_tasks.count} de #{task_all.count}"
    end

end
