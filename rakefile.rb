task :default => [:recycle, :phantomjs, :cucumber, :stop_all]

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

task :recycle => [:stop_all, :start_all]

task :stop_all => [:stop_node]

task :start_all => [:start_node]

task :stop_node do
	system 'killall node'
end

task :start_node do
	system 'node express/app.js &'
end

task :cucumber do
	system 'cd cucumber && bundle exec cucumber'
end

task :phantomjs do
	system './tools/phantomjs/bin/phantomjs ./tools/phantomjs/examples/run-qunit.js ./test/tests.html'
end

task :guard do
	system 'bundle exec guard'	
end
