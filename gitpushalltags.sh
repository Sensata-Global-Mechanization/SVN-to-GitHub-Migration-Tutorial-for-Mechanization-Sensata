for REF in $(git for-each-ref --format='%(refname)' refs/remotes/origin/ | grep /tags/); do
    TAG_NAME=${REF#refs/remotes/origin/tags/}
    echo "Push tag: $TAG_NAME"
    git push -u origin "$REF":refs/tags/$TAG_NAME
done