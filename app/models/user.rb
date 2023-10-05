class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :photography
  has_many :comments
  has_many :images, as: :imageable


  accepts_nested_attributes_for :images

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, images_attributes: [:url,
    :context, :id]])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, images_attributes:
    [:url, :context, :id]])
  end

end
