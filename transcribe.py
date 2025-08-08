from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello from Flask!"

@app.route("/transcribe", methods=["POST"])
def transcribe():
    # Your transcription logic here
    return jsonify({"text": "Transcribed text goes here"})

if __name__ == "__main__":
    import os
    port = int(os.environ.get("PORT", 5000))
    app.run(host="0.0.0.0", port=port)
