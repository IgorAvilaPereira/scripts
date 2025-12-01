USER_NAME=$(zenity --entry --title="PlantUML to SVG" --text="Please enter your path+plantfile:")
if [ -n "$USER_NAME" ]; then
    plantuml -tsvg $USER_NAME
else
    echo "No name entered."
fi
