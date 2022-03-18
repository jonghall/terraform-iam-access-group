resource "ibm_iam_access_group" "res_ag_2" {
  name        = var.project + "_" + var.ag2
  description = "Access group for Roks cluster Users"
}

resource "ibm_iam_access_group_policy" "res_ag_policy1" {

  access_group_id = ibm_iam_access_group.res_ag_1.id
  roles           = ["Viewer", "Reader"]
  resources {
    service = "containers-kubernetes"
    resource_group_id = ibm_resource_group.group.id
  }
}

resource "ibm_iam_access_group_policy" "res_ag_policy2" {

  access_group_id = ibm_iam_access_group.res_ag_1.id
  roles           = ["Reader"]
  resources {
    service = "container-registry"
    resource_group_id = ibm_resource_group.group.id
  }
}

resource "ibm_iam_access_group_policy" "res_ag_policy3" {

  access_group_id = ibm_iam_access_group.res_ag_1.id
  roles           = ["Viewer"]
  resources {
    service = "sysdig-monitor"
    resource_group_id = ibm_resource_group.group.id
  }
}

resource "ibm_iam_access_group_policy" "res_ag_policy4" {

  access_group_id = ibm_iam_access_group.res_ag_1.id
  roles           = ["Viewer"]
  resources {
    service = "logdna"
    resource_group_id = ibm_resource_group.group.id
  }
}


