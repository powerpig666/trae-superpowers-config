---
name: ui-ux-pro-max
description: UI/UX design intelligence - professional UI/UX across multiple platforms and frameworks
---

# UI/UX Pro Max

## Design System Generator

### Core Principles

- **Tailwind CSS + shadcn/ui** - Default stack for modern, responsive UIs
- **Dark Mode First** - Always include dark mode support
- **Accessibility First** - WCAG AA compliance minimum
- **Mobile First** - Responsive design from 375px up

## Available Styles (67+)

### General Styles
1. **Minimalism & Swiss Style** - Enterprise apps, dashboards
2. **Glassmorphism** - Modern SaaS, financial dashboards
3. **Neumorphism** - Health/wellness apps
4. **Brutalism** - Design portfolios, artistic projects
5. **Dark Mode (OLED)** - Night-mode apps
6. **Bento Box Grid** - Dashboards, product pages
7. **AI-Native UI** - AI products, chatbots

## Color Palettes (161+)

### SaaS Dashboard
```css
Primary: #3B82F6 (Blue)
Secondary: #10B981 (Green)
Accent: #8B5CF6 (Purple)
Background: #0F172A (Dark Slate)
Surface: #1E293B (Slate)
Text: #F8FAFC (White)
```

### Fintech/Banking
```css
Primary: #10B981 (Green)
Secondary: #3B82F6 (Blue)
Accent: #F59E0B (Amber)
Background: #0F172A (Dark)
Surface: #1E293B (Slate)
Text: #F8FAFC (White)
```

### Healthcare
```css
Primary: #06B6D4 (Cyan)
Secondary: #10B981 (Green)
Accent: #F43F5E (Rose)
Background: #F8FAFC (Light)
Surface: #FFFFFF (White)
Text: #1E293B (Dark)
```

## Font Pairings (57+)

### Modern SaaS
- **Headings**: Inter (700)
- **Body**: Inter (400)
- **Mono**: JetBrains Mono

### Luxury/Wellness
- **Headings**: Playfair Display (700)
- **Body**: Lato (400)

### Tech/Startup
- **Headings**: Poppins (600)
- **Body**: Open Sans (400)

## Tech Stack Support

### Web Frameworks
- **HTML + Tailwind CSS** (Default)
- **React + shadcn/ui**
- **Next.js + shadcn/ui**
- **Vue + Nuxt UI**
- **Svelte + Skeleton**
- **Astro + Tailwind**

### Mobile
- **SwiftUI** (iOS)
- **Jetpack Compose** (Android)
- **React Native**
- **Flutter**

## UX Guidelines (99+)

### Core Rules
1. **Touch Targets**: Minimum 44x44px for mobile
2. **Contrast**: 4.5:1 minimum for text
3. **Focus States**: Always visible for keyboard navigation
4. **Hover States**: Smooth transitions (150-300ms)
5. **Loading States**: Skeleton loaders, not spinners
6. **Error States**: Clear, actionable messages
7. **Empty States**: Guide users what to do next
8. **Responsive**: 375px, 768px, 1024px, 1440px breakpoints

### Anti-Patterns to Avoid
- ❌ AI purple/pink gradients for fintech/healthcare
- ❌ Emojis as icons (use SVG: Heroicons/Lucide)
- ❌ Harsh animations (respect prefers-reduced-motion)
- ❌ Tiny text on mobile
- ❌ Missing cursor-pointer on clickable elements

## Pre-Delivery Checklist

- [ ] **Responsive**: Tested at 375px, 768px, 1024px, 1440px
- [ ] **Dark Mode**: Complete dark theme support
- [ ] **Accessibility**: Keyboard navigation, screen reader friendly
- [ ] **Contrast**: 4.5:1 minimum for all text
- [ ] **Hover States**: Smooth transitions on interactive elements
- [ ] **Focus States**: Visible focus rings
- [ ] **Loading States**: Skeleton loaders implemented
- [ ] **Error States**: Clear error handling
- [ ] **Empty States**: Helpful empty state UI
- [ ] **Typography**: Consistent font hierarchy
- [ ] **Spacing**: Consistent 4px/8px grid system
- [ ] **Icons**: SVG icons from Heroicons/Lucide
- [ ] **No Emojis**: Icons only, no emoji decorations
- [ ] **Performance**: Images optimized, animations smooth

## Code Generation Template

### HTML + Tailwind (Default)
```html
<!DOCTYPE html>
<html lang="zh-CN" class="dark">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Modern App</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <script>
    tailwind.config = {
      darkMode: 'class',
      theme: {
        extend: {
          colors: {
            primary: '#3B82F6',
            secondary: '#10B981',
            accent: '#8B5CF6',
            background: '#0F172A',
            surface: '#1E293B',
          }
        }
      }
    }
  </script>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap');
    body { font-family: 'Inter', sans-serif; }
  </style>
</head>
<body class="bg-background text-slate-100 min-h-screen">
  <!-- Your content here -->
</body>
</html>
```

### React + shadcn/ui
```tsx
import { Button } from '@/components/ui/button'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'

export function Dashboard() {
  return (
    <div className="min-h-screen bg-background">
      <Card>
        <CardHeader>
          <CardTitle>Dashboard</CardTitle>
        </CardHeader>
        <CardContent>
          <Button>Get Started</Button>
        </CardContent>
      </Card>
    </div>
  )
}
```

## Common Components

### Button
```html
<button class="inline-flex items-center justify-center rounded-md bg-primary px-4 py-2 text-sm font-medium text-white transition-colors hover:bg-primary/90 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 cursor-pointer">
  Click Me
</button>
```

### Card
```html
<div class="rounded-lg border border-slate-800 bg-surface p-6 shadow-sm">
  <h3 class="text-lg font-semibold">Card Title</h3>
  <p class="text-slate-400 mt-2">Card content goes here.</p>
</div>
```

### Input
```html
<input 
  type="text" 
  placeholder="Enter text..."
  class="flex h-10 w-full rounded-md border border-slate-800 bg-background px-3 py-2 text-sm placeholder:text-slate-500 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
>
```

## Usage Examples

### Build a Landing Page
"Build a landing page for my SaaS product"

### Create a Dashboard
"Create a healthcare analytics dashboard"

### Design a Portfolio
"Design a portfolio website with dark mode"

### Mobile App UI
"Make a mobile app UI for e-commerce"

### Fintech App
"Build a fintech banking app with dark theme"

## Best Practices

1. **Consistency First** - Use a design system, don't reinvent the wheel
2. **Performance Matters** - Optimize images, lazy load, minimize animations
3. **User Testing** - Always validate with real users
4. **Iterate Quickly** - Build, measure, learn, repeat
5. **Document Everything** - Keep a design system doc updated

Remember: Good design is invisible. Users should focus on their task, not on the UI.
