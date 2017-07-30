json.extract! siteblog, :id, :title, :desc, :longdesc, :status, :date, :created_at, :updated_at
json.url siteblog_url(siteblog, format: :json)
