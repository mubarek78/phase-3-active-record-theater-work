class Role < ActiveRecord::Base
    has_many :auditions
  
    def actors
      auditions.map {|aud| aud.actor}
    end
  
    def actors
      auditions.map {|aud| aud.location}
    end
  
    def lead
      lead = auditions.find_by(hired: true)
      lead.length > 0 ? lead : "no actor has been hired for this role"
    end
    
    def understudy
      under = auditions.where(hired: true)
      under.length > 1 ? under.second : "no actor has been hired for understudy for this role"
    end
  end