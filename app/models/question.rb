
class Question < ActiveRecord::Base
  stampable
  simple_tagging
  # TODO add to_param and associated magic to make urls to questions nicer than the ids currently in use
  has_many :answers
  validates  :title, :text, presence: true, length: { minimum: 3 }
  
  default_scope {where(tenant_id:Tenant.current_id) if Tenant.current_id }

  searchable do
    text :title, :text
    text :tags do
      tags.join(', ')
    end
  end

end
