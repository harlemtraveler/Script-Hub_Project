class UsersController < ApplicationController
  def show
    render json: {
      users: [
        {'name': 'John'},
        {'name': 'Jane'},
        {'name': 'Sally'}
      ]
    }.to_json
  end
end
