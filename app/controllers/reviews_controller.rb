# frozen_string_literal: true

class ReviewsController < ApplicationController
  def index
    @review = Review.all
    json_response(@review)
  end

  def show
    @review = Review.find(params[:id])
    json_response(@review)
  end

  def create
    @review = Review.new(location_params)
    json_response(@review)
  end

  def update
    @review = Review.find(params[:id])
    if @review.update!(location_params)
      render status: 200, json: {
        message: 'This review has been updated successfully.'
      }
    end
  end

  def destroy
    @review = Review.find(params[:id])
    if @review.destroy!(location_params)
      render status: 200, json: {
        message: 'This review has been deleted sucessfully.'
      }
    end
  end

  private

  def review_params
    params.permit(:review_text, :review)
  end

  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
