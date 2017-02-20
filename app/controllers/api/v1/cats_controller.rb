class Api::V1::CatsController < ApplicationController
  def create
    render json: Cat.create(cat_params)
  end

  def random
    render json: Cat.order("RANDOM()").first
  end

private
  def cat_params
    params.require(:cat).permit(:name, :picture)
  end
end
