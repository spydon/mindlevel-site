#!/usr/bin/env bash
rm -rf output; \
gulp; \
mkdir output; \
cp -r css img privacy.txt index.html js mp4 vendor output && \
cd output && \
aws s3 sync . s3://mindlevel.net && \
echo "Sync complete"

