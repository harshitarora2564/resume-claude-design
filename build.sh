set -e
mkdir -p public
cp index.html public/

# Resume: prefer the committed binary, fall back to the base64 copy.
if [ -f resume.pdf ]; then
  cp resume.pdf public/
elif [ -f resume.pdf.b64 ]; then
  base64 -d resume.pdf.b64 > public/resume.pdf
fi
cp public/resume.pdf public/Harshit_Arora_Resume.pdf

# SEO / GEO static assets — copy whichever exist.
for f in robots.txt sitemap.xml llms.txt og.png; do
  [ -f "$f" ] && cp "$f" public/
done

# Portrait: use the committed image, else pull the hosted copy once at build time.
if [ -f profile.jpg ]; then
  cp profile.jpg public/
else
  curl -fsSL --max-time 30 -o public/profile.jpg https://harshitlive.lovable.app/profile.jpg || rm -f public/profile.jpg
fi

ls -la public
head -c 8 public/Harshit_Arora_Resume.pdf; echo
