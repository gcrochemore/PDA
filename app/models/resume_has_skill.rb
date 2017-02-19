class ResumeHasSkill < ApplicationRecord
  belongs_to :resume
  belongs_to :skill
end
