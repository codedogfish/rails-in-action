json.array!(@provider_infos) do |provider_info|
  json.extract! provider_info, :id, :pname, :conPerson, :conPost, :conPhoneNum, :Address, :Email
  json.url provider_info_url(provider_info, format: :json)
end
