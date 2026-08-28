module.exports = {
  apps: [{
    name: "zalo-tg",
    script: "node",
    args: "--disable-warning=DEP0205 dist/index.js",
    cwd: "/data/data/com.termux/files/home/dalu-to-telegram",
    instances: 1,
    autorestart: true,
    watch: false,
    max_memory_restart: "256M",
    env: {
      NODE_ENV: "production",
      DATA_DIR: "./data"
    }
  }]
};
