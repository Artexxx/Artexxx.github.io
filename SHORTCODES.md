# Sam's Hugo ShortCodes

See also

- [layouts/shortcodes](layouts/shortcodes)
- [head.html](layouts/partials/inject/head.html) for adding the css and js required some of these shortcodes.

## github.html

Embeds a file from github within a code block.

Can highlight lines etc...

```hugo
{{<github repo="username/repo-name" file="/path/to/file" lang="language" options="highlight-options">}}
```

See [hugh/highlight-shortcode](https://gohugo.io/content-management/syntax-highlighting/#highlight-shortcode) for options.

e.g.

```hugo
{{<github repo="sammcj/smcleod" file="layouts/shortcodes/github.html" lang="language" options="linenos=table,hl_lines=2 5-6,linenostart=2">}}
```

## github-button.html

In head.html:

```hugo
{{ if .HasShortcode "github_button" }}
  <script async defer src="{{ .Site.BaseURL }}js/buttons.js"></script>
{{ end }}
```

Site config.toml:

```toml
[params.HugoShortcodes.Github]
  User = 'your_github_login_or_org_name'
  Repository = 'your_repository_name'
```

Usage:

```hugo
{{< github-button button="follow"   user="sammcj" >}}
{{< github-button button="sponsor"  user="sammcj" >}}
{{< github-button button="watch"    user="sammcj" repo="github-button-hugo-shortcode" count="true" >}}
{{< github-button button="star"     user="sammcj" repo="github-button-hugo-shortcode" count="true" >}}
{{< github-button button="fork"     user="sammcj" repo="github-button-hugo-shortcode" count="true" >}}
{{< github-button button="template" user="sammcj" repo="github-button-hugo-shortcode" >}}
{{< github-button button="issue"    user="sammcj" repo="github-button-hugo-shortcode" count="true" >}}
{{< github-button button="download" user="sammcj" repo="github-button-hugo-shortcode" >}}
```

## toc.html

Table of contents for a page that has toc disabled.

```hugo
{{<toc>}}
```

## youtubepl.html

Embeds a youtube playlist.

```hugo
{{<youtubepl id="PL4cUxeGkcC9gcy9lrvMJ75z9maRw4byYp">}}
```

## asciinema.html

Embeds an asciinema recording.

```hugo
{{<asciinema id="123456">}}
```

## emoji.html

Embeds an emoji.

```hugo
{{<emoji name="smile">}}
```

## colour.html

Embeds a colour swatch.

```hugo
{{<colour name="red" hex="#ff0000">}}
```

## highlight.html

Highlights words.

```hugo
Highlight {{< highlighter color="lime" >}}absolutely **any** words {{</ highlighter >}} you want.
```

## tootstatic.html

Embeds a static Toot from a Mastodon instance.

```hugo
{{< tootstatic "aus.social" "108739791879133672" >}}
```

## tootonline.html

Embeds a live Toot from a Mastodon instance.

```hugo
---
> {{<tootonline "https://aus.social/@s_mcleod/108739791879133672">}}
---
```

## youtubelite.html

Embeds a youtube video.

```hugo
{{<youtubelite videoId="RcXstZ4FzyE">}}
```

## tabs.html

Code with tabs, good for showing different languages.

```hugo
{{< tabs groupId="config" >}}
{{% tab name="json" %}}
\```json
{
  "Hello": "World"
}
\```
{{% /tab %}}
{{% tab name="XML" %}}
\```xml
<Hello>World</Hello>
\```
{{% /tab %}}
{{% tab name="properties" %}}
\```properties
Hello = World
\```
{{% /tab %}}
{{< /tabs >}}
## image-gallery.html

Embeds a gallery of images with thumbnails.

```hugo
{{< image-gallery gallery_dir="dir-with-images" >}}
```
