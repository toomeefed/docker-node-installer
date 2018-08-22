FROM node:10-alpine

# update yarn
ENV YARN_VERSION=1.9.4 \
# set taobao mirror
TAOBAO_MIRROR=https://npm.taobao.org/mirrors \
# mirror for nvm
NODEJS_ORG_MIRROR=$TAOBAO_MIRROR/node \
NODIST_NODE_MIRROR=$TAOBAO_MIRROR/node \
NVM_NODEJS_ORG_MIRROR=$TAOBAO_MIRROR/node

RUN apk add --no-cache --virtual .build-deps-yarn curl tar \
&& curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz" \
&& mkdir -p /opt \
&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/ \
&& ln -snf /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn \
&& ln -snf /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg \
&& rm yarn-v$YARN_VERSION.tar.gz \
&& apk del .build-deps-yarn

# mirrors for npm
RUN npm set registry https://registry.npm.taobao.org \
&& npm set disturl https://npm.taobao.org/dist \
&& npm set chromedriver-cdnurl $TAOBAO_MIRROR/chromedriver \
&& npm set couchbase-binary-host-mirror $TAOBAO_MIRROR/couchbase/v{version} \
&& npm set debug-binary-host-mirror $TAOBAO_MIRROR/node-inspector \
&& npm set electron-mirror $TAOBAO_MIRROR/electron/ \
&& npm set flow-bin-binary-host-mirror $TAOBAO_MIRROR/flow/v \
&& npm set fse-binary-host-mirror $TAOBAO_MIRROR/fsevents \
&& npm set fuse-bindings-binary-host-mirror $TAOBAO_MIRROR/fuse-bindings/v{version} \
&& npm set git4win-mirror $TAOBAO_MIRROR/git-for-windows \
&& npm set gl-binary-host-mirror $TAOBAO_MIRROR/gl/v{version} \
&& npm set grpc-node-binary-host-mirror https://npm.taobao.org/mirrors \
&& npm set hackrf-binary-host-mirror $TAOBAO_MIRROR/hackrf/v{version} \
&& npm set leveldown-binary-host-mirror $TAOBAO_MIRROR/leveldown/v{version} \
&& npm set leveldown-hyper-binary-host-mirror $TAOBAO_MIRROR/leveldown-hyper/v{version} \
&& npm set mknod-binary-host-mirror $TAOBAO_MIRROR/mknod/v{version} \
&& npm set node-sqlite3-binary-host-mirror https://npm.taobao.org/mirrors \
&& npm set node-tk5-binary-host-mirror $TAOBAO_MIRROR/node-tk5/v{version} \
&& npm set nodegit-binary-host-mirror $TAOBAO_MIRROR/nodegit/v{version}/ \
&& npm set operadriver-cdnurl $TAOBAO_MIRROR/operadriver \
&& npm set phantomjs-cdnurl $TAOBAO_MIRROR/phantomjs \
&& npm set profiler-binary-host-mirror $TAOBAO_MIRROR/node-inspector/ \
&& npm set puppeteer-download-host https://npm.taobao.org/mirrors \
&& npm set python-mirror $TAOBAO_MIRROR/python \
&& npm set rabin-binary-host-mirror $TAOBAO_MIRROR/rabin/v{version} \
&& npm set sass-binary-site $TAOBAO_MIRROR/node-sass \
&& npm set sodium-prebuilt-binary-host-mirror $TAOBAO_MIRROR/sodium-prebuilt/v{version} \
&& npm set sqlite3-binary-site $TAOBAO_MIRROR/sqlite3 \
&& npm set utf-8-validate-binary-host-mirror $TAOBAO_MIRROR/utf-8-validate/v{version} \
&& npm set utp-native-binary-host-mirror $TAOBAO_MIRROR/utp-native/v{version} \
&& npm set zmq-prebuilt-binary-host-mirror $TAOBAO_MIRROR/zmq-prebuilt/v{version}

WORKDIR /app

CMD ["yarn", "--production"]
