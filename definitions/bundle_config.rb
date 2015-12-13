define :bundle_config do
  execute "bundle config #{params[:name]}" do
    user node['current_user']
  end
end
