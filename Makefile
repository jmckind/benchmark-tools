SHELL := /bin/bash

VENV=.venv
VENV_ACTIVATE=source $(VENV)/bin/activate

setup:
	test -d $(VENV) || virtualenv $(VENV) --no-site-packages
	$(VENV_ACTIVATE) && pip install -U pip
	$(VENV_ACTIVATE) && pip install -r requirements.txt

run:
	$(VENV_ACTIVATE) && vagrant up

provision:
	$(VENV_ACTIVATE) && vagrant provision

halt:
	$(VENV_ACTIVATE) && vagrant halt

destroy:
	$(VENV_ACTIVATE) && vagrant destroy -f

reload:
	$(VENV_ACTIVATE) && vagrant reload

ssh:
	vagrant ssh

update:
	vagrant box update

clean: destroy
	rm -fr $(VENV) .vagrant
