resource "ibm_iam_access_group" "res_ag_1" {
  name        = var.project + "_" + var.ag1
  description = "Access group for OpenShift cluster administrators"
}

resource "ibm_iam_access_group_policy" "res_ag_policy1" {

  access_group_id = ibm_iam_access_group.res_ag_1.id
  roles           = ["Administrator", "Manager"]
  resources {
    service = "containers-kubernetes"
    resource_group_id = ibm_resource_group.group.id
  }
}

resource "ibm_iam_access_group_policy" "res_ag_policy2" {

  access_group_id = ibm_iam_access_group.res_ag_1.id
  roles           = ["Administrator", "Manager"]
  resources {
    service = "container-registry"
    resource_group_id = ibm_resource_group.group.id
  }
}

resource "ibm_iam_access_group_policy" "res_ag_policy3" {

  access_group_id = ibm_iam_access_group.res_ag_1.id
  roles           = ["Administrator", "Manager"]
  resources {
    service = "sysdig-monitor"
    resource_group_id = ibm_resource_group.group.id
  }
}

resource "ibm_iam_access_group_policy" "res_ag_policy4" {

  access_group_id = ibm_iam_access_group.res_ag_1.id
  roles           = ["Administrator", "Manager"]
  resources {
    service = "logdna"
    resource_group_id = ibm_resource_group.group.id
  }
}

resource "ibm_iam_access_group_policy" "res_ag_policy5" {

  access_group_id = ibm_iam_access_group.res_ag_1.id
  roles           = ["Administrator", "Manager"]
  resources {
    service = "kms"
    resource_group_id = ibm_resource_group.group.id
  }
}

resource "ibm_iam_access_group_policy" "res_ag_policy6" {

  access_group_id = ibm_iam_access_group.res_ag_1.id
  roles           = ["Administrator", "Manager"]
  resources {
    service = "schematics"
    resource_group_id = ibm_resource_group.group.id
  }
}