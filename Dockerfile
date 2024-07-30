# Temel image
FROM node:16

# Çalışma dizinini ayarla
WORKDIR /app

# Paketleri ve bağımlılıkları yükle
COPY package*.json ./

RUN npm install --omit=dev

# Uygulama kaynak kodunu kopyala
COPY . .

# Uygulamayı başlat
CMD ["node", "index.js"]
