# app/services/application_service.rb
class ApplicationService
  def self.perform(*args, &block)
    new(*args, &block).perform
  end
end