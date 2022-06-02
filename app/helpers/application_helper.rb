# frozen_string_literal: true

# Helper functions made here are accessable in all views
# for example, app_name is now accessable to all views
module ApplicationHelper
  def app_name
    conf = app_config
    if conf.nil?
      '?'
    else
      'Trenton Mercer Visual Solutions'
    end
  end

  private

  def app_config
    AppConfig.first
  end
end
