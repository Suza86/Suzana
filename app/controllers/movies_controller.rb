class MoviesController < ApplicationController
  


  def index
       @movies = movie_ser.popular
  end

  def show
    @movie = MoviePresenter.new(movie_detail).data
    @movie[:image_path] = "#{image_path}/w300_and_h450_bestv2#{@movie.poster_path}"
    render json: @movies
  end

  def search
    @movies = movie_ser.find(params[:q])
    render json: @movies
  end

  private
  
  def movie_ser
    @movie_ser = MovieServices.new
  end

  def movie_detail
    movie_ser.movie_detail(params['id'])
  end

  def image_path
    @image_path ||= movie_ser.configuration.base_url
  end

end
