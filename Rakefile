require 'rake-jekyll'

Rake::Jekyll::GitDeployTask.new(:deploy) do |t|
    t.committer = 'Kelly Heard <mail@mail.com>'
    t.build_script = ->(dest_dir) {
    puts "\nRunning Jekyll..."
    sh "bundle exec JEKYLL_ENV=production jekyll build --destination #{dest_dir}"
  }
end