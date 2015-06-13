class IdeasController < ApplicationController

  def new
    @idea = Idea.new #(title: "Fun Fridays")
  end

  def create
    @idea = Idea.new(idea_params)
    if @idea.save
      redirect_to idea_path(@idea)
    else
      render 'new'
    end
  end


  private
  def idea_params
    params.require(:idea).permit(:title, :body)
  end
end




#if model tests are failing (which will cause the feature tests to fail), look at model code

#if model tests are passing, but feature tests are fail, look at controller and views code


