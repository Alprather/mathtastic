class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :votes, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   before_save { self.email = email.downcase }
   before_save { self.role ||= :member }
   enum role: [:member, :admin, :premium]

end
