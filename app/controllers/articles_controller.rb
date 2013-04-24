class ArticlesController < ApplicationController

	def index
		@articles = Article.alphabetical.paginate(:page => params[:page]).per_page(10)
	end

	def show
		@article = Article.find(params[:id])
	end
end
