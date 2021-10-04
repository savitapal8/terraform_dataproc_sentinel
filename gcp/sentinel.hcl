module "tfplan-functions" {
    source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "./mocks/mock-tfplan-v2.sentinel"
  }
}

policy "google_dataproc_cluster" {
    source = "./google_dataproc_cluster.sentinel"
    enforcement_level = "advisory"
}

