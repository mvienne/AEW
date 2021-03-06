class SurveyAerialTotalCountStratum < ActiveRecord::Base
  has_paper_trail

  include Stratum

  # All normal attributes of Stratum models are mass-assignable
  attr_protected :created_at, :updated_at

  validates_presence_of :population_estimate

  belongs_to :survey_aerial_total_count
  belongs_to :mike_site
  belongs_to :survey_geometry

end
