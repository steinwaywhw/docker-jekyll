# docker-jekyll
Jekyll in a Docker

# Usage

```
docker run -d -p 80:4000 -v /your/jekyll/blog/on/host:/data steinwaywhw/docker-jekyll
```

Or add 

```
-w /data/myblog
```

if you'd like to change working dir.

Note that you need to supply necessary files in `/your/jekyll/blog/on/host` folder. Especially `_config.yml` and `index.html`. 

