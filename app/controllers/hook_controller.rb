class HookController < ApplicationController
  def create
    DeployWorker.perform_async
  end  
end
