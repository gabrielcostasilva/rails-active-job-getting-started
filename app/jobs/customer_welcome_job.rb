class CustomerWelcomeJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "*** Welcome to our platform! ***"
  end
end
