## Devops-final-project pre-requisites
- Proxmox VM with following version:
  ```
    DISTRIB_ID=Ubuntu
    DISTRIB_RELEASE=22.04
    DISTRIB_CODENAME=jammy
    DISTRIB_DESCRIPTION="Ubuntu 22.04.3 LTS"
    PRETTY_NAME="Ubuntu 22.04.3 LTS"
    NAME="Ubuntu"
    VERSION_ID="22.04"
    VERSION="22.04.3 LTS (Jammy Jellyfish)"
    VERSION_CODENAME=jammy
    ID=ubuntu
    ID_LIKE=debian
    HOME_URL="https://www.ubuntu.com/"
    SUPPORT_URL="https://help.ubuntu.com/"
    BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
    PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
    UBUNTU_CODENAME=jammy
  ```
- Ansible script to prepare mysql server and k3s:
  - run command:
    ```
    ansible-playbook playbook.yaml -e secrets.yml --ask-vault-pass
    ```

## Future improvements
- Execute unit tests in the pipeline
- Make additional git actions for different branches

### CI-CD executed in github actions
- PHP linter
- Gitleaks scanner
- Trivy vulnerability scanner
- Github action to push the image to docker hub