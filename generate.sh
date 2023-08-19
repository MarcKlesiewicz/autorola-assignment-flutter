rm -rf api/lib/
npm install '@openapitools/openapi-generator-cli' -g --no-shrinkwrap
openapi-generator-cli version-manager set 6.5.0

#TODO: Replace with api endpoint
url=https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/examples/v2.0/json/petstore-simple.json

openapi-generator-cli generate -i $url -g dart-dio -o api --additional-properties="pubName=api,enumUnknownDefaultCase=true,legacyDiscriminatorBehavior=false" --global-property="modelTests=false,apiTests=false,apiDocs=false,modelDocs=false" --skip-validate-spec
fvm flutter pub clean
fvm flutter pub get
(cd api; fvm flutter pub get)
(cd api; fvm flutter pub run build_runner build --delete-conflicting-outputs)
dart fix --apply