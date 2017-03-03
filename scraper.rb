#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

en = WikiData::Category.new('Category:Somalian politicians', 'en').member_titles |
     WikiData::Category.new('Category:Members of the Parliament of Somalia', 'en').member_titles |
     WikiData::Category.new('Category:Somalian politician stubs', 'en').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { en: en })

