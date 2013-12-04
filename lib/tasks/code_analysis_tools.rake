task :code_analysis do
  sh 'bundle exec rubocop'
  sh 'bundle exec rails_best_practices .'
  sh 'bundle exec reek app config lib'
end
