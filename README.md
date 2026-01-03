# Blog

[![Hugo](https://img.shields.io/badge/Hugo-%5E0.146.0-ff4088?style=flat\&logo=hugo)](https://gohugo.io/)
[![Hugo build and deploy](https://github.com/Artexxx/Artexxx.github.io/actions/workflows/deploy.yml/badge.svg?branch=main)](https://github.com/Artexxx/Artexxx.github.io/actions/workflows/deploy.yml)
[![GitHub commit activity (main)](https://img.shields.io/github/commit-activity/m/Artexxx/Artexxx.github.io/main?style=flat)](https://github.com/Artexxx/Artexxx.github.io/commits/main)

## Content

> The blog mainly focuses on development, sharing interesting programs, tips, development tutorials, thoughts, and study notes.

Built with a content-first approach, it also includes an intelligent knowledge-base notebook that supports AI search, AI chat, and smart summaries. Click the 🤖 icon in the bottom-left corner to [try it now](https://artexxx.github.io/).

* [Archives](https://artexxx.github.io/archives/)
* [Categories](https://artexxx.github.io/categories/)
* [Collections](https://artexxx.github.io/collections/)
* [Tags](https://artexxx.github.io/tags/)

## Roadmap

## Project setup

This blog has been deployed to [GitHub Pages](https://github.com/Artexxx/Artexxx.github.io). The workflow is shown below:

![blog-flow](/assets/images/blog-flow.png)

```bash
▸ .github/       # GitHub configuration
▸ .scripts/      # custom scripts
▸ .shell/        # shell commands for hugo project, entry point: hugo_main.sh
▸ archetypes/    # page archetypes (like scaffolds for hexo)
▸ assets/        # css, js, third-party libraries etc.
▸ config/        # configuration files
▸ content/       # markdown files for hugo project
  ▸ private/     # private submodule for encrypted content
▸ data/          # blog data (supported: yaml, json, toml), e.g. friends.yml
▸ public/        # build directory
▸ static/        # static files, e.g. favicon.ico
▸ themes/        # theme submodules
```

### System requirements

* [Node.js](https://nodejs.org/): >= 18.0.0
* [Go](https://go.dev/dl/)
* [Hugo](https://gohugo.io/installation/): >= 0.146.0 (extended version)

### Clone

First, give it a Star, then download the source code:

```bash
git clone --recursive git@github.com:Artexxx/Artexxx.github.io.git && cd Artexxx.github.io
```

After downloading the source code, there are two ways to start the blog.

### NPM

```bash
npm install
# build the blog
npm run build
# run a local debugging server with watch
npm run server
# run a local debugging server in production environment
npm run server:production
# update theme submodules
npm run update:theme
```

<details>
<summary>If you don’t have Hugo installed globally, you can even use Hugo via hugo-bin in a Node.js environment.</summary>

Reference: [hugo-bin](https://github.com/fenneclab/hugo-bin)

```bash
npm install hugo-bin --save-dev
```

`package.json` needs to be configured to use the `extended` version:

```json
{
  ...
  "hugo-bin": {
    "buildTags": "extended"
  }
}
```

Then start it with `npx hugo`.

</details>

### Hugo

```bash
# Development environment
hugo server --disableFastRender --navigateToChanged --bind 0.0.0.0
# Production environment
hugo server --disableFastRender --navigateToChanged --environment production --bind 0.0.0.0
```

<details>
<summary>Additionally, you can run a shell script to choose commonly used Hugo commands.</summary>

```bash
cd .shell && sh hugo_main.sh
```

```text
--------------Hugo Admin--------------
Please enter the serial number to proceed
--------------------------------------
1. post
2. server
3. server:production
4. build
5. submodule-sync
6. push
--------------------------------------
Press Ctrl+C to stop
```

</details>

## License

[![Content License](https://img.shields.io/badge/license-CC_BY--NC--SA_4.0-blue?style=flat)](https://creativecommons.org/licenses/by-nc-sa/4.0/)
[![License](https://img.shields.io/github/license/Artexxx/Artexxx.github.io?style=flat)](https://github.com/Artexxx/Artexxx.github.io/blob/main/LICENSE)

* Content in this repository (text, images, videos, etc.) is licensed under [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
* Code in this repository is licensed under [MIT](https://github.com/Artexxx/Artexxx.github.io/blob/main/LICENSE)
* *The `content/private` directory is not covered by any license*


## Author

[Artexxx](https://github.com/Artexxx "Follow me on GitHub")
