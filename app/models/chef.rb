class Chef < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  # Formato imagenes of chef
  has_attached_file :image1, styles: { medium: '200x200>', thumb: '48x48>' }
  validates_attachment_content_type :image1, :content_type => /\Aimage\/.*\Z/
  has_attached_file :image2, styles: { medium: '200x200>', thumb: '48x48>' }
  validates_attachment_content_type :image2, :content_type => /\Aimage\/.*\Z/
  has_attached_file :image3, styles: { medium: '200x200>', thumb: '48x48>' }
  validates_attachment_content_type :image3, :content_type => /\Aimage\/.*\Z/
  has_attached_file :image4, styles: { medium: '200x200>', thumb: '48x48>' }
  validates_attachment_content_type :image4, :content_type => /\Aimage\/.*\Z/
  has_attached_file :image5, styles: { medium: '200x200>', thumb: '48x48>' }
  validates_attachment_content_type :image5, :content_type => /\Aimage\/.*\Z/
  has_attached_file :image6, styles: { medium: '200x200>', thumb: '48x48>' }
  validates_attachment_content_type :image6, :content_type => /\Aimage\/.*\Z/
  has_attached_file :image7, styles: { medium: '200x200>', thumb: '48x48>' }
  validates_attachment_content_type :image7, :content_type => /\Aimage\/.*\Z/
  has_attached_file :image8, styles: { medium: '200x200>', thumb: '48x48>' }
  validates_attachment_content_type :image8, :content_type => /\Aimage\/.*\Z/
  has_attached_file :image9, styles: { medium: '200x200>', thumb: '48x48>' }
  validates_attachment_content_type :image9, :content_type => /\Aimage\/.*\Z/
  has_attached_file :image10, styles: { medium: '200x200>', thumb: '48x48>' }
  validates_attachment_content_type :image10, :content_type => /\Aimage\/.*\Z/

  # Formato imagenes of chef
  has_attached_file :cv
  #validates_attachment_content_type :image10, :content_type => /\Aimage\/.*\Z/
end
