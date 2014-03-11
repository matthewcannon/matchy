task :default => [:recycle, :cucumber, :stop]

task :setup => [:clean, :bundle, :install_node_modules]

task :clean => [:clean_bundle, :clean_node_modules]

task :clean_bundle do
	system 'rm Gemfile.lock -f'
end

task :clean_node_modules do
	system 'sudo rm node_modules/ -r -f'
end

task :bundle do
	system 'bundle install'
end

task :install_node_modules do
	system 'sudo npm install'
end

task :recycle => [:stop, :start]

task :stop => [:stop_node]

task :start => [:start_node]

task :stop_node do
	system 'killall node'
end

task :start_node do
	system 'node app.js &'
end

task :cucumber do
	system 'cd cucumber && bundle exec cucumber'
end

task :guard do
	system 'cd cucumber && bundle exec guard'	
end

task :remove_deleted_files_from_git do
    system 'git rm $(git ls-files --deleted)'
end

task :stage do
    system 'cp Procfile ./pub -f'
    system 'cd ./pub && foreman start'
end

task :publish do
    system 'cd ./pub/'
    system 'git add .'
    system 'git commit -m \'publish\'' 
    system 'git push heroku master' 
    system 'heroku ps:scale web=1'
    system 'heroku ps' 
    system 'heroku open'
end
