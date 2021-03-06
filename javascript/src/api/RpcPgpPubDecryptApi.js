/**
 * PostgREST API
 * standard public schema
 *
 * OpenAPI spec version: 0.5.0.0 (d8896be)
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: unset
 *
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['ApiClient'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'));
  } else {
    // Browser globals (root is window)
    if (!root.PostgRestApi) {
      root.PostgRestApi = {};
    }
    root.PostgRestApi.RpcPgpPubDecryptApi = factory(root.PostgRestApi.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';

  /**
   * RpcPgpPubDecrypt service.
   * @module api/RpcPgpPubDecryptApi
   * @version 0.5.0.0 (d8896be)
   */

  /**
   * Constructs a new RpcPgpPubDecryptApi. 
   * @alias module:api/RpcPgpPubDecryptApi
   * @class
   * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
   * default to {@link module:ApiClient#instance} if unspecified.
   */
  var exports = function(apiClient) {
    this.apiClient = apiClient || ApiClient.instance;


    /**
     * Callback function to receive the result of the rpcPgpPubDecryptPost operation.
     * @callback module:api/RpcPgpPubDecryptApi~rpcPgpPubDecryptPostCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * @param {Object} args 
     * @param {Object} opts Optional parameters
     * @param {module:model/String} opts.prefer Preference
     * @param {module:api/RpcPgpPubDecryptApi~rpcPgpPubDecryptPostCallback} callback The callback function, accepting three arguments: error, data, response
     */
    this.rpcPgpPubDecryptPost = function(args, opts, callback) {
      opts = opts || {};
      var postBody = args;

      // verify the required parameter 'args' is set
      if (args === undefined || args === null) {
        throw new Error("Missing the required parameter 'args' when calling rpcPgpPubDecryptPost");
      }


      var pathParams = {
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
        'Prefer': opts['prefer']
      };
      var formParams = {
      };

      var authNames = [];
      var contentTypes = ['application/json', 'application/vnd.pgrst.object+json', 'text/csv'];
      var accepts = ['application/json', 'application/vnd.pgrst.object+json'];
      var returnType = null;

      return this.apiClient.callApi(
        '/rpc/pgp_pub_decrypt', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
  };

  return exports;
}));
