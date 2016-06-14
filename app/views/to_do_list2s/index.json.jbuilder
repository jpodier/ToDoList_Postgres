json.array!(@to_do_list2s) do |to_do_list2|
  json.extract! to_do_list2, :id, :task_name, :description, :status
  json.url to_do_list2_url(to_do_list2, format: :json)
end
