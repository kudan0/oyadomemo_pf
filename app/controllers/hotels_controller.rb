class HotelsController < ApplicationController
  # before_action :set_q, only: [:search]

  def search

    if searchword= params[:searchword]
      params = URI.encode_www_form({keyword: 'searchword'})
      uri = URI.parse("https://app.rakuten.co.jp/services/api/Travel/KeywordHotelSearch/20170426?format=json&applicationId=#{ENV['RWS_APPLICATION_ID']}&formatVersion=2&searchField=1&hotelThumbnailSize=1&&page=1&hits=30keyword=#{params}")
      response = Net::HTTP.get_response(uri)
      result = JSON.parse(response.body)
      result["hotels"]
      if result["hotels"]
        @hotels = result["hotels"]
        @hotelName = result["hotels"]
        @postalCode = result["hotels"][0]["postalCode"]
        @address1 = result["hotels"][0]["address1"]
        @address2 = result["hotels"][0]["address2"]
      end
    end
    # @results = @q.result
  end

  def show
  end

  private

  # def set_q
  #   @q = Keyword.ransack(params[:q])
  # end
end
