#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

query = 'SELECT DISTINCT ?item { ?item wdt:P39 wd:Q6589874 }'
ids = EveryPolitician::Wikidata.sparql(query)

en = WikiData::Category.new('Category:Somalian politicians', 'en').member_titles |
     WikiData::Category.new('Category:Members of the Parliament of Somalia', 'en').member_titles |
     WikiData::Category.new('Category:Somalian politician stubs', 'en').member_titles

EveryPolitician::Wikidata.scrape_wikidata(ids: ids, names: { en: en })

