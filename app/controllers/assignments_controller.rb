class AssignmentsController < ApplicationController
  before_action :authenticate_user!
  def index
    @task = Task.all
    @user = User.all
    @assignments = Assignment.all

  end
  def show
    @assignment = Assignment.find(params[:id])
  end
  def update
    @assignment = Assignment.find(params[:id])
    @assignment.completed = !@assignment.completed
    @assignment.save
    redirect_to root_path
  end

end
