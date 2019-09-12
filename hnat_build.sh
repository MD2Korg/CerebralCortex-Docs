jupyter-book build --overwrite --local-build cc_book
docker run --rm --security-opt label:disable -v /Users/hnat/md2k/software/CerebralCortex-Docs/cc_book:/srv/jekyll -p 4000:4000 -it -u 1000:1000 emdupre/jupyter-book bundle exec make build
scp -r cc_book/_site/* md2k-web.memphis.edu:/usr/share/nginx/md2k/documentation/
