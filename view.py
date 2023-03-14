from flask import Flask, render_template
import os 

app = Flask(__name__)

@app.route('/' , methods=['POST','GET']) #Mặc định method ở đây là chỉ có HTTP GET được chấp thuận, nếu muốn thêm POST method, ta phải khai báo.
def home():
    return render_template('index.html')

if __name__ == '__main__':
    # Not including this will cause your application to crash on Heroku.
    port = int(os.environ.get('PORT', 5000))
    app.run(debug=True, host='0.0.0.0', port=port)