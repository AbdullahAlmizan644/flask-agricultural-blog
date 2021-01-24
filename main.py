from flask import Flask,render_template,request
from flask_sqlalchemy import SQLAlchemy
from flask_mail import Mail
from datetime import datetime

app=Flask(__name__)
app.config['MAIL_SERVER']='smtp.gmail.com'
app.config['MAIL_PORT'] = 465
app.config['MAIL_USERNAME'] = 'abdullahalmizan644@gmail.com'
app.config['MAIL_PASSWORD'] = '5255452554'
app.config['MAIL_USE_SSL'] = True

mail = Mail(app)
app.config['SQLALCHEMY_DATABASE_URI'] = "mysql+pymysql://root:@localhost/agricultural_blog"
db = SQLAlchemy(app)



class Contacts(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), nullable=False)
    email = db.Column(db.String(120),  nullable=False)
    phone_number = db.Column(db.String(120),  nullable=False)
    message = db.Column(db.String(120),  nullable=False)
    date = db.Column(db.String(120),  nullable=False)

class Posts(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(80), nullable=False)
    slug = db.Column(db.String(120),  nullable=False)
    tagline = db.Column(db.String(120),  nullable=False)
    content = db.Column(db.String(120),  nullable=False)
    image = db.Column(db.String(120), nullable=False)
    date = db.Column(db.String(120),  nullable=False)

@app.route("/dashboard", methods=['POST','GET'])
def dashboard():
    if request.method=="POST":
        name=request.form.get("name")
        password=request.form.get("password")
        if name=="mizan" and password=="cse01205999":
            posts = Posts.query.filter_by().all()
            return render_template("dashboard.html", karim=posts)

    return render_template("login.html" )

@app.route("/")
def index():
    posts = Posts.query.filter_by().all()
    print(posts)
    return render_template("index.html",karim=posts)

@app.route("/about")
def about():
    post = Posts.query.filter_by().all()
    return render_template("about.html")

@app.route("/post/<string:post_slug>", methods=['GET'])
def post_route(post_slug):
    post = Posts.query.filter_by(slug=post_slug).first()
    return render_template('post.html',karim=post)

@app.route("/contact", methods=["GET","POST"])
def contact():
    if request.method=="POST":
        name = request.form.get("name")
        email = request.form.get("email")
        phone_number = request.form.get("phone_number")
        message = request.form.get("message")

        entry=Contacts(name=name, email=email, phone_number=phone_number,message=message,date=datetime.now())
        db.session.add(entry)
        db.session.commit()
        mail.send_message('New message from ' + name,
                          sender=email,
                          recipients=["abdullahalmizan644@gmail.com"],
                          body=message + "\n" + phone_number
                          )



    return render_template("contact.html")


app.run(debug=True)
