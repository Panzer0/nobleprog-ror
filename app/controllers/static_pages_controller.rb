# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def privacy
    case params[:lang]
    when 'pl'
      render 'privacy_pl'
    when 'es'
      render 'privacy_es'
    end
  end

  def check_time
    @isNight = DateTime.now.hour < 5 && DateTime > 20 ? true : false
  end
end
