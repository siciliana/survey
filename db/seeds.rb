50.times do
  User.create(username: Faker::Name.name, password: "123")
end

300.times do
	random_string = (0...8).map { (65 + rand(26)).chr }.join
	User.find(rand(1..50).surveys << Survey.create(title: Faker::Lorem.words(num = 3, supplemental = false).join(" "), url: random_string)
end

900.times do
  Survey.find(1..300).questions << Question.create(title: Faker::Lorem.sentence(word_count = 4, supplemental = false, random_words_to_add = 6))
end



2000.times do
  survey_submissions = Survey.find(1..300).survey_submissions << SurveySubmission.create(:user_id: rand(1..150), gender: ["male","female"].sample, age: rand(18..65))
  Survey.find(1..300).questions.each do |question|
    question.question_response << SurveySubmission.create(user_id: rand(1..150), survey_id: rand(1..100), )
end

SurveySubmission.where("user_id > ?", 50).each do |s| 
  s.user_id = nil
  s.save
end






  #Question Responses

  # SurveySubmission.first.questions.each do |question|
  #   question.question_response.create(answer:,)
  # end

  # 600.times do
  # 	Survey.all.questions[i]

  # 	Question.all.each do |question|
  # 		question.questionresponses.create()
  # 	# QuestionResponses.create(survey_submission_id: rand(1..900), question_id: rand(1..600))
  # end

# user = User.last
# new_survey = user.surveys << Survey.create(title: "MY NEW SURVEY")
# new_survey.last.questions << [Question.create(title: "How are you?"), Question.create(title: "What's new?)]
# SurveySubmission.create(gender: "male",age: 33)
# submit = _
# Survey.last.update_attributes(url: "xyz")
# Survey.find_by_url("xyz").id
# submit.update_attributes(survey_id: Survey.find_by_url("xyz").id)
# Survey.find_by_url("xyz").questions
