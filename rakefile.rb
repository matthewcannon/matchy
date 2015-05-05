task :setup => [:stop, :clean, :bundle, :install_node_modules]

task :clean => [:clean_bundle, :clean_node_modules, :clean_logs]

task :clean_bundle do
    system 'rm ./.bundle/ -rf'
end

task :clean_node_modules do
    system 'sudo rm -rf node_modules/'
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

task :restart => [:stop, :clean_logs, :start]

task :start do
    system "nodemon -w './pub/' -e 'html, js' ./pub/server.js > ./log/nodemon.log &"
end

task :stop do
    system 'killall node'
end

task :check => [:start, :cucumber, :stop]

task :cucumber do
    system 'cd cucumber && bundle exec cucumber -o ../log/cucumber.log'
end

# guard watches for changes to features and step definitions. gulp will take care of the rest
task :guard do
    system 'cd cucumber && bundle exec guard -i'	
end

task :gulp do
    system 'npm run gulp'
end
