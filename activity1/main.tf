module "bucket" {
  source  = "./bucket"
  name    = "whosane-${terraform.workspace}"
}
