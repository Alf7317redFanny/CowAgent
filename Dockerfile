FROM ghcr.io/zhayujie/chatgpt-on-wechat:latest

# personal fork - adding healthcheck
HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD pgrep -f app.py || exit 1

ENTRYPOINT ["/entrypoint.sh"]
