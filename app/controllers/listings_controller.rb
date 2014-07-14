class ListingsController < ApplicationController

  def index
    @job_listings = get_angel_list_jobs
    respond_to do |format|
      format.html
      format.json { render json: @job_listings }
    end
  end

  def get_angel_list_jobs
    # Listing.delete_all
    # results = 1.upto(3).reduce([]) do |memo, count|

    #   response = HTTParty.get("https://api.angel.co/1/jobs?page=#{count}")
    #   result_set = response['jobs'].map do |listing|
    #     {
    #       listing_id:   listing['id'],
    #       title:        listing['title'],
    #       description:  listing['description'],
    #       equity_min:   listing['equity_min'],
    #       equity_max:   listing['equity_max'],
    #       salary_min:   listing['salary_min'],
    #       salary_max:   listing['salary_max'],
    #       thumb_url:    listing['startup']['thumb_url'],
    #       company_url:  listing['startup']['company_url']
    #     }
    #   end

    #   memo += result_set
    # end
    # Listing.create(results)
      Listing.all

    #     # improve search time
    #     # if listing['title'].include? 'dev' || 'Dev'

    #     # end
    #   end
    # end

    # Listing.create(results)
  end

  def create
    @listing = Listing.new()
  end

  def destroy
    binding.pry
  end
end
