# Effective Waffle
> Simple and Easy Kubernetes Infrastructure for Developers

Trying to create a reusable "starter repo", for my projects.
It should setup all the common dependencies that they need.

This are monitoring/observability, ingress, setting up k8s
on a cloud of choice, packigng/deployment pipeline and secret handling.
As well as a "service" definitions for common use cases such serving services,
and job processing services.

It should also be language agnostic. You only need to provide
it `Dockerfile`'s for it to work.

## Components
 
#### Monitoring and Observability
 * [x] prometheus
 * [x] loki
 * tempo [??]
 * [x] grafana
 * healthcheks/healthchecks [??]

#### Networking
 * [x] linkerd
 * [x] ingress-nginx
 * [x] cert-manager
 * [x] external-dns
 * oauth2-proxy
 * openfass

#### Infrastructure
 * [x] Terraform
  * [x] DigitalOcean

#### Pipeline
 * Github Actions
 * Argocd vs Fluxcd [??]

#### Secrets
 * mozilla/sops

# Insipred by
 * https://panelbear.com/blog/tech-stack/

