class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :isadmin, :last_name
end
