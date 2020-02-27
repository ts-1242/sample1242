class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = '新規作成に成功しました。'
      redirect_to @user
    else
      render :new
    end
  end
 
  def index
    @users = User.paginate(page: params[:page], per_page: 10)
  end  
  
  
 def update
  @user = User.find(params[:id])
  @user.name = params[:name]
  @user.email = params[:email]
 end 

 def edit
    @user = User.find(params[:id])
 end
  
  private
  
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
