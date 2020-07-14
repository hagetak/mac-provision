## Provisioning

```bash
$ sudo xcodebuild -license
$ curl -fsS https://raw.githubusercontent.com/hagetak/mac-provision/master/bin/provisioning.sh | sh
```

### 一旦実施


```bash
WORK_DIR=~/Work/sources/
cd $WORK_DIR
ansible-playbook -i hosts -vv development.yml
```

## yml 更新

```bash
# brew list to yml 
echo "---\nvar_items:" > ~/Work/sources/mac-provision/roles/homebrew/vars/brew.yml && brew list | xargs -I{} echo "  - {}" >> ~/Work/sources/mac-provision/roles/homebrew/vars/brew.yml

# brew cask list to yml
echo "---\nvar_items:" > ~/Work/sources/mac-provision/roles/homebrew-cask/vars/cask.yml && brew cask list | xargs -I{} echo "  - {}" >> ~/Work/sources/mac-provision/roles/homebrew-cask/vars/cask.yml
```
