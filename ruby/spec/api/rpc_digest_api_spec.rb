=begin
#PostgREST API

#standard public schema

OpenAPI spec version: 0.5.0.0 (d8896be)

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::RpcDigestApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RpcDigestApi' do
  before do
    # run before each test
    @instance = SwaggerClient::RpcDigestApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RpcDigestApi' do
    it 'should create an instance of RpcDigestApi' do
      expect(@instance).to be_instance_of(SwaggerClient::RpcDigestApi)
    end
  end

  # unit tests for rpc_digest_post
  # 
  # 
  # @param args 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :prefer Preference
  # @return [nil]
  describe 'rpc_digest_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
