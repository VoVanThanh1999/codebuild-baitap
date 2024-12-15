from flask import Flask

app = Flask(__name__)

@app.route("/health_check")
def health_check():
    return "ok"


@app.route("/readiness_check")
def readiness_check():
    # try:
    #     count = db.session.query(Token).count()
    # except Exception as e:
    #     app.logger.error(e)
    #     return "failed", 500
    # else:
        return "ok"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5153)
