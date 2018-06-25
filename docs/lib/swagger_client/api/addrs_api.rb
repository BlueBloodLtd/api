=begin
#PostgREST API

#standard public schema

OpenAPI spec version: 0.5.0.0 (d8896be)

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module SwaggerClient
  class AddrsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :addr 
    # @option opts [String] :balance 
    # @option opts [String] :prefer Preference
    # @return [nil]
    def addrs_delete(opts = {})
      addrs_delete_with_http_info(opts)
      return nil
    end

    # 
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :addr 
    # @option opts [String] :balance 
    # @option opts [String] :prefer Preference
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def addrs_delete_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AddrsApi.addrs_delete ..."
      end
      if @api_client.config.client_side_validation && opts[:'prefer'] && !['return=representation', 'return=minimal', 'return=none'].include?(opts[:'prefer'])
        fail ArgumentError, 'invalid value for "prefer", must be one of return=representation, return=minimal, return=none'
      end
      # resource path
      local_var_path = "/addrs"

      # query parameters
      query_params = {}
      query_params[:'addr'] = opts[:'addr'] if !opts[:'addr'].nil?
      query_params[:'balance'] = opts[:'balance'] if !opts[:'balance'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/vnd.pgrst.object+json', 'text/csv'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/vnd.pgrst.object+json', 'text/csv'])
      header_params[:'Prefer'] = opts[:'prefer'] if !opts[:'prefer'].nil?

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
        @api_client.config.logger.debug "API called: AddrsApi#addrs_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :addr 
    # @option opts [String] :balance 
    # @option opts [String] :select Filtering Columns
    # @option opts [String] :order Ordering
    # @option opts [String] :range Limiting and Pagination
    # @option opts [String] :range_unit Limiting and Pagination (default to items)
    # @option opts [String] :offset Limiting and Pagination
    # @option opts [String] :limit Limiting and Pagination
    # @option opts [String] :prefer Preference
    # @return [Addrs]
    def addrs_get(opts = {})
      data, _status_code, _headers = addrs_get_with_http_info(opts)
      return data
    end

    # 
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :addr 
    # @option opts [String] :balance 
    # @option opts [String] :select Filtering Columns
    # @option opts [String] :order Ordering
    # @option opts [String] :range Limiting and Pagination
    # @option opts [String] :range_unit Limiting and Pagination
    # @option opts [String] :offset Limiting and Pagination
    # @option opts [String] :limit Limiting and Pagination
    # @option opts [String] :prefer Preference
    # @return [Array<(Addrs, Fixnum, Hash)>] Addrs data, response status code and response headers
    def addrs_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AddrsApi.addrs_get ..."
      end
      if @api_client.config.client_side_validation && opts[:'prefer'] && !['count=none'].include?(opts[:'prefer'])
        fail ArgumentError, 'invalid value for "prefer", must be one of count=none'
      end
      # resource path
      local_var_path = "/addrs"

      # query parameters
      query_params = {}
      query_params[:'addr'] = opts[:'addr'] if !opts[:'addr'].nil?
      query_params[:'balance'] = opts[:'balance'] if !opts[:'balance'].nil?
      query_params[:'select'] = opts[:'select'] if !opts[:'select'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/vnd.pgrst.object+json', 'text/csv'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/vnd.pgrst.object+json', 'text/csv'])
      header_params[:'Range'] = opts[:'range'] if !opts[:'range'].nil?
      header_params[:'Range-Unit'] = opts[:'range_unit'] if !opts[:'range_unit'].nil?
      header_params[:'Prefer'] = opts[:'prefer'] if !opts[:'prefer'].nil?

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
        :return_type => 'Addrs')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddrsApi#addrs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :addr 
    # @option opts [String] :balance 
    # @option opts [Addrs] :addrs addrs
    # @option opts [String] :prefer Preference
    # @return [nil]
    def addrs_patch(opts = {})
      addrs_patch_with_http_info(opts)
      return nil
    end

    # 
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :addr 
    # @option opts [String] :balance 
    # @option opts [Addrs] :addrs addrs
    # @option opts [String] :prefer Preference
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def addrs_patch_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AddrsApi.addrs_patch ..."
      end
      if @api_client.config.client_side_validation && opts[:'prefer'] && !['return=representation', 'return=minimal', 'return=none'].include?(opts[:'prefer'])
        fail ArgumentError, 'invalid value for "prefer", must be one of return=representation, return=minimal, return=none'
      end
      # resource path
      local_var_path = "/addrs"

      # query parameters
      query_params = {}
      query_params[:'addr'] = opts[:'addr'] if !opts[:'addr'].nil?
      query_params[:'balance'] = opts[:'balance'] if !opts[:'balance'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/vnd.pgrst.object+json', 'text/csv'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/vnd.pgrst.object+json', 'text/csv'])
      header_params[:'Prefer'] = opts[:'prefer'] if !opts[:'prefer'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'addrs'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddrsApi#addrs_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Addrs] :addrs addrs
    # @option opts [String] :prefer Preference
    # @return [nil]
    def addrs_post(opts = {})
      addrs_post_with_http_info(opts)
      return nil
    end

    # 
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Addrs] :addrs addrs
    # @option opts [String] :prefer Preference
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def addrs_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AddrsApi.addrs_post ..."
      end
      if @api_client.config.client_side_validation && opts[:'prefer'] && !['return=representation', 'return=minimal', 'return=none'].include?(opts[:'prefer'])
        fail ArgumentError, 'invalid value for "prefer", must be one of return=representation, return=minimal, return=none'
      end
      # resource path
      local_var_path = "/addrs"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/vnd.pgrst.object+json', 'text/csv'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/vnd.pgrst.object+json', 'text/csv'])
      header_params[:'Prefer'] = opts[:'prefer'] if !opts[:'prefer'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'addrs'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddrsApi#addrs_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end