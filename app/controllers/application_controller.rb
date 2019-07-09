class ApplicationController < ActionController::API

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

  end


  def update

  end

  def destroy


  end



end
