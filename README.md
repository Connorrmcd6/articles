# Articles & Research Repository

A centralized repository for storing articles, research notes, and written content. Each article is organized in its own folder with markdown content and metadata.

## Repository Structure

```
articles/
├── create-article.sh          # Script to create new article folders
├── Makefile                   # Make targets for creating articles
├── README.md                  # This file
└── sample-article/            # Example article structure
    ├── article.md             # Article content in markdown
    └── metadata.json          # Article metadata
```

## Creating a New Article

Use the Makefile to create a new article folder:

```bash
make my-article-name
```

This will create:

- A new folder with the specified name
- `article.md` - A markdown file with a basic template
- `metadata.json` - Metadata file with fields for title, author, date, tags, and status
- `assets/` - Images and other assets
- `charts/` - Chart data files or exports

### Example

```bash
./create-article.sh the-future-of-ai
```

Creates:

```
the-future-of-ai/
├── article.md
└── metadata.json
├── assets/
└── charts/
```

## Writing Articles

1. **Create the article folder** using the script
2. **Edit metadata.json** - Fill in title, author, tags, and other details
3. **Write your content** in `article.md` using standard markdown
4. **Update metadata** in metadata.json as you progress

## Metadata Format

The `metadata.json` file supports the following fields:

```json
{
  "title": "Article Title",
  "summary": "Short summary of the article",
  "date": "2026-02-06",
  "tags": ["tag1", "tag2"],
  "author": "Your Name"
}
```

## Tips

- Use descriptive folder names (lowercase, hyphens for spaces)
- Keep article.md focused on content; use metadata.json for organizational info
- Add tags to make articles easier to find later
- Consider adding consistent tags for easier filtering

## License

Personal repository - all rights reserved unless otherwise specified in individual articles.
