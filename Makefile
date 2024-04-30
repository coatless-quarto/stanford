.PHONY: asset-html asset-beamer asset-revealjs assets help
.DEFAULT_GOAL := help

asset-html: ## Render HTML Webpage
	quarto render docs/demo/template-html.qmd --output-dir assets

asset-beamer: ## Render Beamer Slides
	quarto render docs/demo/template-beamer.qmd --output-dir assets

asset-revealjs: ## Render RevealJS Slides
	quarto render docs/demo/template-revealjs.qmd --output-dir assets

assets:	asset-beamer asset-html asset-revealjs  ## Render all assets

help:  ## Show help messages for make targets
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(firstword $(MAKEFILE_LIST)) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-18s\033[0m %s\n", $$1, $$2}'

