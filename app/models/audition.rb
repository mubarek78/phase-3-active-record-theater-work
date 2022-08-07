class Audition < ActiveRecord::Base
    belongs_to :role
    def call_back
      hired = true
    end
  end