.PHONY: help
help:
	@echo "Usage: make <article-name>"
	@echo "Example: make my-new-article"

%:
	@set -e; \
	ARTICLE_NAME="$@"; \
	ARTICLE_DIR="$$ARTICLE_NAME"; \
	if [ -z "$$ARTICLE_NAME" ]; then \
		echo "Usage: make <article-name>"; \
		exit 1; \
	fi; \
	if [ -d "$$ARTICLE_DIR" ]; then \
		echo "Error: Directory '$$ARTICLE_DIR' already exists"; \
		exit 1; \
	fi; \
	mkdir -p "$$ARTICLE_DIR/assets" "$$ARTICLE_DIR/charts"; \
	printf '%s\n' \
	  '# Article Title' \
	  '' \
	  'Write your article content here...' \
	  '' \
	  '## Section 1' \
	  '' \
	  'Content goes here.' \
	  '' \
	  '## Section 2' \
	  '' \
	  'More content.' \
	  '' \
	  '## Conclusion' \
	  '' \
	  'Final thoughts.' \
	  > "$$ARTICLE_DIR/article.md"; \
	printf '%s\n' \
	  '{' \
	  '  "title": "",' \
	  '  "summary": "",' \
	  "  \"date\": \"$$(date +%Y-%m-%d)\"," \
	  '  "tags": [' \
	  '    "sample"' \
	  '  ],' \
	  '  "author": ""' \
	  '}' \
	  > "$$ARTICLE_DIR/metadata.json"; \
	echo "✓ Created article folder: $$ARTICLE_DIR"; \
	echo "  - $$ARTICLE_DIR/article.md"; \
	echo "  - $$ARTICLE_DIR/metadata.json"; \
	echo "  - $$ARTICLE_DIR/assets/"; \
	echo "  - $$ARTICLE_DIR/charts/"; \
	echo ""; \
	echo "Next steps:"; \
	echo "  1. Edit $$ARTICLE_DIR/metadata.json with article details"; \
	echo "  2. Write your article in $$ARTICLE_DIR/article.md"