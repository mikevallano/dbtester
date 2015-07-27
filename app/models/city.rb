class City < ActiveRecord::Base

  def self.text_search(keyword)
    where("name ilike :q", q: "%#{keyword}%")
  end

end
