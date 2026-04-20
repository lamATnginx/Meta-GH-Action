.PHONY: run-gh-action-locally

run-gh-action-locally:
	@if [ -z "$(GITHUB_TOKEN)" ]; then \
		echo "Usage: make run-gh-action-locally GITHUB_TOKEN=ghp_xxx"; \
		exit 1; \
	fi
	act issue_comment -e .github/workflows/act/event.json -s GITHUB_TOKEN=$(GITHUB_TOKEN)