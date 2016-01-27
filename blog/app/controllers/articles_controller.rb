class ArticlesController < ApplicationController
	def index
		@articles = Article.all	
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end
	
	def create
		@article = Article.new(article_params)

		# if article passes validation, redirect to new article
		if @article.save
			redirect_to @article
		
		# else send user back to new article page
		else
			render 'new'
		end
	end

	private
		def article_params
			params.require(:article).permit(:title, :text)
		end

end
