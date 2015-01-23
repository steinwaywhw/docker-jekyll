chown -R jekyll:jekyll /data
su jekyll <<EOF
/usr/local/bundle/bin/jekyll serve -H 0.0.0.0
EOF
