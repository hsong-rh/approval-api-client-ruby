=begin
#Insights Service Approval APIs

#APIs to query approval service

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for ApprovalAPIClient::ApproversApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ApproversApi' do
  before do
    # run before each test
    @instance = ApprovalAPIClient::ApproversApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ApproversApi' do
    it 'should create an instance of ApproversApi' do
      expect(@instance).to be_instance_of(ApprovalAPIClient::ApproversApi)
    end
  end

  # unit tests for add_action
  # Add an action
  # 
  # @param stage_id id of stage
  # @param body Action object that will be added
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'add_action test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for fetch_action_by_id
  # Finds approver action by id
  # 
  # @param id query by id
  # @param [Hash] opts the optional parameters
  # @return [Action]
  describe 'fetch_action_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for fetch_actions
  # Returns list of approver actions
  # Returns a list of approver actions
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit How many items to return at one time (max 1000)
  # @option opts [Integer] :offset Starting Offset
  # @return [Array<Action>]
  describe 'fetch_actions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for fetch_stage_by_id
  # Retrieves approval stages by given id
  # 
  # @param id query by id
  # @param [Hash] opts the optional parameters
  # @return [Request]
  describe 'fetch_stage_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_action
  # Delete action by id
  # 
  # @param id query by id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_action test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_action
  # Update an existing action
  # 
  # @param id query by id
  # @param body Action object that needs to be updated
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_action test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_stage
  # Update an existing approval stage
  # 
  # @param id query by id
  # @param body new stage
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_stage test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end