require 'rest-client'

class UsersController < ApplicationController
  def create
    user = User.where(email: params[:user][:email]).first
    if user.blank?
      user = User.new(user_params)
      user.save
    end

    JSON.parse(params[:survey_params]).each do | survey_param | 
      user.surveys.create!(survey_param)
    end

    begin
      register_mailchimp_list(user)
    rescue => exception
      puts exception.to_s 
    end

    redirect_to [:suggestions]
  end

  def register_mailchimp_list(user)
    key = Digest::MD5.hexdigest(user.email)
    list_key = '9df0874414' # mailchimp list - GoKpop Survey Completed (explzn)

    body = {
      'email_address' => user.email,
      'status' => 'subscribed',
      'merge_fields' => {},
    }

    user.surveys.each do |s|
      question = "Q#{s.question_id}"
      answers = ""
      1.upto(7) do |answer_id|
        if s.send("answer#{answer_id}_selected") == true
          answers += answers.size == 0 ? "A#{answer_id}" : ",A#{answer_id}"
        end
      end
      body['merge_fields'][question] = answers
    end

    RestClient::Request.execute(method: :put,
      url: "https://us19.api.mailchimp.com/3.0/lists/" + list_key + "/members/" + key,
      payload: body.to_json,
      user: 'anything',
      password: '5bf38de58317b02997ba7ea947bc9bd1-us19')
  end

private
  def user_params
    params.require(:user).permit(
      :email,
      :mixpanel_id,
    )
  end
end