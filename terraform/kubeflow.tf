module "kubeflow-cluster" {
  source  = "spotify/kubeflow-cluster/gke"
  version = "0.0.1"
  cluster_name = "tfx-goof"
  cluster_region = "us-central1"
  cluster_zone = "us-central1-c"
  env_label = "goof"
  gpu_node_pool_name = "goof-nodes"
  highmem_node_pool_name = "goof-highmem"
  main_node_pool_max_nodes = "5"
  main_node_pool_min_nodes = "1"
  main_node_pool_name = "goof-main-pool"
  mysql_developer_password = var.mysql_password
  mysql_read_only_user_password = var.mysql_readonly_password
  network = "vpc-kubeflow"
  project = "tfx-goof"
  subnetwork = "us-central1-01"
  upstream_nameservers = "8.8.8.8"

  depends_on = [google_compute_network.vpc_kubeflow]
}
