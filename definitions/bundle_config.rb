define :bundle_config do
  execute "bundle config #{params[:name]}" do
    user node['current_user']
    environment({
      'PATH' => "#{node['etc']['passwd'][node['current_user']]['dir']}/.rbenv/shims"
    })
  end
end
