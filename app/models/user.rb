class User < ApplicationRecord
  # Get rid of comments!
  # If you want, just include all these extra devise modules on line 6/7 to be safe
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :graphs
  
  include FriendlyId
  friendly_id :first_name_and_last_name, use: [:finders, :slugged]

  # INDENTATION!
  def first_name_and_last_name
    "#{first_name}-#{last_name}"
  end

end
