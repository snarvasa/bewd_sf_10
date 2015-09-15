# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  image_url  :string
#  title      :string
#  author     :string
#  genre      :string
#  year       :integer
#  available  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Book < ActiveRecord::Base
  validates_presence_of :title
end
