class UsersController < ApplicationController
  #TODO IOをJSONにする

  def index
    user_list = User.all
    render.json(status:"success", data:user_list)
  end

  def show
    user = User.find(params[:id])

    if user.blank?
      render.json(status:"not found", data:[])
      return;
    end

    render.json(status:"success", data:user)
    return;

  end

  def create
    if User.create!(name: params[:name])
      render.json(status:"success", data:user)
    else
      render.json(status:"error", data:[])
    end
    return
  end

  def update
    if User.find(:id).update!(name: params[:name])
      render.json(status:"success", data:user)
    else
      render.json(status:"error", data:[])
    end
    return
  end

  def destroy
    if User.destroy!(id: params[:id])
      render.json(status:"success", data:[])
    else
      render.json(status:"error", data:[])
    end
    return
  end
end
