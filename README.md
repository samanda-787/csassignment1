# Clone repository
git clone https://github.com/samanda-787/student-api.git
cd student-api

# Install dependencies
composer install

# Configure environment
cp .env.example .env
php artisan key:generate

# Setup database
php artisan migrate --seed

# Start development server
php artisan serve

Clone the repository:
git clone https://github.com/samanda-787/csassignment1.git
