class MyArticlesController < ApplicationController
    def index
        my_articles = MyArticle.all
        render json: my_articles
    end

    def create
        my_article = MyArticle.create(my_article_params)
        if my_article.valid?
            render json: my_article
        else render json: {error: my_article.errors.full_messages}, status: 400
    end

    def destroy
        my_article = MyArticle.find(params[:id])
        my_articles.destroy
        render json: my_articles
    end

    private

    def my_article_params
        params.permit(:user_id, :article_id)
    end
end
