json.array!(@cprofiles) do |cprofile|
  json.extract! cprofile, :id, :company_name, :company_phone, :company_mail, :company_address, :company_owner, :company_web, :company_description, :company_logo
  json.url cprofile_url(cprofile, format: :json)
end
