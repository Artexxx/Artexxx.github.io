---
title: Extended Shortcode - gist
shortTitle: Gist
linkTitle: Gist Shortcode
date: 2025-04-02T16:35:00+08:00
author:
  name: Artexxx
  link: https://github.com/Artexxx
description: The gist shortcode embeds a GitHub Gist in your content.
resources:
  - name: featured-image
    src: featured-image.webp
tags:
  - Shortcodes
categories:
  - Shortcodes
collections:
  - Shortcodes
---

The `gist` shortcode embeds a GitHub Gist in your content.

<!--more-->

## Usages

To display a GitHub gist with this URL:

```plain
https://gist.github.com/Lruihao/541a2a8b7c51b68d1d9ddd113b9d9a36
```

Include this in your Markdown:

```markdown
{{</* gist Artexxx 541a2a8b7c51b68d1d9ddd113b9d9a36 */>}}
```

The rendered output looks like this:

{{< gist Artexxx 541a2a8b7c51b68d1d9ddd113b9d9a36 >}}

The HTML looks like this:

```html
<script src="https://gist.github.com/Artexxx/541a2a8b7c51b68d1d9ddd113b9d9a36.js"></script>
```

To display a specific file within the gist:

```markdown
{{</* gist Artexxx 541a2a8b7c51b68d1d9ddd113b9d9a36 bilibili.html */>}}
```

## Parameters

The `gist` shortcode has the following positional parameters:

- **first** positional parameter _[required]_

    GitHub username who owns the gist.

- **second** positional parameter _[required]_

    The ID of the gist.

- **third** positional parameter _[optional]_

    A specific file within the gist to display.
