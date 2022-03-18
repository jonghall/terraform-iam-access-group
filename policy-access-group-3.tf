resource "ibm_iam_access_group" "res_ag_3" {
  name        =  join("", [var.project,"_",var.ag3])
  description = "Access group for Roks cluster Operators"
}

resource "ibm_iam_access_group_policy" "res_ag3_policy1" {

  access_group_id = ibm_iam_access_group.res_ag_3.id
  roles           = ["Operator", "Manager"]
  resources {
    service = "containers-kubernetes"
    resource_group_id = ibm_resource_group.group.id
  }
}

resource "ibm_iam_access_group_policy" "res_ag3_policy2" {

  access_group_id = ibm_iam_access_group.res_ag_3.id
  roles           = ["Operator", "Manager"]
  resources {
    service = "container-registry"
    resource_group_id = ibm_resource_group.group.id
  }
}

resource "ibm_iam_access_group_policy" "res_ag3_policy3" {

  access_group_id = ibm_iam_access_group.res_ag_3.id
  roles           = ["Operator", "Manager"]
  resources {
    service = "sysdig-monitor"
    resource_group_id = ibm_resource_group.group.id
  }
}

resource "ibm_iam_access_group_policy" "res_ag3_policy4" {

  access_group_id = ibm_iam_access_group.res_ag_3.id
  roles           = ["Operator", "Manager"]
  resources {
    service = "logdna"
    resource_group_id = ibm_resource_group.group.id
  }
}