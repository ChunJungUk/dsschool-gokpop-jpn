class SurveysController < ApplicationController
  def index
    @user = User.new
    @survey_texts = SurveyText.where(is_active: true)
  end
end
