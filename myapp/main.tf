resource "random_integer" "ri" { 
	min = 10000
	max = 33333
}

resource "azurerm_resource_group" "rg" {
	name = "myrg-${random_integer.ri.result}"
	location = "eastus"
}

resource "azurerm_app_service_plan" "appserviceplan" {
	name                = "webapp-asp-${random_integer.ri.result}"
	location            = azurerm_resource_group.rg.location
	resource_group_name = azurerm_resource_group.rg.name
	sku { 
		tier = "free"
		size = "f1"
    }
}


resource "azurerm_app_service" "webapp" { 
	name = "webapp-${random_integer.ri.result}"
	location = azurerm_resource_group.rg.location
	resource_group_name = azurerm_resource_group.rg.name
	app_service_plan_id = azurerm_app_service_plan.appserviceplan.id
	source_control {
		repo_url = "https://github.com/Azure-Samples/nodejs-docs-hello-world"
		branch = "master"
		manual_integration = true
		use_mercurial = false
	}
}
