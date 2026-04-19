FROM ghcr.io/zhayujie/chatgpt-on-wechat:latest

# personal fork - adding healthcheck
# increased retries from 3 to 5 since the app sometimes takes a bit longer to start
HEALTHCHECK --interval=30s --timeout=10s --retries=5 CMD pgrep -f app.py || exit 1

ENTRYPOINT ["/entrypoint.sh"]
