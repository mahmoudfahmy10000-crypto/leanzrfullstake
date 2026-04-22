.PHONY: install backend frontend dev build test smoke seed up down

install:
	cd backend && npm install
	cd frontend && npm install

backend:
	cd backend && npm run dev

frontend:
	cd frontend && npm run dev

dev:
	docker compose up --build

build:
	cd backend && npm run build
	cd frontend && npm run build

test:
	cd backend && npm run test

smoke:
	bash scripts/smoke-suite.sh

seed:
	bash scripts/db-seed.sh

up:
	docker compose up -d --build

down:
	docker compose down
