# Base image
FROM node AS environment

# Set working directory
WORKDIR /app

# Copy dependency files based on the preferred package manager
COPY package*.json ./

# Copy application files
COPY . .

# Install dependencies
RUN npm install

# ---------- Development setup -----------
FROM environment AS development

# Expose the necessary ports
EXPOSE 80

# Run the application
CMD [ "npm", "start" ]

# ------- End of Development Setup -------


# -------------- Test setup --------------
FROM environment AS test

# Run the test
CMD ["npm", "test"]

# ----------- End of Test Setup ----------
