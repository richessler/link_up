class ListingsController < ApplicationController

  def index
    @job_listings = Listing.get_angel_list_jobs
    respond_to do |format|
      format.html
      format.json { render json: @job_listings }
    end
  end

  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.user_id = current_user.id
    @favorite.save
  end

  private

  def favorite_params
    params.require( :listing ).permit(
      :listing_id,
      :user_id,
      :title,
      :salary_max,
      :description,
      :salary_min,
      :equity_max,
      :equity_min,
      :thumb_url,
      :company_url,
      :company_name,
      :currency_code,
      :location
    )
  end
end
