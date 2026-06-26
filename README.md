# devcontainers

https://containers.dev/

I want to work with devcontainers more coz I'm fed up setting up build envs I know too little about.

This repository provides standardized, pre-configured development environments using Devcontainers and DevPod (or VSCodium).

---

## Prerequisites

- Install **DevPod**: [devpod.sh](https://devpod.sh/)
- (Optional) Install **VSCodium** with the **Dev Containers** extension if running containers directly from the editor.

---

## Environments

This repository contains multiple development environments, organized into subdirectories.

### 1. OpenTofu Dev Environment (`dev-opentofu`)

A development environment for working with **OpenTofu**.

- **Features**:
  - OpenTofu CLI (installed and available on `PATH`)
  - Utilities: `curl`, `git`, `jq`, and `wget`
  - VSCodium extension: `opentofu.opentofu` for syntax highlighting, autocomplete, and formatting.
- **Start with DevPod**:
  ```bash
  devpod up ./dev-opentofu
  ```

---

### 2. Go Dev Environment (`dev-golang`)

A development environment for **Go** development.

- **Features**:
  - Go SDK (Official image)
  - VSCodium extension: `golang.go` for autocomplete, linting, formatting, and debugging.
- **Start with DevPod**:
  ```bash
  devpod up ./dev-golang
  ```

---

## Alternative: Using VSCodium Dev Containers Extension

If you prefer to run containers directly within VSCodium without the DevPod CLI:

1. Open VSCodium.
2. Open either the `dev-opentofu` or `dev-golang` subdirectory.
3. Click the green indicator (bottom-left corner) and select **Reopen in Container**.

---

## Usage Examples

### OpenTofu
Once inside the `dev-opentofu` container, you can run standard tofu commands:
```bash
tofu --version
tofu init
tofu plan
```

### Go
Once inside the `dev-golang` container, you can run standard Go commands:
```bash
go version
go run main.go
```
