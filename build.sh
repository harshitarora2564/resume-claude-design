set -e
mkdir -p public
cp index.html public/
if [ -f resume.pdf ]; then
  cp resume.pdf public/
elif [ -f resume.pdf.b64 ]; then
  base64 -d resume.pdf.b64 > public/resume.pdf
fi
cp public/resume.pdf public/Harshit_Arora_Resume.pdf
if [ -f profile.jpg ]; then
  cp profile.jpg public/
else
  curl -fsSL --max-time 30 -o public/profile.jpg https://harshitlive.lovable.app/profile.jpg || rm -f public/profile.jpg
fi
ls -la public
