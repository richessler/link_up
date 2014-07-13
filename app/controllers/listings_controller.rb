class ListingsController < ApplicationController

  def index
    @job_listings = get_angel_list_jobs
    render json: @job_listings
  end

  def get_angel_list_jobs
    Listing.delete_all
    count = 1
    response = HTTParty.get("https://api.angel.co/1/jobs?page=#{count}")
    response['jobs'].each do |listing|
      if listing['title'].include? 'dev' || 'Dev'
        Listing.create(
          listing_id:   listing['id'],
          title:        listing['title'],
          description:  listing['description'],
          equity_min:   listing['equity_min'],
          equity_max:   listing['equity_max'],
          salary_min:   listing['salary_min'],
          salary_max:   listing['salary_max'],
          thumb_url:    listing['startup']['thumb_url'],
          company_url:  listing['startup']['company_url']
          )
      end
    end
  end

  def delete
    @listings = Listing.all
    @listings.destroy
  end

  def create
    @listing = Listing.new()
  end
end
