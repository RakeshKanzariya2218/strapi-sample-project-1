# strapi project #

- Strapi Blog Project

- A simple Strapi project to create and manage blog posts, built locally using Strapi v5 on Git Bash (Windows).

# Prerequisites

- Git Bash

- Node.js LTS (v18.x )

- npm / npx

# Setup Steps

1. Clone Strapi Repository
git clone https://github.com/strapi/strapi.git


2. Install Dependencies
- npm install
- npx


3. Explore Folder Structure

- Check the project folders like src/, package.json, node_modules/.

4. Create a New Strapi Project

- npx create-strapi@latest rakesh-strapi-project --quickstart


- This creates a new folder rakesh-strapi-project

5. Run Strapi Locally

- cd rakesh-strapi-project
- npm run develop


- Admin Panel URL: http://localhost:1337/admin

- First-time login: create admin account (email + password).

6. Create Content Type: Blog

- Fields:

- title → Short text

- body → Long text

- publishedOn → Date

7. Create Sample Blog & Publish

- Add a blog entry.

- Enable public permissions for find and findOne.

- Publish the blog.

8. Access Blog via API

All blogs: http://localhost:1337/api/blogs

Single blog: http://localhost:1337/api/blogs/1