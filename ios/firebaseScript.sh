if [ "$CONFIGURATION" == "Debug-prod" ] || [ "$CONFIGURATION" == "Release-prod" ]; then
  cp Runner/prod/GoogleService-Info.plist Runner/GoogleService-Info.plist
elif [ "$CONFIGURATION" == "Debug-hmg" ] || [ "$CONFIGURATION" == "Release-hmg" ]; then
  cp Runner/hmg/GoogleService-Info.plist Runner/GoogleService-Info.plist
fi

