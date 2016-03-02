json.array!(@banners) do |banner|
  json.extract! banner, :id, :name, :description
  json.url banner_url(banner, format: :json)
end
