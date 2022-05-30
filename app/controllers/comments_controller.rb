class CommentsController < ApplicationController

    # the only methods we have in here is a create method and a method saying what the comment 
    # params should be. 

    def create 
        @article = Article.find(params[:article_id])
        # comments are a sub section/sub thing of article.
        @comment = @article.comments.create(comment_params)

        redirect_to article_path(@article)
    end

    private
    def comment_params
        params.require(:comment).permit(:commenter, :body)
    end
end
