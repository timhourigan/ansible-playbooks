# Definitions

ECHO=echo
GREP=grep
LINT_ANSIBLE=ansible-lint
LINT_YAML=yamllint
PIPENV=PIPENV_VENV_IN_PROJECT=1 pipenv
VIRUAL_ENV=.venv

# Targets

.PHONY: lint
lint: $(VIRUAL_ENV) ## Lint files
	@$(PIPENV) run $(LINT_ANSIBLE) .

.PHONY: lint-yaml
lint-yaml: $(VIRUAL_ENV) ## Lint YAML files
	@$(PIPENV) run $(LINT_YAML) .

.PHONY: env-lock
env-lock: ## Update environment lock file
	@$(PIPENV) lock

.PHONY: env-update
env-update: ## Update environment
	@$(PIPENV) sync --dev

.PHONY: clean-all
clean-all: ## Clean, including virtual environment
	@$(PIPENV) --rm

.PHONY: help
help: ## This menu
	@$(GREP) -P "##\s(.*)$$" $(MAKEFILE_LIST) | sed 's/:.*##/:/' | sort

$(VIRUAL_ENV):
	@$(ECHO) "Creating virtual environment"
	@$(PIPENV) sync --dev
