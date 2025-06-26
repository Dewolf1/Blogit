📝 Blogit – Flask Blogging Platform
Blogit is a dynamic blogging platform built using Python's Flask framework. It allows users to create, edit, and delete blog posts, manage contact messages, and authenticate securely. Inspired by CodeWithHarry's Flask Blog tutorial, this version has been extended with UI enhancements, admin features, and deployment readiness.

🚀 Features
🧑‍💻 User authentication (Login/Logout)

📬 Contact form with SMTP email integration

📝 Post creation, editing, and deletion (Admin only)

🌐 Slug-based URLs for SEO-friendly routing

📄 Pagination for posts

⚙️ Admin dashboard to manage content

🎨 Responsive frontend using Tailwind CSS

🔐 Secure session management with flash messages

💾 Data persistence via MySQL

🛠️ Tech Stack
Backend: Flask (Python)

Frontend: HTML, Jinja2, Tailwind CSS

Database: MySQL

Others: SMTP (for contact form), Werkzeug, Flask-Mail

📁 Folder Structure
pgsql
Copy
Edit
Blogit/
├── static/
│   └── (CSS, JS, images)
├── templates/
│   ├── index.html
│   ├── post.html
│   ├── login.html
│   └── dashboard.html
├── main.py
├── config.json
├── README.md
└── requirements.txt
⚙️ Setup Instructions
Clone the repository

bash
Copy
Edit
git clone https://github.com/yourusername/blogit.git
cd blogit
Create and activate virtual environment (optional)

bash
Copy
Edit
python -m venv venv
source venv/bin/activate  # On Windows use venv\Scripts\activate
Install dependencies

bash
Copy
Edit
pip install -r requirements.txt
Configure your database and mail settings

Edit config.json:

json
Copy
Edit
{
  "local_uri": "mysql://username:password@localhost/blogit",
  "gmail_user": "your-email@gmail.com",
  "gmail_password": "your-app-password",
  "secret_key": "your-secret-key"
}
Run the app

bash
Copy
Edit
python main.py
Visit http://localhost:5000 in your browser.
