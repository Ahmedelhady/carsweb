class User < ActiveRecord::Base
  has_many :cars
  has_many :car_models, :through => :cars
  
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      if User.find_by_uid(auth.uid) == nil
        user.provider = auth.provider
        user.uid = auth.uid
        user.name = auth.info.name
        user.oauth_token = auth.credentials.token
        user.oauth_expires_at = Time.at(auth.credentials.expires_at)
        user.image=auth.info.image
        user.save!
      else
        User.find_by_uid(auth.uid)
      end
      
    end
  end
  
end
