# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 설문 텍스트
# 기존 레코드 변경하지 말 것, 필요한 값은 추가만 하고 기존 값은 변경하지 않는다.
# 설문이 교체되면 is_active를 false로 변경하고 지우지는 않는다.
SurveyText.destroy_all
SurveyText.create!([{
    question_id: 1,
    question_text: "Are you a K-pop fan?",
    answer1_text: "Yes",
    answer2_text: "No, I'm new to K-pop fandom",
    is_active: true,
  },{
    question_id: 2,
    question_text: "What's your purpose of training?",
    answer1_text: "Just for fun",
    answer2_text: "I'm a dancer, and want to expand the type of dance I can do",
    answer3_text: "I'm preparing for a K-pop audition",
    is_active: true,
  },{
    question_id: 3,
    question_text: "What is your age?",
    answer1_text: "under 21",
    answer2_text: "20s",
    answer3_text: "30s",
    answer4_text: "40s",
    answer5_text: "50+",
    is_active: true,
  },{
    question_id: 4,
    question_text: "What is your dancing experience like?",
    answer1_text: "I'm a beginner with no experience",
    answer2_text: "I dance for hobby",
    answer3_text: "I'm serious about dancing (1+ years of class)",
    answer4_text: "I'm a professional dancer",
    is_active: true,
  },{
    question_id: 5,
    question_text: "Do you have a dance resume?",
    answer1_text: "Yes, I do",
    answer2_text: "No, I need help making one",
    is_active: true,
  },{
    question_id: 6,
    question_text: "How much time are you willing to spend extra practicing in a week?",
    answer1_text: "less than a hour",
    answer2_text: "up to 3 hours",
    answer3_text: "up to 6 hours",
    answer4_text: "more than 6 hours a week",
    is_active: true,
  },{
    question_id: 7,
    question_text: "If given a chance, are you willing to attend in a K-pop idol audition in Korea?",
    answer1_text: "Yes",
    answer2_text: "No, maybe another time",
    is_active: true,
  }
]);