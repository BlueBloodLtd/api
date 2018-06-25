# coding: utf-8

"""
    PostgREST API

    standard public schema  # noqa: E501

    OpenAPI spec version: 0.5.0.0 (d8896be)
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


from __future__ import absolute_import

import re  # noqa: F401

# python 2 and python 3 compatibility library
import six

from swagger_client.api_client import ApiClient


class RpcPgpArmorHeadersApi(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    Ref: https://github.com/swagger-api/swagger-codegen
    """

    def __init__(self, api_client=None):
        if api_client is None:
            api_client = ApiClient()
        self.api_client = api_client

    def rpc_pgp_armor_headers_post(self, args, **kwargs):  # noqa: E501
        """rpc_pgp_armor_headers_post  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async=True
        >>> thread = api.rpc_pgp_armor_headers_post(args, async=True)
        >>> result = thread.get()

        :param async bool
        :param object args: (required)
        :param str prefer: Preference
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async'):
            return self.rpc_pgp_armor_headers_post_with_http_info(args, **kwargs)  # noqa: E501
        else:
            (data) = self.rpc_pgp_armor_headers_post_with_http_info(args, **kwargs)  # noqa: E501
            return data

    def rpc_pgp_armor_headers_post_with_http_info(self, args, **kwargs):  # noqa: E501
        """rpc_pgp_armor_headers_post  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async=True
        >>> thread = api.rpc_pgp_armor_headers_post_with_http_info(args, async=True)
        >>> result = thread.get()

        :param async bool
        :param object args: (required)
        :param str prefer: Preference
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['args', 'prefer']  # noqa: E501
        all_params.append('async')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method rpc_pgp_armor_headers_post" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'args' is set
        if ('args' not in params or
                params['args'] is None):
            raise ValueError("Missing the required parameter `args` when calling `rpc_pgp_armor_headers_post`")  # noqa: E501

        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}
        if 'prefer' in params:
            header_params['Prefer'] = params['prefer']  # noqa: E501

        form_params = []
        local_var_files = {}

        body_params = None
        if 'args' in params:
            body_params = params['args']
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json', 'application/vnd.pgrst.object+json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/json', 'application/vnd.pgrst.object+json', 'text/csv'])  # noqa: E501

        # Authentication setting
        auth_settings = []  # noqa: E501

        return self.api_client.call_api(
            '/rpc/pgp_armor_headers', 'POST',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type=None,  # noqa: E501
            auth_settings=auth_settings,
            async=params.get('async'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)
