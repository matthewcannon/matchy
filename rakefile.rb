task :setup => [:stop, :clean, :bundle, :install_node_modules]

task :clean => [:clean_bundle, :clean_node_modules, :clean_logs]

task :clean_bundle do
    system 'rm ./.bundle/ -rf'
end

task :clean_node_modules do
	system 'sudo rm node_modules/ -rf'
end

task :clean_logs do
    system 'rm ./log/nodemon.log -f'
    system 'rm ./log/mongo.log -f'
end

task :bundle do
	system 'bundle install'
end

task :install_node_modules do
	system 'sudo npm install'
end

task :recycle => [:stop, :start]

task :stop => [:stop_node, :stop_mongo]

task :start => [:start_mongo, :start_node]

task :stop_mongo do
	system 'sudo killall mongod'
end

task :stop_node do
	system 'killall node'
end

task :start_mongo do
    system 'sudo mongod --fork -v --logpath ./log/mongo.log'
end

task :start_node do
	system 'nodemon server.js > ./log/nodemon.log &'
end

task :check => [:recycle, :cucumber, :stop]

task :cucumber => [:clean_cucumber_logs] do
	system 'cd cucumber && bundle exec cucumber -o ../log/cucumber.log'
end

task :guard => [:recycle] do
	system 'cd cucumber && bundle exec guard -i'	
end
