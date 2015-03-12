class Person < ActiveRecord::Base
  authenticates_with_sorcery!
  belongs_to :organization
end
