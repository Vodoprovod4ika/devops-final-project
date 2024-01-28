## Devops-final-project pre-requisites
- Password for the ansible vault - will provide it over teams
- VM which should be set beforehand. Currently using Proxmox VM with following version:
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
- VM should have ansible installed
- Ansible script to prepare mysql server and k3s:
  - first disable firewall
    ```
    sudo ufw disable
    ```
  - run command:
    ```
    ansible-playbook playbook.yaml -e secrets.yml --ask-vault-pass
    ```
  - run command:
    ```
    ansible-playbook phpbb.yaml
    ```
    You should be able to navigate to http://[vm-ip:]30080 and see the phpbb install page. You can use the DB user, password and db name in the install. All should work after that.

## Future improvements
- Execute unit tests in the pipeline
- Make additional git actions for different branches
- Ansible should be improved for the k3s install

### CI-CD executed in github actions
- PHP linter
- Gitleaks scanner
- Trivy vulnerability scanner
- Github action to push the image to docker hub