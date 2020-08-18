class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  before_action :authenticate_token, except: [:login, :create, :show, :update, :destroy, :index]
  before_action :authorize_user, except: [:login, :create, :show, :update, :destroy, :index]

  # GET /users
  def index
    @users = User.all

    render json: @users.to_json(include: :reviews)
  end

  # GET /users/1
  def show
    # render json: User.find(params[:username]).to_json(include: :shops)
    # if @user && @user.authenticate(params[:password])
      render json: @user.to_json(include: [:reviews, :shops])
    # end
  end

  # # GET user by username
  # def show_user
  #   # render json: User.find_by(params[username: :username]).to_json(include: :shops)
  #   specific_user = User.find_by(username: params[:username])
  #   render json: specific_user
  # end

  # login
  def login
    user = User.find_by(username: params[:user][:username])
    # user.to_json(include: [:reviews, :shops])
    # puts user
    if user && user.authenticate(params[:user][:password])
      token = create_token(user.id, user.username)
      render json: {status: 200, token: token, user:  user.to_json(include: [:reviews, :shops])}
    else
      render json: {status: 401, message: "Unauthorized"}
    end
end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:username, :password)
    end

    def payload(id, username)
      {
        exp: (Time.now + 60.minutes).to_i,
        iat: Time.now.to_i,
        iss: ENV['SECRET_KEY_BASE'],
        user: {
          id: id,
          username: username
        }
      }
    end

    def authorize_user                                                             
      render json: { status: 401, message: "Unauthorized" } unless get_current_user.id == params[:id].to_i                                                         
    end

    def create_token(id, username)
      SECRET_KEY_BASE.encode(payload(id, username), ENV['SECRET_KEY_BASE'], 'HS256')
    end

    # def email_params
    #   params.require(:username)
    # end

    # def show_user
    #   render json: User.find_by(username: user_params).to_json(include: :shops)
    # end
end
