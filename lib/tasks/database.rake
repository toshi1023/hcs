
# シードデータの再投入コマンドを"rails db:rebuild"で実行できるように設定
namespace :db do
  desc "Rebuild the development database from scratch"
  task :rebuild => :environment do
    sh "rm -f db/development.sqlite3"
    Rake::Task["db:migrate"].invoke
    Rake::Task["db:seed"].invoke
  end
end
