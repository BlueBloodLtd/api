=begin
#PostgREST API

#standard public schema

OpenAPI spec version: 0.5.0.0 (d8896be)

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module SwaggerClient
  class RpcPgpKeyIdApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # 
    # @param args 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :prefer Preference
    # @return [nil]
    def rpc_pgp_key_id_post(args, opts = {})
      rpc_pgp_key_id_post_with_http_info(args, opts)
      return nil
    end

    # 
    # 
    # @param args 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :prefer Preference
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def rpc_pgp_key_id_post_with_http_info(args, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RpcPgpKeyIdApi.rpc_pgp_key_id_post ..."
      end
      # verify the required parameter 'args' is set
      if @api_client.config.client_side_validation && args.nil?
        fail ArgumentError, "Missing the required parameter 'args' when calling RpcPgpKeyIdApi.rpc_pgp_key_id_post"
      end
      if @api_client.config.client_side_validation && opts[:'prefer'] && !['params=single-object'].include?(opts[:'prefer'])
        fail ArgumentError, 'invalid value for "prefer", must be one of params=single-object'
      end
      # resource path
      local_var_path = "/rpc/pgp_key_id"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/vnd.pgrst.object+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/vnd.pgrst.object+json', 'text/csv'])
      header_params[:'Prefer'] = opts[:'prefer'] if !opts[:'prefer'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(args)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RpcPgpKeyIdApi#rpc_pgp_key_id_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
