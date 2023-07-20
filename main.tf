module "network" {
  source = "./modules/network"
}

module "instances" {
  source     = "./modules/instances"
  subnets_id = module.network.subnets_id
  vpc_id     = module.network.vpc_id
}