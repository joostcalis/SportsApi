class NewsController < ApplicationController
  def val_for(hash, keys)
    keys.inject(hash) { |h, key| h[key] }
  end

  def index

    require 'nokogiri'
    require 'open-uri'
      doc = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/mlb.xml"))
      mlb_news = Hash.from_xml(doc.to_xml)
      mlb_news = mlb_news['rss']['channel']['item']


      doc1 = Nokogiri::XML(open("http://www.baseballamerica.com/today/rss/majors.xml"))
      baseball_america_news = Hash.from_xml(doc1.to_xml)
      baseball_america_news = baseball_america_news['rss']['channel']['item']

      doc2 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/ana.xml"))
      angels = Hash.from_xml(doc2.to_xml)
      angels = angels['rss']['channel']['item']

      doc3 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/hou.xml"))
      astros = Hash.from_xml(doc3.to_xml)
      astros = astros['rss']['channel']['item']

      doc4 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/oak.xml"))
      athletics = Hash.from_xml(doc4.to_xml)
      athletics = athletics['rss']['channel']['item']

      doc5 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/tor.xml"))
      bluejays = Hash.from_xml(doc5.to_xml)
      bluejays = bluejays['rss']['channel']['item']

      doc6 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/atl.xml"))
      braves = Hash.from_xml(doc6.to_xml)
      braves = braves['rss']['channel']['item']

      doc7 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/mil.xml"))
      brewers = Hash.from_xml(doc7.to_xml)
      brewers = brewers['rss']['channel']['item']

      doc8 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/stl.xml"))
      cardinals = Hash.from_xml(doc8.to_xml)
      cardinals = cardinals['rss']['channel']['item']

      doc9 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/chc.xml"))
      cubs = Hash.from_xml(doc9.to_xml)
      cubs = cubs['rss']['channel']['item']

      doc10 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/ari.xml"))
      diamondbacks = Hash.from_xml(doc10.to_xml)
      diamondbacks = diamondbacks['rss']['channel']['item']

      doc11 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/la.xml"))
      dodgers = Hash.from_xml(doc11.to_xml)
      dodgers = dodgers['rss']['channel']['item']

      doc12 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/sf.xml"))
      giants = Hash.from_xml(doc12.to_xml)
      giants = giants['rss']['channel']['item']

      doc13 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/cle.xml"))
      indians = Hash.from_xml(doc13.to_xml)
      indians = indians['rss']['channel']['item']

      doc14 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/sea.xml"))
      mariners = Hash.from_xml(doc14.to_xml)
      mariners = mariners['rss']['channel']['item']

      doc15 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/mia.xml"))
      marlins = Hash.from_xml(doc15.to_xml)
      marlins = marlins['rss']['channel']['item']

      doc16 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/nym.xml"))
      mets = Hash.from_xml(doc16.to_xml)
      mets = mets['rss']['channel']['item']

      doc17 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/was.xml"))
      nationals = Hash.from_xml(doc17.to_xml)
      nationals = nationals['rss']['channel']['item']

      doc18 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/bal.xml"))
      orioles = Hash.from_xml(doc18.to_xml)
      orioles = orioles['rss']['channel']['item']

      doc19 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/sd.xml"))
      padres = Hash.from_xml(doc19.to_xml)
      padres = padres['rss']['channel']['item']

      doc20 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/phi.xml"))
      phillies = Hash.from_xml(doc20.to_xml)
      phillies = phillies['rss']['channel']['item']

      doc21 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/pit.xml"))
      pirates = Hash.from_xml(doc21.to_xml)
      pirates = pirates['rss']['channel']['item']

      doc22 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/tex.xml"))
      rangers = Hash.from_xml(doc22.to_xml)
      rangers = rangers['rss']['channel']['item']

      doc23 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/tb.xml"))
      rays = Hash.from_xml(doc23.to_xml)
      rays = rays['rss']['channel']['item']

      doc24 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/bos.xml"))
      redsox = Hash.from_xml(doc24.to_xml)
      redsox = redsox['rss']['channel']['item']

      doc25 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/cin.xml"))
      reds = Hash.from_xml(doc25.to_xml)
      reds = reds['rss']['channel']['item']

      doc26 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/col.xml"))
      rockies = Hash.from_xml(doc26.to_xml)
      rockies = rockies['rss']['channel']['item']

      doc27 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/kc.xml"))
      royals = Hash.from_xml(doc27.to_xml)
      royals = royals['rss']['channel']['item']

      doc28 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/det.xml"))
      tigers = Hash.from_xml(doc28.to_xml)
      tigers = tigers['rss']['channel']['item']

      doc29 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/min.xml"))
      twins = Hash.from_xml(doc29.to_xml)
      twins = twins['rss']['channel']['item']

      doc30 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/cws.xml"))
      whitesox = Hash.from_xml(doc30.to_xml)
      whitesox = whitesox['rss']['channel']['item']

      doc31 = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/nyy.xml"))
      yankees = Hash.from_xml(doc31.to_xml)
      yankees = yankees['rss']['channel']['item']


      render json: {
        mlb_news: mlb_news,
        baseball_america_news: baseball_america_news,
        Astros: astros,
        Athletics: athletics,
        Bluejays: bluejays,
        Braves: braves,
        Brewers: brewers,
        Cardinals: cardinals,
        Cubs: cubs,
        Diamondbacks: diamondbacks,
        Dodgers: dodgers,
        Giants: giants,
        Indians: indians,
        Mariners: mariners,
        Mets: mets,
        Nationals: nationals,
        Orioles: orioles,
        Padres: padres,
        Phillies: phillies,
        Pirates: pirates,
        Rangers: rangers,
        Rays: rays,
        Redsox: redsox,
        Reds: reds,
        Rockies: rockies,
        Royals: royals,
        Tigers: tigers,
        Twins: twins,
        Whitesox: whitesox,
        Yankees: yankees
      }
  end
end
