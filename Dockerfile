FROM oven/bun as base

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and bun.lockb
COPY package.json ./
COPY bun.lockb ./

# Install dependencies
RUN bun install

# Copy the entire project
# This includes the src folder and any other necessary files
COPY . .

# Set the environment variable
ENV NODE_ENV=production
ENV PORT=3000

# Expose the port the app runs on
EXPOSE 3000

# Set the command to start the app
ENTRYPOINT [ "bun", "start" ]
