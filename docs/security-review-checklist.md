# Enterprise DevSecOps Review Checklist

## Infrastructure as Code
- [ ] Terraform formatting and validation pass from each root module.
- [ ] Provider versions are constrained and lock files are committed.
- [ ] Variables are typed and validated; examples contain no real secrets.
- [ ] State backend access, encryption, locking, and retention are documented.
- [ ] Plan output is reviewed before any apply.

## Identity
- [ ] CI uses short-lived federation where supported.
- [ ] Roles are least-privilege and scoped to required resources.
- [ ] Human and workload identities are separated.
- [ ] Secret rotation and incident response procedures exist.

## Network
- [ ] Ingress/egress requirements are documented.
- [ ] No broad management access is allowed from the internet.
- [ ] Private endpoints, DNS, routes, and firewall rules are reviewed.
- [ ] Diagnostics and flow visibility are enabled where required.

## Pipeline
- [ ] PR checks include format, validate, lint, and IaC scanning.
- [ ] Action versions and dependencies are reviewed.
- [ ] Artifacts are access-controlled and retained only as needed.
- [ ] Production deployment requires protected approvals.
- [ ] Findings are triaged with owners and due dates.

## Operations
- [ ] Monitoring, alerting, backup, restore, and recovery objectives are defined.
- [ ] Teardown is reviewed for destructive actions.
- [ ] Cost ownership, budgets, and resource cleanup are documented.

Mark a checkbox only after verifying the corresponding configuration and evidence. This document is a review aid, not a compliance certification.
