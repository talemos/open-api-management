#Create Deployment
resource "oci_apigateway_deployment" "deployment" {
  #Required
  compartment_id = var.gateway_compartment_ocid
  gateway_id     = var.gateway_ocid
  path_prefix    = var.gateway_path_prefix
  specification {
    #Optional
    logging_policies {
      #Optional
      access_log {
        #Optional
        is_enabled = "true"
      }
      execution_log {
        #Optional
        is_enabled = "true"
        log_level  = "INFO"
      }
    }
    request_policies {
      cors {
        #Required
        allowed_origins = ["*"]
      }
      rate_limiting {
        #Required
        rate_in_requests_per_second = "5"
        rate_key                    = "TOTAL"
      }
    }
    #Dynamic Routes
    dynamic "routes" {
      for_each = var.gateway_backend 
      content {
        #Required
        backend {
          #Required
          type = routes.value.type
          url = routes.value.url
        }
        path    = routes.value.path
        methods = routes.value.methods
        request_policies {
          cors {
            #Required
            #allowed_origins = var.deployment_specification_routes_request_policies_cors_allowed_origins
            allowed_origins = ["*"]
          }
        }
      }
    }
  }
  #Optional
  display_name = var.gateway_deployment_display_name
}