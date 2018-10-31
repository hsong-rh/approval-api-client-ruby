=begin
#Insights Service Approval APIs

#APIs to query approval service

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ApprovalAPIClient::Decision
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Decision' do
  before do
    # run before each test
    @instance = ApprovalAPIClient::Decision.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Decision' do
    it 'should create an instance of Decision' do
      expect(@instance).to be_instance_of(ApprovalAPIClient::Decision)
    end
  end
end

