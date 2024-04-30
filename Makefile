.PHONY: asset-html asset-beamer assets help
.DEFAULT_GOAL := help

asset-html: ## Render HTML Webpage
	quarto render asset-generation/template-html.qmd --output-dir ../docs/assets

asset-beamer: ## Render Beamer Slides
	quarto render asset-generation/template-beamer.qmd --output-dir ../docs/assets

#asset-revealjs: ## Render RevealJS Slides
#	quarto render asset-generation/my-revealjs-slides.qmd --output-dir ../docs/assets

assets:	asset-beamer asset-html  ## Render all assets

help:  ## Show help messages for make targets
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(firstword $(MAKEFILE_LIST)) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-18s\033[0m %s\n", $$1, $$2}'

