# Leanzer Full-Stack v7

Leanzer is a factory operations platform foundation with:
- Next.js frontend
- Express + TypeScript backend
- PostgreSQL database
- JWT authentication
- role-based permissions
- Docker support

## Modules included
- Dashboard / control tower
- Projects CRUD
- Production KPIs
- OEE detailed calculator
- Line balance
- Quality: FMEA, CAPA, Fishbone, 8D
- Maintenance summary
- Safety incidents
- Warehouse shortages
- Notifications center
- Audit log
- Reports center
- CSV import / export
- PDF executive export
- Admin user management

## Demo users
- admin@leanzer.local / admin123
- quality@leanzer.local / quality123
- prod@leanzer.local / prod123

## Main API routes
- `POST /api/auth/login`
- `GET /api/auth/me`
- `GET /api/dashboard/summary`
- `GET/POST/PUT/DELETE /api/projects`
- `GET /api/production/kpis`
- `GET /api/production/oee-detailed`
- `GET /api/production/line-balance`
- `GET/POST/PUT/DELETE /api/quality/fmea`
- `GET/POST/PUT/DELETE /api/quality/capa`
- `GET/POST/DELETE /api/quality/fishbone`
- `GET/POST/PUT/DELETE /api/quality/8d`
- `GET /api/quality/summary`
- `GET /api/maintenance/summary`
- `GET /api/safety/summary`
- `POST /api/safety/incidents`
- `GET /api/warehouse/summary`
- `POST /api/warehouse/shortages`
- `GET /api/notifications`
- `POST /api/notifications`
- `PATCH /api/notifications/:id/read`
- `GET /api/audit`
- `GET /api/reports/executive`
- `POST /api/imports/projects-csv`
- `POST /api/imports/projects-csv-upload`
- `GET /api/exports/projects.csv`
- `GET /api/exports/quality.csv`
- `GET /api/exports/executive.pdf`

## Run locally
### Database
Apply `database/schema.sql` then `database/seed.sql` to PostgreSQL.

### Backend
```bash
cd backend
npm install
npm run dev
```

### Frontend
```bash
cd frontend
npm install
npm run dev
```

### Docker
```bash
docker compose up --build
```


## Added in v8
- Task Center with cross-module action ownership
- Safety incident update/delete routes
- Warehouse shortage update/delete routes
- Dashboard now includes unread notifications and open/overdue task counts
- Executive report includes overdue tasks
- Added frontend pages for Tasks and 8D register


## v9 additions
- Attachments register (`/api/attachments`, `/attachments`)
- Approval workflow (`/api/approvals`, `/approvals`)
- Permissions endpoint (`/api/permissions/me`) for role-aware UIs
- Database tables: `file_attachments`, `approval_requests`


## v10 additions
- Analytics Center page
- Control Tower page
- KPI history endpoint
- Safety analytics endpoint
- Warehouse analytics endpoint
- Task kanban endpoint
- Operations report endpoint
- Operations CSV export


## v11 additions
- Real file uploads for attachments via `POST /api/attachments/upload` using multipart form data.
- Static file serving from `/uploads`.
- Attachments UI now supports upload and delete.
- Fixed approvals router ordering query syntax.


## v12 additions
- Entity Hub page to inspect one project/FMEA/CAPA/task/approval/safety/shortage with linked tasks, attachments, approvals, and audit trail.
- Backend endpoint: `GET /api/entity-hub/:entityType/:entityId`.


## Added in v13
- Central Issues Register
- Supplier Quality + SCAR
- Planning Board / Calendar-style operations view


## Added in v16
- Shift Handover module
- Escalations module
- Changeover / SMED register
- Traceability register
- Launch readiness module
- Gemba walks module
- Check sheets module
- Control plans module
- SPC records module
- Manpower planning module
- Each includes backend routes, database tables, and frontend pages.


## Added in v17
- Training Matrix (`/api/training` + `/training`)
- Layered Audits (`/api/layered-audits` + `/layered-audits`)
- Energy Tracking (`/api/energy` + `/energy`)
- Calibration (`/api/calibration` + `/calibration`)
- Kanban (`/api/kanban` + `/kanban`)
- Standard Work (`/api/standard-work` + `/standard-work`)
- Work Orders (`/api/work-orders` + `/work-orders`)
- COPQ (`/api/copq` + `/copq`)
- Risk Assessments (`/api/risk-assessments` + `/risk-assessments`)
- Skill Matrix (`/api/skill-matrix` + `/skill-matrix`)
- PM Schedules (`/api/pm-schedules` + `/pm-schedules`)
- Supplier Audits (`/api/supplier-audits` + `/supplier-audits`)


## v18 expanded manufacturing modules
- Route Sheets: `/api/route-sheets` and `/route-sheets`
- Non Conformance: `/api/non-conformance` and `/non-conformance`
- Andon Calls: `/api/andon` and `/andon`
- Incoming Inspection: `/api/incoming-inspection` and `/incoming-inspection`
- Final Inspection: `/api/final-inspection` and `/final-inspection`
- Rework Tracker: `/api/rework` and `/rework`
- Scrap Tracker: `/api/scrap` and `/scrap`
- Downtime Events: `/api/downtime-events` and `/downtime-events`
- Autonomous Maintenance: `/api/autonomous-maintenance` and `/autonomous-maintenance`
- Lubrication Logs: `/api/lubrication` and `/lubrication`
- Spare Parts: `/api/spare-parts` and `/spare-parts`
- Kaizen Ideas: `/api/kaizen` and `/kaizen`
- Action Plans: `/api/action-plans` and `/action-plans`
- Engineering Changes: `/api/engineering-changes` and `/engineering-changes`
- Material Requests: `/api/material-requests` and `/material-requests`


## v21 major additions
- Workflow Automation
- Report Schedules
- Saved Views / Global Filters
- Access Scopes
- Integration Connectors
- Import Jobs Registry
- Document Versions
- Custom KPI Builder


## v22 hardening additions
- Basic request rate limiting
- Request ID + security headers
- CSV import preview routes
- Workflow bootstrap route to create task + approval + notification in one step
- Backend test scripts (node:test via tsx)


## Added in v23
- stronger auth foundation with refresh tokens and password reset flow
- security center, system health, email center, dashboard presets, escalation rules, workflow templates, import errors modules
- request-scoped access scope attachment middleware
- import preview persists validation errors
- `.env.example`, CI starter workflow, and production readiness notes


## v24 gap-closure tranche

Added modules for row security, field permissions, page permissions, global filters, dashboard drilldown, report builder, Excel mappings, duplicate detection, import validation, document approvals, version compare, backup center, monitoring center, environment profiles, barcode scans, serial genealogy, notification rules, SLA tracking, reminder jobs, email templates, cloud storage, API keys, data retention, release management, and localization center.


## Finalization Pass 1
- Added reusable frontend shell components (PageShell, ModuleTable, RoleGate, FilterChips).
- Added module access middleware and body validation middleware.
- Added finalization summary endpoint and page.
- Added smoke tests for projects, import preview, and rate limiting.

## Finalization Pass 2
- Shared ModuleForm / EmptyState / BulkActionBar components
- Projects and Tasks standardized
- Imports page upgraded with preview validation surface


## Finalization Pass 3
- ScopeBanner and ValidationPanel components added
- finalizationService added
- FINAL_PASS_3 and deployment smoke checklist docs added
- pass-3 verification test scaffold added


## Finalization Pass 4
- Added readiness summary endpoint: `GET /api/readiness/summary`
- Added frontend readiness page: `/readiness`
- Added readiness service and pass-4 documentation

## v30 mega closure pack
- Operator Attendance
- Shift Roster
- Line Clearance
- Quality Containment
- Customer Complaints
- Warranty Returns
- Supplier Claims
- Contractor Safety
- Visitor Management
- Meeting Minutes
- Obeya Boards
- Cost Deployment
- Budget Tracking
- Utility Tracking
- Water Usage
- Compressed Air
- Carbon Tracking
- Waste Management
- Red Tag Log
- 5S Zone Boards
- Line Certification
- Operator Licenses
- Process Deviations
- Change Point Management
- Sampling Plans
- Quality Wall
- Customer Escalations
- Stock Transfers
- MHE Inspections
- Dock Appointments
- Supplier Onboarding
- Purchase Requisitions
- Budget Approvals
- Maintenance Checklists
- Asset Criticality
- Failure Codes


## v31 final closure pack
- Makefile and setup scripts for local development
- smoke, seed, backup, and restore scripts
- production docker compose and nginx sample
- Prometheus starter config
- UAT checklist, release checklist, deployment runbooks, and data dictionary
- Postman starter collection
- CI workflow starter
