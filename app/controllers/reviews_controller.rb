class ReviewsController < ApplicationController

  # GET /reviews/new
  def new
    @review = Review.new
  end

  def edit
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.movie_id = @movie.id

    if @review.save
      redirect_to @movie
    else
      render 'new'
    end  
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update

  end

  def destroy
    @review.destroy
    redirect_to root_path
  end

end
