class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
  end

  def contact
  end

  def tech_news
    @tweets = SocialTool.twitter_search params[:_search]
  end
  
  def page_params
    params.require(:page).permit(:_search)  
  end
end
