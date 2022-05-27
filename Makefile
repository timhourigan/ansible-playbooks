# Definitions

ECHO=echo
GREP=grep
TEST_ANSIBLE=molecule test
LINT_ANSIBLE=ansible-lint
LINT_YAML=yamllint
PIPENV=PIPENV_VENV_IN_PROJECT=1 pipenv
VIRUAL_ENV=.venv
ROLES_PATH=roles

# Targets

default: help

.PHONY: test
test: $(VIRUAL_ENV) ## Test Ansible roles
	@$(PIPENV) run $(TEST_ANSIBLE)

.PHONY: lint
lint: $(VIRUAL_ENV) ## Lint source
	@$(PIPENV) run $(LINT_ANSIBLE) $(ROLES_PATH)

.PHONY: lint-yaml
lint-yaml: $(VIRUAL_ENV) ## Lint YAML source
	@$(PIPENV) run $(LINT_YAML) .

.PHONY: env-lock
env-lock: ## Update environment lock file
	@$(PIPENV) lock

.PHONY: env-update
env-update: ## Update environment
	@$(PIPENV) sync --dev

.PHONY: clean
clean: ## Clean generated files, including virtual environment
	@$(PIPENV) --rm

.PHONY: help
help: ## This menu
	@$(GREP) -P "##\s(.*)$$" $(MAKEFILE_LIST) | sed 's/:.*##/:/' | sort

$(VIRUAL_ENV):
	@$(ECHO) "Creating virtual environment"
	@$(PIPENV) sync --dev

# FIXME - Add if community isn't in $HOME
# ansible-galaxy collection install community.general
