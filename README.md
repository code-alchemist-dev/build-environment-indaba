# Built Environment Indaba 2026

A modern, interactive website for the Built Environment Indaba 2026 conference, showcasing event lineup, sponsorship packages, speakers, and programme details.

## Overview

The Built Environment Indaba is a strategic conference bringing together infrastructure stakeholders, decision-makers, and industry partners. This website serves as the central hub for event information, registration, and sponsor engagement.

## Features

- **SPA Architecture**: Single-page application with hash-based routing for seamless navigation
- **Responsive Design**: Mobile-first approach with Inter font and green/gold color scheme
- **Event Lineup**: Comprehensive overview of sessions, speakers, and activities
- **Sponsorship Packages**: Diamond, Gold, Silver, and custom strategic partnership tiers
- **Programme Schedule**: Day-by-day agenda with keynotes and breakaway sessions
- **Speaker Directory**: Filterable speaker profiles with bios and roles
- **Media Gallery**: Event highlights and promotional content
- **Contact Management**: Supabase integration for form submissions

## Project Structure

```
build-environment-indaba/
├── index.html              # Main SPA shell with routing and shared styles
├── about.html              # Event information and strategic partners
├── contact.html            # Contact form and inquiry submission
├── lineup.html             # Session and activity details
├── media.html              # Photo gallery and promotional content
├── more.html               # Additional event information
├── programme.html          # Event schedule and agenda
├── speakers.html           # Speaker profiles and biographies
├── packages/
│   ├── diamond-pack.html   # Diamond sponsorship tier
│   ├── gold-pack.html      # Gold sponsorship tier
│   ├── silver.html         # Silver sponsorship tier
│   └── customised-pack.html# Custom strategic partnerships
├── assets/                 # Images, fonts, and static files
├── .vscode/                # VS Code workspace settings
└── GEMINI.md              # Development notes
```

## Technology Stack

- **HTML5**: Semantic markup
- **CSS3**: Custom properties (variables), flexbox, grid
- **JavaScript**: Vanilla JS with no external dependencies
- **Font**: Google Fonts (Inter)
- **Backend**: Supabase for form data persistence
- **Hosting**: Ready for deployment to any static host

## Getting Started

### Development

1. **Clone the repository:**
   ```bash
   git clone https://github.com/code-alchemist-dev/build-environment-indaba.git
   cd build-environment-indaba
   ```

2. **Open in browser:**
   - Open `index.html` in your web browser
   - No build process or dependencies required

3. **Local development server (optional):**
   ```bash
   python -m http.server 8000
   # or
   npx http-server
   ```
   Then visit `http://localhost:8000`

## Key Design Decisions

### SPA Architecture
- Hash-based routing (`#/home`, `#/speakers`, etc.)
- Lazy-loading of partial HTML files
- No full page reloads for navigation
- Automatic cleanup of styles and scripts per route

### CSS Scoping
- All partial files use scoped class names (`.lineup-*`, `.pkg-silver-*`, etc.)
- Avoids conflicts with index.html shared styles
- CSS variables inherited from root for theming

### Performance
- Minimal JavaScript (routing and modal management)
- CSS-driven interactivity where possible
- Lazy loading of images and resources
- Clean separation of concerns

## Configuration

### CSS Variables
Core theme variables defined in `index.html`:
```css
--green-primary: #2E6B4E
--green-dark: #1F4F3A
--gold: #F2B705
--red: #E34A35
--bg: #F7F9F8
--white: #ffffff
--text: #1F2933
--radius: 14px
--shadow: 0 15px 64px rgba(0, 0, 0, 0.08)
```

### Supabase Integration
- URL: `https://kppbvsjzbtglfescuqqs.supabase.co`
- Used for contact form submissions
- Environment variables can be set via `window.SUPABASE_URL` and `window.SUPABASE_ANON_KEY`

## Navigation Routes

- `#/home` - Homepage
- `#/about` - About & Strategic Partners
- `#/lineup` - Event Lineup
- `#/programme` - Programme & Schedule
- `#/speakers` - Speaker Directory
- `#/media` - Media Gallery
- `#/more` - Additional Information
- `#/contact` - Contact Form
- `#/diamond-pack` - Diamond Sponsorship
- `#/gold-pack` - Gold Sponsorship
- `#/silver-pack` - Silver Sponsorship
- `#/customised-pack` - Custom Partnerships

## Deployment

### Static Hosting
Deploy to Netlify, Vercel, GitHub Pages, or any static host:

1. Push to GitHub
2. Connect repository to hosting service
3. Set build command to `none` (static site)
4. Deploy

### Environment Setup
For custom Supabase instance:
```html
<script>
  window.SUPABASE_URL = 'https://your-supabase-url.supabase.co';
  window.SUPABASE_ANON_KEY = 'your-anon-key';
</script>
```

## Contributing

1. Create a feature branch: `git checkout -b feature/your-feature`
2. Make changes and commit: `git commit -m "Add your feature"`
3. Push to branch: `git push origin feature/your-feature`
4. Open a Pull Request

## Support & Issues

For questions or issues related to the website, please open an issue on GitHub or contact the development team.

## License

This project is proprietary and confidential. All rights reserved to Built Environment Indaba.

---

**Last Updated:** January 2, 2026
**Maintained By:** Code Alchemist Dev
