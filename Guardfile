guard :bundler do
	watch('Gemfile')
end

guard 'cucumber' do
  watch(%r{^cucumber/features/.+\.feature$}) { 'cucumber/features' }
  watch(%r{^cucumber/features/support/.+$}) { 'features' }
  watch(%r{^cucumber/features/step_definitions/(.+)_steps\.rb$}) { |m| Dir[File.join("**/#{m[1]}.feature")][0] || 'features' }
end
