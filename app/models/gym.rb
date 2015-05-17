class Gym < ActiveRecord::Base
  def search
    Search.where(:gym.zip => self.zip).where(:gym.weights => self.weights).where(:gym.cardio => self.cardio).where(:gym.studios => self.studios).where(:gym.classes => self.classes).where(:gym.pool => self.pool).where(:gym.hot_tub => self.hot_tub).where(:gym.basketball => self.basketball).where(:gym.raquetball => self.raquetball).where(:gym.trainer => self.trainer).where(:gym.sauna => self.sauna)
  end
end
