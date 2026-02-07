# Articles & Research Repository

A centralized repository for storing articles, research notes, and written content. Each article is organized in its own folder with MDX content and metadata.

## Repository Structure

```
articles/
├── Makefile                   # Make targets for creating articles
├── README.md                  # This file
└── sample-article/            # Example article structure
    ├── index.mdx              # Article content in MDX
    ├── metadata.json          # Article metadata
    └── assets/                # Images and other assets
```

## Creating a New Article

Use the Makefile to create a new article folder:

```bash
make my-article-name
```

This will create:

- A new folder with the specified name
- `index.mdx` - An MDX file with a basic template
- `metadata.json` - Metadata file with title, summary, date, tags, published flag, and authors
- `assets/` - Images and other assets

### Example

```bash
make the-future-of-ai
```

Creates:

```
the-future-of-ai/
├── index.mdx
├── metadata.json
└── assets/
```

## Writing Articles

1. **Create the article folder** using the Makefile
2. **Edit metadata.json** - Fill in title, summary, authors, and tags
3. **Write your content** in `index.mdx` using MDX
4. **Update metadata** as you progress

## Metadata Format

The `metadata.json` file supports the following fields:

```json
{
  "title": "Article Title",
  "summary": "Short summary of the article",
  "date": "2026-02-06",
  "tags": ["tag1", "tag2"],
  "published": false,
  "authors": [
    {
      "name": "Your Name",
      "linkedIn": "https://www.linkedin.com/in/your-profile/"
    }
  ]
}
```

## Tips

- Use descriptive folder names (lowercase, hyphens for spaces)
- Keep index.mdx focused on content; use metadata.json for organizational info
- Add tags to make articles easier to find later
- Consider adding consistent tags for easier filtering

## License

Personal repository - all rights reserved unless otherwise specified in individual articles.
