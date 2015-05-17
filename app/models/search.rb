class Search < ActiveRecord::Base
  def gyms
    Gyms.where(:search_zip => self.zip).where(:search_weights => self.weights).where(:search_cardio => self.cardio).where(:search_studios => self.studios).where(:search_classes => self.classes).where(:search_pool => self.pool).where(:search_hot_tub => self.hot_tub).where(:search_basketball => self.basketball).where(:search_raquetball => self.raquetball).where(:search_trainer => self.trainer).where(:search_sauna => self.sauna)
  end
end
