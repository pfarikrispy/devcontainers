# devcontainers

https://containers.dev/

# OpenTofu Dev Environment

I want to work with devcontainers more coz I'm fed up setting up build envs I know too little about.

This repository provides a standardized, pre-configured development environment for working with **OpenTofu** using Devcontainers and DevPod (or VSCodium).

## Features

The development container is built on top of Ubuntu and includes:
- **OpenTofu** CLI (pre-installed and available on `PATH`)
- Commonly used utility tools: `curl`, `git`, `jq`, and `wget`
- Pre-installed VSCodium extension: `opentofu.opentofu` for syntax highlighting, autocomplete, and formatting.

---

## Getting Started

- Prerequisite: download and install [devpod.sh](https://devpod.sh/)

### Using DevPod (Recommended)

1. Open **DevPod**.
2. Add this workspace pointing to the local folder or repository:
   ```bash
   devpod up .
   ```
3. DevPod will build the container and automatically open your IDE (VSCodium) connected directly to the environment.

### Using VSCodium / Dev Containers

1. Make sure you have the **Dev Containers** extension installed in VSCodium.
2. Open this folder in VSCodium.
3. Click the green indicator in the bottom-left corner and select **Reopen in Container**.

---

## Usage Examples

Once connected inside the container, you have full access to `tofu`. Here are some basic commands:

### Check OpenTofu Version
```bash
tofu --version
```

### Initialize a Configuration
Initialize a working directory containing OpenTofu configuration files:
```bash
tofu init
```

### Generate and Show an Execution Plan
See what actions OpenTofu will take to match your configuration:
```bash
tofu plan
```

### Apply the Changes
Create or update your infrastructure:
```bash
tofu apply
```
