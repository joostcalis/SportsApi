class NewsController < ApplicationController
  def index
    # news = [{title: "hallo ik ben nieuws", link: "ik ben een link", description: "ik ben de omschrijving"}, {title: "hallo ik ben nieuws1", link: "ik ben een link1", description: "ik ben de omschrijving1"}, {title: "hallo ik ben nieuws2", link: "ik ben een link2", description: "ik ben de omschrijving2"}]
    # render json: {
    #   meta: {
    #     count: 3,
    #     page: 0
    #   },
    #   news: news
    # }
    require 'nokogiri'
    require 'open-uri'
      doc = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/mlb.xml"))
      mlb_news = Hash.from_xml(doc.to_xml)

      doc1 = Nokogiri::XML(open("http://www.baseballamerica.com/today/rss/majors.xml"))
      baseball_america_news = Hash.from_xml(doc1.to_xml)


      render json: {
        mlb_news: mlb_news,
        baseball_america_news: baseball_america_news
      }
  end
end
