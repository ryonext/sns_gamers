class TagsController < ApplicationController
  # GET /users/1
  # GET /users/1.json
  def show
    @users = User.tagged_with(params[:id])
  end
end
