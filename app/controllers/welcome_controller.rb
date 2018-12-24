class WelcomeController < ApplicationController
  def index
  end
  def userideas
    unless user_signed_in?
      flash[:notice] = 'Треба Авторизуватись!'
      redirect_to root_path
    end
    @ideas = Idea.where(user_id: current_user.id)
  end
end
