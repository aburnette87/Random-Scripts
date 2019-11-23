#############################
#  Setup Environment
#############################
define BASHRC
export PATH=$$PATH:$$HOME/bin

test -s ~/.alias && source ~/.alias || true
endef
export BASHRC

define ALIAS
alias dpurge='docker system prune --all --force'
endef
export ALIAS

export BURPVARS
.PHONY: bindir
env: $(HOME)/bin $(HOME)/.bashrc $(HOME)/.alias

$(HOME)/bin:
	ln -s $(PWD) $(HOME)/bin

$(HOME)/.bashrc:
	@echo "$$BASHRC" > $(HOME)/.bashrc

$(HOME)/.alias:
	@echo "$$ALIAS" > $(HOME)/.alias

new-env:
	$(RM) $(HOME)/.bashrc
	$(RM) $(HOME)/.alias
	make env

#############################
#  Burp Installation
#############################
define BURPVARS
# install4j response file for Burp Suite Community Edition 2.1.04
sys.adminRights$Boolean=false
sys.installationDir=/opt/BurpSuiteCommunity
sys.languageId=en
sys.programGroupDisabled$Boolean=false
sys.symlinkDir=/usr/local/bin
endef
export BURPVARS

.PHONY: burp
burp: burp-installer.sh burpvars
	sudo ./burp-installer.sh -q -varfile /tmp/burpvars 2>/dev/null

/tmp/burp-installer.sh:
	echo "Downloading burp"
	curl -o /tmp/burp-installer.sh 'https://portswigger.net/burp/releases/download?product=community&version=2.1.04&type=linux&componentid=100' && \
		chmod +x /tmp/burp-installer.sh

burpvars:
	@echo "$$BURPVARS" > /tmp/burpvars

.PHONY: uninstall-burp
uninstall-burp:
	sudo /opt/BurpSuiteCommunity/uninstall
