require 'elasticsearch/model'
require 'tire'

class Bug < ApplicationRecord

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  include Tire::Model::Search
  include Tire::Model::Callbacks
  belongs_to :state
  #belongs_to :app
  accepts_nested_attributes_for :state


  settings analysis: {
  filter: {
    ngram_filter: { type: "nGram", min_gram: 2, max_gram: 12 }
  },
  analyzer: {
        index_ngram_analyzer: {
            type: 'custom',
            tokenizer: 'standard',
            filter: ['lowercase', 'ngram_filter']
        },
        search_ngram_analyzer: {
            type: 'custom',
            tokenizer: 'standard',
            filter: ['lowercase']
        }
    }



} do
mapping do 
    indexes :id
    indexes :state_id
    indexes :status
    indexes :priority
    indexes :comment,:type => "text", analyzer:   "index_ngram_analyzer", search_analyzer: "search_ngram_analyzer"
    indexes :bugnumber
    indexes :app_token
    indexes :app_name
    indexes :created_at
    indexes :updated_at
    
end


end

Bug.import 
end