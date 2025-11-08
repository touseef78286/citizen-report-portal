# Complete Setup Instructions

## Quick Start

### 1. Frontend Setup

```bash
# Install dependencies (if not already done)
npm install

# Create .env file (already created)
# VITE_API_URL=http://localhost:5000/api

# Start development server
npm run dev
```

Frontend will run on http://localhost:3000

### 2. Backend Setup

#### Install PostgreSQL

1. Download and install PostgreSQL from https://www.postgresql.org/download/
2. Remember your PostgreSQL password during installation

#### Create Database

Open PostgreSQL command line (psql) or pgAdmin:

```sql
CREATE DATABASE citizen_report_portal;
```

#### Configure Backend

1. Navigate to server directory:
   ```bash
   cd server
   ```

2. Update `server/.env` with your PostgreSQL credentials:
   ```env
   DB_USER=postgres
   DB_PASSWORD=your_postgres_password
   ```

3. Install backend dependencies (already done):
   ```bash
   npm install
   ```

4. Run database migrations:
   ```bash
   npm run migrate
   ```

5. Start backend server:
   ```bash
   npm run dev
   ```

Backend will run on http://localhost:5000

### 3. Test the Application

1. **Start Frontend**: `npm run dev` (in root directory)
2. **Start Backend**: `cd server && npm run dev`
3. Open browser: http://localhost:3000
4. Register a new account
5. Login and test features

## Project Structure

```
citizen-report-portal/
├── src/                    # Frontend React app
│   ├── components/        # React components
│   ├── contexts/          # Context API (Auth, Reports)
│   ├── lib/               # API clients, validations
│   └── types/             # TypeScript types
├── server/                # Backend Express app
│   ├── src/
│   │   ├── config/       # Database, CORS config
│   │   ├── controllers/  # Route controllers
│   │   ├── db/           # Database migrations
│   │   ├── middleware/      # Auth, upload middleware
│   │   ├── models/       # Database models
│   │   ├── routes/       # API routes
│   │   └── services/     # Business logic
│   └── uploads/          # Uploaded files
└── package.json
```

## Environment Variables

### Frontend (.env)
```
VITE_API_URL=http://localhost:5000/api
```

### Backend (server/.env)
```
PORT=5000
DB_HOST=localhost
DB_PORT=5432
DB_NAME=citizen_report_portal
DB_USER=postgres
DB_PASSWORD=your_password
JWT_SECRET=your-secret-key
FRONTEND_URL=http://localhost:3000
```

## Common Issues

### Database Connection Failed
- Ensure PostgreSQL is running
- Check credentials in `server/.env`
- Verify database exists

### CORS Errors
- Check `FRONTEND_URL` in `server/.env` matches frontend URL
- Default: http://localhost:3000

### Port Already in Use
- Change `PORT` in `server/.env` to different port
- Update `VITE_API_URL` in frontend `.env` accordingly

## Next Steps

1. ✅ All components updated to use Context API
2. ✅ Backend dependencies installed
3. ⏳ Setup PostgreSQL database
4. ⏳ Run migrations
5. ⏳ Test complete flow

## Testing Checklist

- [ ] User registration
- [ ] User login
- [ ] Submit report
- [ ] View reports
- [ ] Update profile
- [ ] File uploads
- [ ] Role-based access (Citizen, Official, Admin)

