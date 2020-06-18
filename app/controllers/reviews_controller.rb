class ReviewsController < ApplicationController
 before_action :set_review, only: [ :show, :edit, :update, :destroy ]

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end
    
  def create
    @review = Review.new(review_params)
    if @review.save 
      redirect to @review, notice: 'Votre avis a été enregistré !'
    else
      render :new
    end
  end

  def update
  end

  def destroy
    @review.destroy
    redirect_to reviews_path(@review)
  end

private

  def set_review
    @review = Review.find(params[:id]) #verifier le params
  end


  def review_params
    params.require(:review).permit(:comment, :rating, :booking_id)
  end

end
