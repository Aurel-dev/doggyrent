class ReviewsController < ApplicationController
    before_action :set_review, only: [ :show, :edit, :update, :destroy ]
    def index
     @reviews = Review.all
    end
end
