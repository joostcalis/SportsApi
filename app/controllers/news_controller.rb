class NewsController < ApplicationController
  def index

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
