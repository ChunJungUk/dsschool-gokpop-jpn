class UsersController < ApplicationController
  def create
    user = User.where(email: params[:user][:email]).first
    if user.blank?
      user = User.new(user_params)
      user.save
    end

    JSON.parse(params[:survey_params]).each do | survey_param | 
      survey = Survey.new(
        user_id: user.id,
        question_id: survey_param["question_id"],
        answer1_selected: survey_param["answer1_selected"],
        answer2_selected: survey_param["answer2_selected"],
        answer3_selected: survey_param["answer3_selected"],
        answer4_selected: survey_param["answer4_selected"],
        answer5_selected: survey_param["answer5_selected"],
        answer6_selected: survey_param["answer6_selected"],
        answer7_selected: survey_param["answer7_selected"],
      )
      survey.save
    end
    redirect_to [:suggestions]
  end

private
  def user_params
    params.require(:user).permit(
      :email,
      :mixpanel_id,
    )
  end
end