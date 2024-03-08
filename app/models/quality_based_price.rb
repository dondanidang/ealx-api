# frozen_string_literal: true

class QualityBasedPrice < ActiveYaml::Base
  include ActiveHash::Associations
  use_multiple_files
  set_root_path 'config/models'
  set_filenames(
    'quality_based_prices'
  )

  def get_all
    byebug
  end
end
