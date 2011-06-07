class Surfer < ActiveRecord::Base

    belongs_to :state

    has_many :board_surfers
    has_many :boards, :through =>  :board_surfers
    
    validates :name, :presence => true
    validates :firstname, :presence => true
    validates :email, :presence => true
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    validates :tel,  :presence => true
    validates_format_of :tel, :with => /0\d{1}[\.\-\ \\]?(\d{2}[\.\-\ \\]?){4}/


    has_attached_file :photo, :styles => { :small => "150x150>" }
    validates_attachment_presence :photo
    validates_attachment_size :photo, :less_than => 5.megabytes
    validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
end