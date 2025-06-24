# common-utility-container

[![Quay Repository](https://img.shields.io/badge/Quay.io-common--utility--container-blue?logo=quay)](https://quay.io/repository/dminnear/common-utility-container)
[![Container Build Status](https://github.com/dminnear-rh/common-utility-container/actions/workflows/push-to-quay.yaml/badge.svg?branch=main)](https://github.com/dminnear-rh/common-utility-container/actions/workflows/push-to-quay.yaml)

This repository defines a container image that extends the [Validated Patterns utility container](https://quay.io/repository/hybridcloudpatterns/utility-container).

## Features

- **Built-in Common Makefile**
  Includes a default `Makefile` that provides common tasks such as installing patterns, loading secrets, deploying the pattern operator, and other standard operations.
  > This removes the need for simple pattern repositories to maintain their own `Makefile`.

- **Included `common` Directory**
  The container also includes the latest version of the [`common`](https://github.com/validatedpatterns/common) directory from the Validated Patterns project.
  > Pattern repos no longer need to vendor this directory via Git subtree or maintain their own local copy — they can always use the latest provided by the container.

## Usage

Pattern repos can use this container to run Makefile-based workflows without needing to copy or maintain shared logic, keeping their repos smaller, simpler, and always up to date with the latest common behavior.
