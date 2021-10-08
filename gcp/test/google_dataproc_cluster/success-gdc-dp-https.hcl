module "tfplan-functions" {
  source = "../../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "./mock-tfplan-gdc-dp-https-success.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}
