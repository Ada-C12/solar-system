require 'rake/testtask'

Rake::TestTask.new do |t|
  # t.libs = ["lib"]
  # t.warning = true
  t.test_files = FileList['*_test.rb']
end

task default: :test