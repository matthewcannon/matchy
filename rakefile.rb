task :default => [:recycle_app, :phantomjs, :cucumber, :stop_all]

task :recycle_app => [:stop_all, :drop_db, :start_all]

task :stop_all => [:stop_node, :stop_mongo]

task :start_all => [:start_mongo, :start_node]

task :stop_mongo do
	system 'taskkill /im mongod.exe /f /t'
end

task :drop_db do
	system 'rmdir db /q /s'
end

task :start_mongo do
	system 'mkdir db && start mongod --dbpath .\db'
end

task :stop_node do
	system 'taskkill /im node.exe /f /t'
end

task :start_node do
	system 'start node express/app.js'
end

task :cucumber do
	system 'cd cucumber && cucumber'
end

task :phantomjs do
	system 'tools/phantomjs/phantomjs.exe tools/phantomjs/examples/run-qunit.js test/tests.html'
end

task :setup_express do
	system 'mkdir express && cd express && express -c stylus && npm install -d'
end
