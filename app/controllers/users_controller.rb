class UsersController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    if @user.save
        redirect_to @user, notice: 'Пользователь был создан'
    else
        render :new
    end
  end

  def update
    if @user.update(user_params)
        redirect_to @user, notice: 'Пользователь был обнавлен'
    else
        render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to trains_path
end

  private

    def set_train
      @user = User.find(params[:id])
    end

    def train_params
      params.require(:train).permit(:name)
    end
end
