# Wybierz obraz bazowy
FROM node:16

# Ustaw katalog roboczy
WORKDIR /app

# Skopiuj package.json i package-lock.json, aby zainstalować zależności
COPY package*.json ./

# Zainstaluj zależności
RUN npm install

# Skopiuj resztę plików aplikacji
COPY . .

# Expose port 3000 dla json-server
EXPOSE 3000

# Uruchom json-server na porcie 3000
CMD ["npx", "json-server", "--watch", "/app/data.json", "--host", "0.0.0.0"]
