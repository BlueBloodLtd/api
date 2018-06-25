# swagger_client

SwaggerClient - the Ruby gem for the PostgREST API

standard public schema

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 0.5.0.0 (d8896be)
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build swagger_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./swagger_client-1.0.0.gem
```
(for development, run `gem install --dev ./swagger_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'swagger_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'swagger_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'swagger_client'

api_instance = SwaggerClient::AddrsApi.new

opts = { 
  addr: "addr_example", # String | 
  balance: "balance_example", # String | 
  prefer: "prefer_example" # String | Preference
}

begin
  api_instance.addrs_delete(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AddrsApi->addrs_delete: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://0.0.0.0:3000*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwaggerClient::AddrsApi* | [**addrs_delete**](docs/AddrsApi.md#addrs_delete) | **DELETE** /addrs | 
*SwaggerClient::AddrsApi* | [**addrs_get**](docs/AddrsApi.md#addrs_get) | **GET** /addrs | 
*SwaggerClient::AddrsApi* | [**addrs_patch**](docs/AddrsApi.md#addrs_patch) | **PATCH** /addrs | 
*SwaggerClient::AddrsApi* | [**addrs_post**](docs/AddrsApi.md#addrs_post) | **POST** /addrs | 
*SwaggerClient::BlocksApi* | [**blocks_delete**](docs/BlocksApi.md#blocks_delete) | **DELETE** /blocks | 
*SwaggerClient::BlocksApi* | [**blocks_get**](docs/BlocksApi.md#blocks_get) | **GET** /blocks | 
*SwaggerClient::BlocksApi* | [**blocks_patch**](docs/BlocksApi.md#blocks_patch) | **PATCH** /blocks | 
*SwaggerClient::BlocksApi* | [**blocks_post**](docs/BlocksApi.md#blocks_post) | **POST** /blocks | 
*SwaggerClient::ContractsApi* | [**contracts_delete**](docs/ContractsApi.md#contracts_delete) | **DELETE** /contracts | 
*SwaggerClient::ContractsApi* | [**contracts_get**](docs/ContractsApi.md#contracts_get) | **GET** /contracts | 
*SwaggerClient::ContractsApi* | [**contracts_patch**](docs/ContractsApi.md#contracts_patch) | **PATCH** /contracts | 
*SwaggerClient::ContractsApi* | [**contracts_post**](docs/ContractsApi.md#contracts_post) | **POST** /contracts | 
*SwaggerClient::IntrospectionApi* | [**root_get**](docs/IntrospectionApi.md#root_get) | **GET** / | OpenAPI description (this document)


## Documentation for Models

 - [SwaggerClient::Addrs](docs/Addrs.md)
 - [SwaggerClient::Blocks](docs/Blocks.md)
 - [SwaggerClient::Contracts](docs/Contracts.md)


## Documentation for Authorization

 All endpoints do not require authorization.
