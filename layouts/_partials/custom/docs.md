## Custom Blocks

You can implement these blocks through `define`.

| Block Name                    | Description                      | Location                                |
| :---------------------------- | :------------------------------- | :-------------------------------------- |
| `custom-head`                 | Head custom block                | `layouts/baseof.html`                   |
| `custom-menu:desktop`         | Desktop menu custom block        | `layouts/_partials/header.html`         |
| `custom-menu:mobile`          | Mobile menu custom block         | `layouts/_partials/header.html`         |
| `custom-profile`              | Profile custom block             | `layouts/_partials/home/profile.html`   |
| `custom-comment`              | Comment system custom block      | `layouts/_partials/single/comment.html` |
| `custom-aside`                | Sidebar custom block             | `layouts/posts/single.html`             |
| `custom-footer`               | Footer custom block              | `layouts/_partials/footer.html`         |
| `custom-widgets`              | Widgets custom block             | `layouts/_partials/widgets.html`        |
| `custom-assets`               | Assets custom block              | `layouts/_partials/assets.html`         |
| `custom-post__toc:before`     | Custom block before post toc     | `layouts/posts/single.html`             |
| `custom-post__toc:after`      | Custom block after post toc      | `layouts/posts/single.html`             |
| `custom-post__content:before` | Custom block before post content | `layouts/posts/single.html`             |
| `custom-post__content:after`  | Custom block after post content  | `layouts/posts/single.html`             |
| `custom-post__footer:before`  | Custom block before post footer  | `layouts/posts/single.html`             |
| `custom-post__footer:after`   | Custom block after post footer   | `layouts/posts/single.html`             |

Custom partials must be stored in the `/layouts/_partials/` directory.

```toml
[params]

[params.customPartials]
head = []
menuDesktop = []
menuMobile = []
profile = []
aside = []
comment = []
footer = []
widgets = []
assets = []
postTocBefore = []
postTocAfter = []
postContentBefore = []
postContentAfter = []
postFooterBefore = []
postFooterAfter = []
```
