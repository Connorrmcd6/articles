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
	mkdir -p "$$ARTICLE_DIR/assets"; \
	printf '%s\n' \
	  '# Article Title' \
	  '' \
	  'Brief introduction goes here.' \
	  '' \
	  '## Section 1' \
	  '' \
	  'Write your content here.' \
	  '' \
	  '## Section 2' \
	  '' \
	  'More content.' \
	  '' \
	  '---' \
	  '' \
	  '## Conclusion' \
	  '' \
	  'Final thoughts.' \
	  > "$$ARTICLE_DIR/index.mdx"; \
	printf '%s\n' \
	  '{' \
	  '  "title": "",' \
	  '  "summary": "",' \
	  "  \"date\": \"$$(date +%Y-%m-%d)\"," \
	  '  "tags": [' \
	  '    "sample"' \
	  '  ],' \
	  '  "published": false,' \
	  '  "authors": [' \
	  '    {' \
	  '      "name": "",' \
	  '      "linkedIn": ""' \
	  '    }' \
	  '  ]' \
	  '}' \
	  > "$$ARTICLE_DIR/metadata.json"; \
	echo "✓ Created article folder: $$ARTICLE_DIR"; \
	echo "  - $$ARTICLE_DIR/index.mdx"; \
	echo "  - $$ARTICLE_DIR/metadata.json"; \
	echo "  - $$ARTICLE_DIR/assets/"; \
	echo ""; \
	echo "Next steps:"; \
	echo "  1. Edit $$ARTICLE_DIR/metadata.json with article details"; \
	echo "  2. Write your article in $$ARTICLE_DIR/index.mdx"