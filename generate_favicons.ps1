# Check if ImageMagick is installed
if (!(Get-Command magick -ErrorAction SilentlyContinue)) {
    Write-Host "ImageMagick is not installed. Please install it first using: winget install ImageMagick"
    exit 1
}

# Generate favicons from logo
magick "images/logo.png" -resize 16x16 "images/favicon-16x16.png"
magick "images/logo.png" -resize 32x32 "images/favicon-32x32.png"
magick "images/logo.png" -resize 180x180 "images/apple-touch-icon.png"

Write-Host "Favicon files have been generated successfully!" 