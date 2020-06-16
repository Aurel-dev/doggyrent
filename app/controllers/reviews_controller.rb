class ReviewsController < ApplicationController

    before_action :set_review, only: [ :show, :update, :destroy ]

    def index
        @reviews = Review.all
    end

    def new
        @review = Review.new
    end

    def create
        @review = Review.new(review_params)
        @dog = Dog.find(params[:id])
        @review.dog = @dog
        if @review.save!
          redirect_to dog_path(@dog)
        else
          @review = Review.new
          render :show
        end
    end

    def update
        @dog = @review.booking.dog
        if @review.update(review_params)
          redirect_to dog_path(@dog)
        else
          render :show
        end
    end

    def destroy
        @review.destroy
        @dog = @review.booking.dog
        redirect_to dog_path(@dog)
    end

    private

    def set_review
        @review = Review.find(params[:id])
    end

    def review_params
        params.require(:review).permit(:booking, :comment, :rating)
    end
end
