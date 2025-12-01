USER_PATH=$(zenity --entry --title="Dia to PNG" --text="Please enter your path:")
if [ -n "$USER_PATH" ]; then
    cd $USER_PATH
    for D in *.dia; do dia -t png -s 1024x $D; done
else
    echo "No path entered."
fi
