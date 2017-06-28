class TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :destroy]
  # before_action :authenticate, only: [:create, :update, :destroy]
  before_action :validate_user
  # GET /tasks
  def index
    @tasks = Task.where 'user_id= ?', @current_user.id

    render json: @tasks
  end

  # GET /tasks/1
  def show
    @task = Task.find(params[:id])
    render json: @task
  end

  # POST /tasks
  def create
    # @task = Task.new(task_params)
    @task = current_user.tasks.build(task_params)

    if @task.save
      render json: @task, status: :created, location: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      render json: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      # @task = Task.find(params[:id])
      # require 'pry'
      # binding.pry
      validate_user
      @task = current_user.tasks.find(params[:id])
    end

    def validate_user
      set_current_user
    end

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:name, :description, :project_id, :iscomplete).reject { |_, v| v.blank? }
    end
end
