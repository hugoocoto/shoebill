# Generate images.md automatically

echo "# Shoebill Showcase" > images.md

for image in `find . -name "*.png"`
do
        echo "![$image]($image)" >> images.md
done


