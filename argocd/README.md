# Argo CD Demo

This directory contains Argo CD configurations for testing GitOps workflows and continuous deployment practices.

## Contents

- See `../k8s/` directory for sample Kubernetes application manifests
  - Backend services (v1, v2, v3) with different configurations  
  - Frontend application with ingress
  - Database services (MySQL, Neo4j)
  - Utility pods for testing
  - All manifests configured for `demo` namespace
- Application definitions
- Repository configurations
- Policy examples

## Sample Applications

The `../k8s/` directory contains a complete microservices demo setup:

- **Backend Services**: Three versions showing evolution and feature additions
- **Frontend**: Web application with load balancer and ingress
- **Databases**: MySQL for relational data, Neo4j for graph data
- **Sleep Pod**: Utility container for testing and debugging

## Usage

1. Install Argo CD in your cluster
2. Create Argo CD applications pointing to the `../k8s/` directory
3. Test GitOps workflows, rollbacks, and multi-version deployments
4. Experiment with progressive deployment strategies

## Examples

This setup enables testing of:
- Multi-environment deployments
- Application of applications pattern
- Sync policies and hooks
- Blue-green and canary deployments
- RBAC configurations
