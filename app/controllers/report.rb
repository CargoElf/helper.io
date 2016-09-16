get "/" do
  redirect "/reports/new"
end

get "/reports/new" do
  erb :"/reports/new"
end

get "reports/:id" do
  @report = Report.find(params[:id])
end

post "/reports" do
  @report = Report.new(params[:report])
  if @report.save
    redirect "/reports/#{@report.id}"
  else
    @errors = @report.errors.full_messages
  end
end
