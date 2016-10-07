# This file provided by Facebook is for non-commercial testing and evaluation
# purposes only. Facebook reserves all rights not expressly granted.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
# FACEBOOK BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
# ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

import json
import os
import time
from flask import Flask, Response, request

app = Flask(__name__, static_url_path='', static_folder='public')
app.add_url_rule('/', 'root', lambda: app.send_static_file('index.html'))

@app.route('/api/v1/event/details', methods=['GET'])
def events_handler():
    with open('events.json', 'r') as f:
        events = json.loads(f.read())
        
    eventId = int(request.args["eventId"])
    return Response(
        json.dumps(events[eventId]),
        mimetype='application/json',
        headers={
            'Cache-Control': 'no-cache',
            'Access-Control-Allow-Origin': '*'
        }
    )

# /api/v1/event/attend?eventId=10
@app.route('/api/v1/event/attend', methods=['POST'])
def attend_event_handler():
    js = request.get_json();
    eventId = js["eventId"]
    print("attend "+eventId)
    return json.dumps({'success':True}), 401, {'ContentType':'application/json'} 
#    return json.dumps({'success':True}), 200, {'ContentType':'application/json'} 

# /api/v1/event/cancel?eventId=10
@app.route('/api/v1/event/cancel', methods=['POST'])
def cancel_event_handler():
    eventId = request.values["eventId"]
    return

@app.route('/api/v1/user/login', methods=['POST'])
def login_handler():
    js = request.get_json();
    return json.dumps({'success':True}), 200, {'ContentType':'application/json'} 

@app.route('/api/v1/user/signup', methods=['POST'])
def signup_handler():
    js = request.get_json();
    return json.dumps({'success':True}), 200, {'ContentType':'application/json'} 


if __name__ == '__main__':
    app.run(host="0.0.0.0", port=int(os.environ.get("PORT", 3000)), debug=True)
