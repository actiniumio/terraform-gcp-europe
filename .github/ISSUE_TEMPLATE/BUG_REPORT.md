---
name: Bug report
about: Report us a bug

---

---
### Describe the bug

> A clear and concise description of what the bug is.

---
### Reproduction scenario

> **note**: You might want to use the Vagrant environment to create a reproducible scenario triggering the bug.

Steps to reproduce the behaviour:

1. ...
2. ...

---
### Expected behaviour

> A clear and concise description of what you expected to happen.

---
### Allspark informations

> Informations about the control and allspark machines.

- **Terraform Plan**
  - *version*

```
output of `git rev-parse HEAD`
```

  - *configuration*

```yaml
# Terraform varriables.tf
```

  - *terraform command*
```shell
`terraform plan -var "foo=bar"`
```

- **Terraform server**
  - *Operating system* :

```
output of `uname -a`
```

  - *Terraform version* (if used to reproduce the issue) :

```
output of `terraform version`
```

---
### Additional context

> Add any other informations about the problem here. (e.g: logs, screenshots)
