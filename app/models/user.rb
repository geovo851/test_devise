class User < ActiveRecord::Base
  has_and_belongs_to_many :roles
  belongs_to :role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  def role_symbols
    [role.title.to_sym]
  end


  def role_symbols
    (roles || []).map {|r| r.title.to_sym}
  end

end
