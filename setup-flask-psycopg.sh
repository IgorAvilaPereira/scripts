mkdir flask_project
cd flask_project/
python3 -m venv venv
. venv/bin/activate
pip install Flask
pip install psycopg2-binary
echo "from flask import Flask" > "app.py"
echo "app = Flask(__name__)" >> "app.py"
echo "@app.route(\"/\")" >> "app.py"
echo "def hello_world():" >> "app.py"
echo "  return \"<p>Hello, World!</p>\"" >> "app.py"
export FLASK_APP=app
export FLASK_ENV=development
flask run