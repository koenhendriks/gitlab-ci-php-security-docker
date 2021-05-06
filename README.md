# GitLab CI - local-php-security-checker

A container specifically for using fabpot / local-php-security-checker in your GitLab CI.

Add the following build step to your `.gitlab-ci.yaml`

```yaml
security_audit:
  image: jessekramer/gitlab-ci-php-security-docker:latest
  script:
    - local-php-security-checker
```
