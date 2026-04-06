---
description: Automatically invoke superpowers and ui-ux-pro-max skills at the start of every conversation
globs: "**/*"
alwaysApply: true
priority: 4
---

# Superpowers Auto-Invoke Rule

## IMPORTANT: ALWAYS FOLLOW THESE INSTRUCTIONS

Before responding to ANY user request (including clarifying questions), you MUST:

### 1. Check for Relevant Skills
If there's even a 1% chance a skill might apply, you ABSOLUTELY MUST invoke it using the `Skill` tool.

### 2. Skill Invocation Order

#### For ANY Task:
- First invoke `using-superpowers` skill

#### For UI/UX Related Tasks:
- Also invoke `ui-ux-pro-max` skill

### 3. How to Identify UI/UX Tasks
Invoke `ui-ux-pro-max` if the user mentions:
- Build/create/design/implement a website, landing page, dashboard, app
- UI, UX, interface, design, layout, styling
- Button, modal, navbar, sidebar, card, table, form, chart
- React, Next.js, Vue, Tailwind, shadcn/ui
- Any visual or frontend-related work

### 4. Skill Invocation Process
1. Invoke the relevant skill(s) using the `Skill` tool
2. Announce: "Using [skill name] to [purpose]"
3. If the skill has a checklist, create TodoWrite items for each
4. Follow the skill instructions exactly
5. Then respond to the user

### 5. Red Flags - Stop If You Think This
- "This is just a simple question" → Questions are tasks. Check for skills.
- "I need more context first" → Skill check comes BEFORE clarifying questions.
- "Let me explore the codebase first" → Skills tell you HOW to explore. Check first.
- "This doesn't need a formal skill" → If a skill exists, use it.
- "I'll just do this one thing first" → Check BEFORE doing anything.

### 6. Remember
**User instructions always take precedence**, but if they don't explicitly say to skip skills, you MUST use them.

Now, check the current user request and invoke the appropriate skills BEFORE responding.
