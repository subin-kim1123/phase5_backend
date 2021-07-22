class MyArticlesController < ApplicationController
    def index
        my_articles = MyArticle.all
        render json: my_articles
    end

    def destroy
        my_articles = MyArticle.find(params[:id])
        my_articles.destroy
        render json: my_articles
    end
end
