class Surfer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible  :email, :password, :password_confirmation, :remember_me, :name, :firstname, :tel, :photo

#LIAISONS
    belongs_to :state
    has_many :board_surfers
    has_many :boards, :through =>  :board_surfers

#FORMULAIRE
    # surfer
    validates :name, :presence => true, :on => :update 
    validates :firstname, :presence => true, :on => :update
    validates :email, :presence => true, :on => :update
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :update
    validates :tel,  :presence => true, :on => :update
    validates_format_of :tel, :with => /0\d{1}[\.\-\ \\]?(\d{2}[\.\-\ \\]?){4}/, :on => :update

    #photo surfer
    has_attached_file :photo, :styles => { :small => "150x150>" }
    # validates_attachment_presence :photo, :on => :update
    # validates_attachment_size :photo, :less_than => 5.megabytes, :on => :update
    # validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png'], :on => :update
        
    def admin?
      email == "yann.rochard@gmail.com"
    end

    def surfer?
      persisted?
    end
    
end
