echo $GITHUB_SHA
curl "https://api.github.com/repos/$GITHUB_REPOSITORY/commits/$GITHUB_SHA" | grep -F filename | awk '{print$2}' | cut -d \, -f1 > uploadedfile.log
git show $GITHUB_SHA --name-only
