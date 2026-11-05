import os
from flask import Flask, request, jsonify
import mysql.connector

app = Flask(__name__)

def get_db():
    return mysql.connector.connect(
        host=os.environ.get("DB_HOST", "db"),
        user=os.environ.get("DB_USER", "root"),
        password=os.environ.get("DB_PASSWORD", "redhat@123"),
<<<<<<< HEAD
        database=os.environ.get("DB_NAME", "ecommerce")
=======
        database=os.environ.get("DB_NAME", "app_db")
>>>>>>> bacb81f (bugs fixed)
    )

@app.route('/api/login', methods=['POST'])
def login():
    data = request.json
    db = get_db()
    cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT id, name FROM users WHERE email = %s AND password = %s", 
                   (data['email'], data['password']))
    user = cursor.fetchone()
    cursor.close()
    db.close()
    
    if user:
        return jsonify(user), 200
    return jsonify({"error": "Invalid credentials"}), 401

if __name__ == '__main__':
<<<<<<< HEAD
    app.run(host='0.0.0.0', port=5000)
=======
    app.run(host='0.0.0.0', port=5001)
>>>>>>> bacb81f (bugs fixed)
