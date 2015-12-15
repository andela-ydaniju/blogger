json.array!(@finances) do |finance|
  json.extract! finance, :id, :acct_no
  json.url finance_url(finance, format: :json)
end
