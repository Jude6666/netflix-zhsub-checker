# Netflix Chinese Subtitle Checker

A browser-based tool that bulk-checks whether Netflix titles have Chinese subtitles, using the [uNoGS API](https://rapidapi.com/unogs/api/unogsng) via RapidAPI.

![screenshot](https://img.shields.io/badge/platform-browser-blue) ![license](https://img.shields.io/badge/license-MIT-green)

## Features

- Paste a list of titles (one per line) and check them all at once
- Detects all Chinese subtitle variants: Simplified, Traditional, Mandarin, Cantonese
- Shows which countries have Chinese subtitles available
- Displays all subtitle languages with color-coded badges
- Supports entering Netflix IDs directly to skip the search step (saves API quota)
- Match score threshold to skip low-confidence results
- Export results to CSV
- API key and settings are saved in `localStorage` for convenience

## Requirements

- A free [RapidAPI](https://rapidapi.com) account
- Subscribe to the [uNoGS API](https://rapidapi.com/unogs/api/unogsng) (free tier: 100 requests/day)
- [Node.js](https://nodejs.org) (only needed to run the local server)

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/Jude6666/netflix-zhsub-checker.git
cd netflix-zhsub-checker
```

### 2. Start the local server

**Windows:**
```
start.bat
```

**Mac / Linux:**
```bash
node server.js
```

### 3. Open in browser

Go to [http://localhost:3000](http://localhost:3000)

### 4. Enter your RapidAPI key

Paste your RapidAPI key into the **RapidAPI Key** field. It will be saved in your browser's localStorage for future visits.

## Usage Tips

- **English titles** give better match accuracy than romanized or translated titles
- You can include a Netflix ID alongside the title (e.g. `Spirited Away 60023642`) to skip the `/search` call and save API quota
- Or paste a bare Netflix ID (e.g. `60023642`) to look up a specific title directly
- The **Min Match Score** slider controls how confident the tool needs to be before fetching subtitle data — lower = more results but potentially wrong matches

## API Usage

Each title uses at most **2 API calls**:
1. `/search` — find the Netflix title
2. `/titlecountries` — fetch subtitle and country data

Titles below the minimum match score use only 1 call (search only, skipped).

## License

MIT
