=begin
#Insights Service Approval APIs

#APIs to query approval service

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module ApprovalAPIClient
  class ApproversApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add an action
    # Add an action
    # @param stage_id id of stage
    # @param body Action object that will be added
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def add_action(stage_id, body, opts = {})
      add_action_with_http_info(stage_id, body, opts)
      return nil
    end

    # Add an action
    # Add an action
    # @param stage_id id of stage
    # @param body Action object that will be added
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def add_action_with_http_info(stage_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApproversApi.add_action ..."
      end
      # verify the required parameter 'stage_id' is set
      if @api_client.config.client_side_validation && stage_id.nil?
        fail ArgumentError, "Missing the required parameter 'stage_id' when calling ApproversApi.add_action"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ApproversApi.add_action"
      end
      # resource path
      local_var_path = "/stages/{stage_id}/actions".sub('{' + 'stage_id' + '}', stage_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['approval_auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApproversApi#add_action\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Finds approver action by id
    # Finds approver action by id
    # @param id query by id
    # @param [Hash] opts the optional parameters
    # @return [Action]
    def fetch_action_by_id(id, opts = {})
      data, _status_code, _headers = fetch_action_by_id_with_http_info(id, opts)
      return data
    end

    # Finds approver action by id
    # Finds approver action by id
    # @param id query by id
    # @param [Hash] opts the optional parameters
    # @return [Array<(Action, Fixnum, Hash)>] Action data, response status code and response headers
    def fetch_action_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApproversApi.fetch_action_by_id ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApproversApi.fetch_action_by_id"
      end
      # resource path
      local_var_path = "/actions/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Action')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApproversApi#fetch_action_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns list of approver actions
    # Returns a list of approver actions
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit How many items to return at one time (max 1000) (default to 20)
    # @option opts [Integer] :offset Starting Offset (default to 0)
    # @return [Array<Action>]
    def fetch_actions(opts = {})
      data, _status_code, _headers = fetch_actions_with_http_info(opts)
      return data
    end

    # Returns list of approver actions
    # Returns a list of approver actions
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit How many items to return at one time (max 1000)
    # @option opts [Integer] :offset Starting Offset
    # @return [Array<(Array<Action>, Fixnum, Hash)>] Array<Action> data, response status code and response headers
    def fetch_actions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApproversApi.fetch_actions ..."
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ApproversApi.fetch_actions, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 20
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ApproversApi.fetch_actions, must be greater than or equal to 20.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling ApproversApi.fetch_actions, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = "/actions"

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['approval_auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Action>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApproversApi#fetch_actions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves approval stages by given id
    # Get stage by given id
    # @param id query by id
    # @param [Hash] opts the optional parameters
    # @return [Request]
    def fetch_stage_by_id(id, opts = {})
      data, _status_code, _headers = fetch_stage_by_id_with_http_info(id, opts)
      return data
    end

    # Retrieves approval stages by given id
    # Get stage by given id
    # @param id query by id
    # @param [Hash] opts the optional parameters
    # @return [Array<(Request, Fixnum, Hash)>] Request data, response status code and response headers
    def fetch_stage_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApproversApi.fetch_stage_by_id ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApproversApi.fetch_stage_by_id"
      end
      # resource path
      local_var_path = "/stages/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Request')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApproversApi#fetch_stage_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete action by id
    # Delete action by id
    # @param id query by id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def remove_action(id, opts = {})
      remove_action_with_http_info(id, opts)
      return nil
    end

    # Delete action by id
    # Delete action by id
    # @param id query by id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def remove_action_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApproversApi.remove_action ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApproversApi.remove_action"
      end
      # resource path
      local_var_path = "/actions/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApproversApi#remove_action\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing action
    # Update an existing action
    # @param id query by id
    # @param body Action object that needs to be updated
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_action(id, body, opts = {})
      update_action_with_http_info(id, body, opts)
      return nil
    end

    # Update an existing action
    # Update an existing action
    # @param id query by id
    # @param body Action object that needs to be updated
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_action_with_http_info(id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApproversApi.update_action ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApproversApi.update_action"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ApproversApi.update_action"
      end
      # resource path
      local_var_path = "/actions/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['approval_auth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApproversApi#update_action\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing approval stage
    # Update stage
    # @param id query by id
    # @param body new stage
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_stage(id, body, opts = {})
      update_stage_with_http_info(id, body, opts)
      return nil
    end

    # Update an existing approval stage
    # Update stage
    # @param id query by id
    # @param body new stage
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_stage_with_http_info(id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApproversApi.update_stage ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApproversApi.update_stage"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ApproversApi.update_stage"
      end
      # resource path
      local_var_path = "/stages/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['approval_auth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApproversApi#update_stage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end