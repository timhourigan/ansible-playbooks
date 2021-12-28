# Definitions

ECHO=echo
PIPENV=PIPENV_VENV_IN_PROJECT=1 pipenv
VIRUAL_ENV=.venv

# Targets

.PHONY: lint
lint: $(VIRUAL_ENV) ## Lint files
	@$(ECHO) "FIXME"

.PHONY: env-lock
env-lock: ## Update environment lock file
	@$(PIPENV) lock

.PHONY: env-update
env-update: ## Update environment
	@$(PIPENV) sync --dev

.PHONY: clean-all
clean-all: ## Clean, including virtual environment
	$(PIPENV) --rm

$(VIRUAL_ENV):
	@$(ECHO) "Creating virtual environment"
	@$(PIPENV) sync --dev
