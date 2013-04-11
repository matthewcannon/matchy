task :default => [:recycle_app, :phantomjs, :cucumber, :stop_all]

task :setup => [:clean, :install_node_modules]

task :clean => [:clean_node_modules]

task :clean_node_modules do
	system 'rm node_modules/ -r -f'
end

task :install_node_modules do
	system 'sudo npm install'
end

task :recycle_app => [:stop_all, :start_all]

task :stop_all => [:stop_node]

task :start_all => [:start_node]

task :stop_node do
	system 'kill node'
end

task :start_node do
	system 'node express/app.js'
end

task :cucumber do
	system 'cd cucumber && cucumber'
end

task :phantomjs do
	system './tools/phantomjs/bin/phantomjs tools/phantomjs/examples/run-qunit.js test/tests.html'
end
