#!/bin/bash

# create-article.sh - Create a new article folder with template files

set -e

# Check if article name is provided
if [ -z "$1" ]; then
    echo "Usage: ./create-article.sh <article-name>"
    echo "Example: ./create-article.sh my-new-article"
    exit 1
fi

ARTICLE_NAME="$1"
ARTICLE_DIR="$ARTICLE_NAME"

# Check if directory already exists
if [ -d "$ARTICLE_DIR" ]; then
    echo "Error: Directory '$ARTICLE_DIR' already exists"
    exit 1
fi

# Create article directory
mkdir -p "$ARTICLE_DIR"

# Create article.md with template
cat > "$ARTICLE_DIR/article.md" << 'EOF'
# Article Title

Write your article content here...

## Section 1

Content goes here.

## Section 2

More content.

## Conclusion

Final thoughts.
EOF

# Create metadata.json with template
cat > "$ARTICLE_DIR/metadata.json" << EOF
{
  "title": "",
  "summary": "",
  "date": "$(date +%Y-%m-%d)",
  "tags": [
    "sample"
  ],
  "author": ""
}
EOF

echo "✓ Created article folder: $ARTICLE_DIR"
echo "  - $ARTICLE_DIR/article.md"
echo "  - $ARTICLE_DIR/metadata.json"
echo ""
echo "Next steps:"
echo "  1. Edit $ARTICLE_DIR/metadata.json with article details"
echo "  2. Write your article in $ARTICLE_DIR/article.md"
