class UsersController < ApplicationController
  def new
  end

  # def import
  #   items = []
  #   CSV.foreach('../../users.csv', headers: true) do |row|
  #     items << Item.new(row.to_h)
  #   end
  #   Item.import(items)
  # end

  def show
    render json: {
      users: [
        {'name': 'John'},
        {'name': 'Jane'},
        {'name': 'Sally'}
      ]
    }.to_json
  end

  def create
    @user = User.new(params[:user])

    @user.save
    redirect_to @user
  end
end
