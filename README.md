# README

This README provides instructions to set up and run the application locally.

## Prerequisites

- **Ruby version**  
  `Ruby 3.4.2`  
  (Ensure you have the correct version using `rbenv` or `rvm`)

- **Rails version**  
  `Rails 8.0.2`

## System Dependencies

- **Sqlite** (or your preferred DB)
- **Node.js** (for JavaScript runtime, e.g., `Node.js 18.x`)

## Configuration

1. Clone the repository:

   ```bash
   git clone https://github.com/muiux/Loadar-cart.git
   cd Loadar-cart
   ```

2. Install Ruby gems:

   ```bash
   bundle install
   ```

3. Install JavaScript dependencies:

   ```bash
   npm install
   ```

4. Set up environment variables:
   - Copy `.env.example` to `.env`
   - Update any necessary keys (e.g., database, secret_key_base, etc.)

## Database Creation

Run the following to set up the database:

```bash
rails db:create
```

## Database Initialization

Run migrations and seed data:

```bash
rails db:migrate
rails db:seed
```

## Running the Application

Start the Rails server:

```bash
bin/dev
```

## Additional Notes

- Lint your code:
  ```bash
  rubocop
  ```
