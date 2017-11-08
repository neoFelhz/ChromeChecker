echo ''
echo '-------------------------------------'
echo 'Formatting XML Files ......'
echo '-------------------------------------'
echo ''

cd ./tmp
xmllint --format stable-x86.unformat.xml > stable-x86.format.xml
xmllint --format stable-x64.unformat.xml > stable-x64.format.xml
xmllint --format beta-x86.unformat.xml > beta-x86.format.xml
xmllint --format beta-x64.unformat.xml > beta-x64.format.xml
xmllint --format dev-x86.unformat.xml > dev-x86.format.xml
xmllint --format dev-x64.unformat.xml > dev-x64.format.xml
xmllint --format canary-x86.unformat.xml > canary-x86.format.xml
xmllint --format canary-x64.unformat.xml > canary-x64.format.xml

echo ''
echo '-------------------------------------'
echo 'Combining XML Files ......'
echo '-------------------------------------'
echo ''

echo '<?xml version="1.0" encoding="UTF-8"?>' > chrome.tmp.xml

echo '<chromechecker>' >> chrome.tmp.xml

DATE="$(echo $(date --rfc-2822))"
echo '<time checktime="'$DATE'"/>' >> chrome.tmp.xml

echo '<stable86>' >> chrome.tmp.xml
cat stable-x86.format.xml | grep '<manifest version' >> chrome.tmp.xml
cat stable-x86.format.xml | grep '<url codebase="https://dl.google.com/' >> chrome.tmp.xml
cat stable-x86.format.xml | grep '<package fp' >> chrome.tmp.xml
echo '</stable86>' >> chrome.tmp.xml

echo '<stable64>' >> chrome.tmp.xml
cat stable-x64.format.xml | grep '<manifest version' >> chrome.tmp.xml
cat stable-x64.format.xml | grep '<url codebase="https://dl.google.com/' >> chrome.tmp.xml
cat stable-x64.format.xml | grep '<package fp' >> chrome.tmp.xml
echo '</stable64>' >> chrome.tmp.xml

echo '<beta86>' >> chrome.tmp.xml
cat beta-x86.format.xml | grep '<manifest version' >> chrome.tmp.xml
cat beta-x86.format.xml | grep '<url codebase="https://dl.google.com/' >> chrome.tmp.xml
cat beta-x86.format.xml | grep '<package fp' >> chrome.tmp.xml
echo '</beta86>' >> chrome.tmp.xml

echo '<beta64>' >> chrome.tmp.xml
cat beta-x64.format.xml | grep '<manifest version' >> chrome.tmp.xml
cat beta-x64.format.xml | grep '<url codebase="https://dl.google.com/' >> chrome.tmp.xml
cat beta-x64.format.xml | grep '<package fp' >> chrome.tmp.xml
echo '</beta64>' >> chrome.tmp.xml

echo '<dev86>' >> chrome.tmp.xml
cat dev-x86.format.xml | grep '<manifest version' >> chrome.tmp.xml
cat dev-x86.format.xml | grep '<url codebase="https://dl.google.com/' >> chrome.tmp.xml
cat dev-x86.format.xml | grep '<package fp' >> chrome.tmp.xml
echo '</dev86>' >> chrome.tmp.xml

echo '<dev64>' >> chrome.tmp.xml
cat dev-x64.format.xml | grep '<manifest version' >> chrome.tmp.xml
cat dev-x64.format.xml | grep '<url codebase="https://dl.google.com/' >> chrome.tmp.xml
cat dev-x64.format.xml | grep '<package fp' >> chrome.tmp.xml
echo '</dev64>' >> chrome.tmp.xml

echo '<canary86>' >> chrome.tmp.xml
cat canary-x86.format.xml | grep '<manifest version' >> chrome.tmp.xml
cat canary-x86.format.xml | grep '<url codebase="https://dl.google.com/' >> chrome.tmp.xml
cat canary-x86.format.xml | grep '<package fp' >> chrome.tmp.xml
echo '</canary86>' >> chrome.tmp.xml

echo '<canary64>' >> chrome.tmp.xml
cat canary-x64.format.xml | grep '<manifest version' >> chrome.tmp.xml
cat canary-x64.format.xml | grep '<url codebase="https://dl.google.com/' >> chrome.tmp.xml
cat canary-x64.format.xml | grep '<package fp' >> chrome.tmp.xml
echo '</canary64>' >> chrome.tmp.xml

echo '</chromechecker>' >> chrome.tmp.xml

echo ''
echo '-------------------------------------'
echo 'Formatting Output ......'
echo '-------------------------------------'
echo ''

sed -i 's|">|"/>|g' chrome.tmp.xml
xmllint --format chrome.tmp.xml > chrome.xml

echo ''
echo '-------------------------------------'
echo 'Compressing Output ......'
echo '-------------------------------------'
echo ''

xmllint --noblanks chrome.xml > chrome.min.xml

cp -rf ./chrome.xml ../public/chrome.xml
cp -rf ./chrome.min.xml ../public/chrome.min.xml

cd ..
