class NewsController < ApplicationController
  def index
    news = [{title: "hallo ik ben nieuws", link: "ik ben een link", description: "ik ben de omschrijving"}, {title: "hallo ik ben nieuws1", link: "ik ben een link1", description: "ik ben de omschrijving1"}, {title: "hallo ik ben nieuws2", link: "ik ben een link2", description: "ik ben de omschrijving2"}]
    render json: {
      meta: {
        count: 3,
        page: 0
      },
      news: news
    }
  end
end
