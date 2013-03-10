# -*- encoding : utf-8 -*-
class CommentsController < ApplicationController
  
  def index
    @comment = Comment.new
    @comments = Comment.roots
  end
  
  def new
    @comment = Comment.new
  end
  
  def create
    @comment = Comment.new(params.require(:comment).permit(:name, :body, :parent_id))
    respond_to do |format|
      if @comment.save
        format.html { redirect_to :back, notice: 'Comment was successfully created' }
        format.json { render json: @comment, status: :created, location: @comment }
      else
        format.html { redirect_to :back, notice: 'Something wrong' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end
    
end
