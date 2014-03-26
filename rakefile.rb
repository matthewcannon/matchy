task :setup => [:clean, :bundle, :install_node_modules]

task :validate => [:recycle, :cucumber, :stop]

task :clean => [:clean_bundle, :clean_node_modules]

task :clean_bundle do
	system 'rm Gemfile.lock -f'
    system 'rm ./.bundle/ -rf'
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

task :guard => [:recycle] do
	system 'cd cucumber && bundle exec guard -i'	
end

task :remove_deleted_files_from_git do
    system 'git rm $(git ls-files --deleted)'
end

task :stage => [:clean_stage, :package] do
    system 'cp app.js ./pub/'
    system 'cp app.html ./pub/'
    system 'cp Procfile ./pub/ -f'
    system 'cd ./pub/ && foreman start'
end

task :clean_stage do
    system 'rm ./pub/app.js -f'
    system 'rm ./pub/app.html -f'
    system 'rm ./pub/Procfile -f'
end

task :package do
    system 'grunt minify'
end

task :ship do
    #system 'cd ./pub/'
    #system 'git add .'
    #system 'git commit -m \'ship\'' 
    #system 'git push heroku master' 
    #system 'heroku ps:scale web=1'
    #system 'heroku ps' 
    #system 'heroku open'
end
