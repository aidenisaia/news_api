class NewsController < ApplicationController
  def index
    response = HTTP.get("https://newsapi.org/v2/everything?q=tesla&from=2021-06-08&sortBy=publishedAt&apiKey=#{Rails.application.credentials.news_api}")

    render json: response.parse(:json)
  end
end
