# WeChat for Linux using Selkies baseimage
# FROM ghcr.io/linuxserver/baseimage-selkies:ubuntunoble
FROM ghcr.io/linuxcontainers/alpine:latest

# Metadata labels
LABEL org.opencontainers.image.title="WeChat Selkies"
LABEL org.opencontainers.image.description="WeChat Linux client in browser via Selkies WebRTC"
LABEL org.opencontainers.image.authors="nickrunning"
LABEL org.opencontainers.image.source="https://github.com/nickrunning/wechat-selkies"
LABEL org.opencontainers.image.documentation="https://github.com/nickrunning/wechat-selkies#readme"
LABEL org.opencontainers.image.vendor="WeChat Selkies Project"
LABEL org.opencontainers.image.licenses="GPL-3.0-only"

# Build arguments for multi-arch support
ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "🏗️ Building WeChat-Selkies on $BUILDPLATFORM, targeting $TARGETPLATFORM"

# # set environment variables
# RUN apt-get update && \
#     apt-get install -y fonts-noto-cjk libxcb-icccm4 libxcb-image0 libxcb-keysyms1 \
#     libxcb-render-util0 libxcb-xkb1 libxkbcommon-x11-0 \
#     shared-mime-info desktop-file-utils libxcb1 libxcb-icccm4 libxcb-image0 \
#     libxcb-keysyms1 libxcb-randr0 libxcb-render0 libxcb-render-util0 libxcb-shape0 \
#     libxcb-shm0 libxcb-sync1 libxcb-util1 libxcb-xfixes0 libxcb-xkb1 libxcb-xinerama0 \
#     libxcb-xkb1 libxcb-glx0 libatk1.0-0 libatk-bridge2.0-0 libc6 libcairo2 libcups2 \
#     libdbus-1-3 libfontconfig1 libgbm1 libgcc1 libgdk-pixbuf2.0-0 libglib2.0-0 \
#     libgtk-3-0 libnspr4 libnss3 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 \
#     libxcomposite1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 \
#     libxss1 libxtst6 libatomic1 libxcomposite1 libxrender1 libxrandr2 libxkbcommon-x11-0 \
#     libfontconfig1 libdbus-1-3 libnss3 libx11-xcb1 python3-tk

# RUN pip install --no-cache-dir python-xlib

# # Install WeChat based on target architecture
# RUN case "$TARGETPLATFORM" in \
#     "linux/amd64") \
#         WECHAT_URL="https://dldir1v6.qq.com/weixin/Universal/Linux/WeChatLinux_x86_64.deb"; \
#         WECHAT_ARCH="x86_64" ;; \
#     "linux/arm64") \
#         WECHAT_URL="https://dldir1v6.qq.com/weixin/Universal/Linux/WeChatLinux_arm64.deb"; \
#         WECHAT_ARCH="arm64" ;; \
#     *) \
#         echo "❌ Unsupported platform: $TARGETPLATFORM" >&2; \
#         echo "Supported platforms: linux/amd64, linux/arm64" >&2; \
#         exit 1 ;; \
#     esac && \
#     echo "📦 Downloading WeChat for $WECHAT_ARCH architecture..." && \
#     curl -fsSL -o wechat.deb "$WECHAT_URL" && \
#     echo "🔧 Installing WeChat..." && \
#     (dpkg -i wechat.deb || (apt-get update && apt-get install -f -y && dpkg -i wechat.deb)) && \
#     rm -f wechat.deb && \
#     echo "✅ WeChat installation completed for $WECHAT_ARCH"

# Install QQ based on target architecture
RUN case "$TARGETPLATFORM" in \
    "linux/amd64") \
        QQ_URL="https://dldir1v6.qq.com/qqfile/qq/QQNT/Linux/QQ_3.2.19_250904_amd64_01.deb"; \
        QQ_ARCH="x86_64" ;; \
    "linux/arm64") \
        QQ_URL="https://dldir1v6.qq.com/qqfile/qq/QQNT/Linux/QQ_3.2.19_250904_arm64_01.deb"; \
        QQ_ARCH="arm64" ;; \
    *) \
        echo "❌ Unsupported platform: $TARGETPLATFORM" >&2; \
        echo "Supported platforms: linux/amd64, linux/arm64" >&2; \
        exit 1 ;; \
    esac && \
    echo "📦 Downloading QQ for $QQ_ARCH architecture..." && \
    curl -fsSL -o qq.deb "$QQ_URL" && \
    echo "🔧 Installing QQ..." && \
    (dpkg -i qq.deb || (apt-get update && apt-get install -f -y && dpkg -i qq.deb)) && \
    rm -f qq.deb && \
    echo "✅ QQ installation completed for $QQ_ARCH"

# Clean up
RUN apt-get purge -y --autoremove
RUN apt-get autoclean && \
    rm -rf \
        /config/.cache \
        /config/.npm \
        /var/lib/apt/lists/* \
        /var/tmp/* \
        /tmp/*

# configure openbox dock mode for stalonetray
RUN sed -i '/<dock>/,/<\/dock>/s/<noStrut>no<\/noStrut>/<noStrut>yes<\/noStrut>/' /etc/xdg/openbox/rc.xml

# set app name
ENV TITLE="WeChat-Selkies"
ENV TZ="Asia/Shanghai"
ENV LC_ALL="zh_CN.UTF-8"
ENV AUTO_START_WECHAT="true"
ENV AUTO_START_QQ="false"

# update favicon
RUN cp /usr/share/icons/hicolor/128x128/apps/wechat.png /usr/share/selkies/www/icon.png

# # add local files
# COPY /root /
