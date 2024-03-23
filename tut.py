from flask import Flask,render_template
app = Flask(__name__)

@app.route("/")
def hello():
    return render_template("index.html")

@app.route("/about")
def harry():
    return "<h1>about page</h1>"


app.run(debug=True)