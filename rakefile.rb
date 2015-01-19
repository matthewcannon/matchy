task :setup => [:stop_node, :clean, :bundle, :install_node_modules]

task :clean => [:clean_bundle, :clean_node_modules, :clean_logs]

task :clean_bundle do
    system 'rm ./.bundle/ -rf'
end

task :clean_node_modules do
	system 'sudo rm node_modules/ -rf'
end

task :clean_logs do
    system 'rm ./log/nodemon.log -f'
end

task :bundle do
	system 'bundle install'
end

task :install_node_modules do
	system 'sudo npm install'
end

task :start_node do
	system 'nodemon ./public/server.js > ./log/nodemon.log &'
end

task :stop_node do
	system 'killall node'
end

task :check => [:start_node, :cucumber, :stop_node]

task :cucumber do
	system 'cd cucumber && bundle exec cucumber -o ../log/cucumber.log'
end

task :guard do
	system 'cd cucumber && bundle exec guard -i'	
end
