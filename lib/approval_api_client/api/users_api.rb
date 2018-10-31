=begin
#Insights Service Approval APIs

#APIs to query approval service

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module ApprovalAPIClient
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add a new approval request
    # request creation may not be via rest
    # @param workflow_id id of workflow
    # @param body Approval request object that needs to be added
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def add_request(workflow_id, body, opts = {})
      add_request_with_http_info(workflow_id, body, opts)
      return nil
    end

    # Add a new approval request
    # request creation may not be via rest
    # @param workflow_id id of workflow
    # @param body Approval request object that needs to be added
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def add_request_with_http_info(workflow_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.add_request ..."
      end
      # verify the required parameter 'workflow_id' is set
      if @api_client.config.client_side_validation && workflow_id.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_id' when calling UsersApi.add_request"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling UsersApi.add_request"
      end
      # resource path
      local_var_path = "/workflows/{workflow_id}/requests".sub('{' + 'workflow_id' + '}', workflow_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#add_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves approval request by given id
    # Query approval request by given id
    # @param id query by id
    # @param [Hash] opts the optional parameters
    # @return [Request]
    def fetch_request_by_id(id, opts = {})
      data, _status_code, _headers = fetch_request_by_id_with_http_info(id, opts)
      return data
    end

    # Retrieves approval request by given id
    # Query approval request by given id
    # @param id query by id
    # @param [Hash] opts the optional parameters
    # @return [Array<(Request, Fixnum, Hash)>] Request data, response status code and response headers
    def fetch_request_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.fetch_request_by_id ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.fetch_request_by_id"
      end
      # resource path
      local_var_path = "/requests/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: UsersApi#fetch_request_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns stages by given request id
    # Returns stages by request id
    # @param request_id id of request
    # @param [Hash] opts the optional parameters
    # @return [Array<Stage>]
    def fetch_request_stages(request_id, opts = {})
      data, _status_code, _headers = fetch_request_stages_with_http_info(request_id, opts)
      return data
    end

    # Returns stages by given request id
    # Returns stages by request id
    # @param request_id id of request
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Stage>, Fixnum, Hash)>] Array<Stage> data, response status code and response headers
    def fetch_request_stages_with_http_info(request_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.fetch_request_stages ..."
      end
      # verify the required parameter 'request_id' is set
      if @api_client.config.client_side_validation && request_id.nil?
        fail ArgumentError, "Missing the required parameter 'request_id' when calling UsersApi.fetch_request_stages"
      end
      # resource path
      local_var_path = "/requests/{request_id}/stages".sub('{' + 'request_id' + '}', request_id.to_s)

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
      auth_names = ['approval_auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Stage>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#fetch_request_stages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end