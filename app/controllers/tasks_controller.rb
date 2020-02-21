class TasksController < ApplicationController

  def new
   
  end

  def create
    @task = Task.new
    @task.save
    redirect_to tasks_index_url
    
  end

  def index
   @tasks = Task.all
  end

  def task
    @task = Task.find(params[:id])  
    
  end

  def edit
  end

  def update
    @task.content = params[:content]
    if @task.save
      flash[:notice] = "投稿を編集しました。"
      redirect_to tasks_index_url
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    flash[:notice] = "投稿を削除しました。"
    redirect_to tasks_index_url
  end

  def limitation_correct_user
    @task = Task.find(params[:id])
    unless @task.user_id == @current_user.id
      flash[:notice]= "自分以外のユーザーの投稿は編集できません。"
      redirect_to tasks_index_url
    end
  end
end
