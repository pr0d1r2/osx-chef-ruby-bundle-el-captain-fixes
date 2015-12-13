define :bundle_config do
  execute "#{node['etc']['passwd'][node['current_user']]['dir']}/.rbenv/shims/bundle config #{params[:name]}" do
    user node['current_user']
  end
end
