json.array!(@profile_question_masters) do |profile_question_master|
  json.extract! profile_question_master, :id, :section_id, :questionname, :min_length, :max_length, :question_type
  json.url profile_question_master_url(profile_question_master, format: :json)
end
