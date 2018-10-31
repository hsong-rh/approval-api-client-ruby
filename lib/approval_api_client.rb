=begin
#Insights Service Approval APIs

#APIs to query approval service

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

# Common files
require 'approval_api_client/api_client'
require 'approval_api_client/api_error'
require 'approval_api_client/version'
require 'approval_api_client/configuration'

# Models
require 'approval_api_client/models/action'
require 'approval_api_client/models/decision'
require 'approval_api_client/models/group'
require 'approval_api_client/models/request'
require 'approval_api_client/models/stage'
require 'approval_api_client/models/state'
require 'approval_api_client/models/template'
require 'approval_api_client/models/workflow'

# APIs
require 'approval_api_client/api/admins_api'
require 'approval_api_client/api/approvers_api'
require 'approval_api_client/api/users_api'

module ApprovalAPIClient
  class << self
    # Customize default settings for the SDK using block.
    #   ApprovalAPIClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
