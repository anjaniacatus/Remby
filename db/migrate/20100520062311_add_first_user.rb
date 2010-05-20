class AddFirstUser < ActiveRecord::Migration
  def self.up
      u = User.create(:username => 'admin', :email => 'admin@gmail.com',
        :password => 'test', :password_confirmation => 'test', :roles => 'admin')
      p u
      u.save!
  end

  def self.down
      u = User.find_by_username("admin")
      u.destroy if u
  end

end
