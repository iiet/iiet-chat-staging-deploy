class DeployWorker
  include Sidekiq::Worker

  def perform()
    system("./deploy_script.sh")
  end
end
