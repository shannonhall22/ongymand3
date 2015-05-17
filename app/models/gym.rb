class Gym < ActiveRecord::Base
  def search
    Search.where(:gym_zip => self.zip).where(:gym_weights => self.weights).where(:gym_cardio => self.cardio).where(:gym_studios => self.studios).where(:gym_classes => self.classes).where(:gym_pool => self.pool).where(:gym_hot_tub => self.hot_tub).where(:gym_basketball => self.basketball).where(:gym_raquetball => self.raquetball).where(:gym_trainer => self.trainer).where(:gym_sauna => self.sauna)
  end
end
