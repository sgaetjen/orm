
variable tenancy_ocid {}
variable region {}
# us-phoenix-1
# us-ashburn-1
#export TF_VAR_tenancy_ocid=<tenancy_OCID>
#export TF_VAR_compartment_ocid=<compartment_OCID>
#export TF_VAR_user_ocid=<user_OCID>
#export TF_VAR_fingerprint=<key_fingerprint>
#export TF_VAR_private_key_path=<private_key_path>

provider "oci" {
  region = "${var.region}"
}

resource oci_identity_policy resmgr_policy1 {
  name           = "resmgr-policy1"
  compartment_id = var.tenancy_ocid
  description    = "Test Resource Manager Policy 1"
  #defined_tags = local.tags
 
  statements = [
       "Allow group Administrators to inspect compartments in tenancy"
       ,"Allow group Administrators to read compartments in tenancy"
      ]
}
