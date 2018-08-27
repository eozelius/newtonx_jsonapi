class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def show
    begin
      user = User.find(params[:id])
      render json: user
    rescue
      user = User.new
      user.errors.add(:id, "Incorrect ID")
      render json: { status: 404, error: 'Incorrect ID' } and return
    end
  end

  def create
    user = User.new(user_params)

    if user.save
      render json: user, status: :created
    else
      render json: { status: 422, error: 'Could not create User.' }
    end
  end

  private

  def user_params
    ActiveModelSerializers::Deserialization.jsonapi_parse(params)
  end
end
