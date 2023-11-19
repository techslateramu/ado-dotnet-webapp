locals {
    
    kv_access_policy  = [{
        tenant_id                 = data.azurerm_client_config.current.tenant_id
        object_id                 = data.azurerm_client_config.current.object_id
        secret_permissions        =  ["Get","List","Set","Delete","Purge","Recover"]    
    }]

    identity = [{
        type = "SystemAssigned"
    }]

    site_config = [{
        application_stack = [{
                dotnet_version = "6.0"
        }]

    }]

    connection_string = [{
          name = "ExampleName1"
          type = "Custom"
          value = "ExampleValue1"
    },
    {
          name = "ExampleName2"
          type = "Custom"
          value = "ExampleValue2"
    }]

    app_settings = {
      # ApplicationInsights__InstrumentationKey         = module.application_insights.instrumentation_key
      Test   = "test"
    }

}