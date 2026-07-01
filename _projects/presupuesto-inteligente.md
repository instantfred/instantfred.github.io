---
title: Presupuesto Inteligente
date: 2026-06-23
layout: project
excerpt: "I tried every budgeting app I could find, liked none of them enough, and ended up building my own."
live_url: https://presupuesto-inteligente-nine.vercel.app
tech_stack:
  - Next.js 16
  - React 19
  - TypeScript
  - Supabase (Postgres)
  - Tailwind CSS 4
  - shadcn/ui
  - Recharts
  - Vitest
---

This one started with a pretty boring problem: I wanted to know where my money was actually going.

So I did what everyone does first — I downloaded apps. A lot of them. Stuff from the Play Store, a few from the App Store, some random spreadsheets, and eventually YNAB, which people swear by. And honestly, some of them are good. But none of them really clicked for me. They were either doing way too much, hiding the two things I cared about under a pile of features I'd never touch, or they were so barebones that I might as well go back to a spreadsheet.

I kept catching myself thinking "I just want *this* part and none of the rest." After enough of that, the obvious idea finally showed up: fine, I'll build my own.

## Why this stack

I didn't agonize over the tools. I work with Node and React every day at my job, so reaching for **Next.js 16** and **React 19** felt like home turf — I could move fast instead of fighting the framework. TypeScript everywhere, because future me always ends up thanking past me for the types.

For data and auth I went with **Supabase**: Postgres underneath, row-level security so each person only ever sees their own numbers, and no backend to babysit. The UI is **Tailwind 4** plus **shadcn/ui**, the charts are **Recharts**, and I added **Vitest** once the app got big enough that I was nervous to change anything. It lives on Vercel.

## How it actually came together

I didn't plan the whole thing up front. It grew one itch at a time.

**The core idea first.** The one thing I genuinely missed from YNAB was envelope budgeting — the idea that every bit of money should have a job before you spend it. So that's where I started: budgets split into envelopes (*sobres*), and every expense comes out of one. That turned out to be the right foundation, because almost everything else ended up hanging off it.

**Then making it not feel like a prototype.** The first version worked but looked the part. A few rounds of UX and layout cleanup later, it started to feel like something I'd actually want to open every day. Dark mode landed around here too — I check my budget at night more than I'd like to admit.

**Savings goals.** Tracking what you spend is only half of it. I added goals with progress and a rough projection, so "save for X" turns into something you can actually watch move.

**Letting other people in.** At some point I wanted my family to see the same budget, not a screenshot of it. So in went accounts, password reset, profiles, and family groups with roles — now a household can share one budget instead of comparing notes.

**Making it feel like a real app.** I turned it into a PWA, so you can install it on your phone and it opens like any other app, no browser bar in sight. That was the moment it stopped being "a website I made" and started being the thing I'd been hunting for in the stores.

**The fun polish.** Optimistic updates so the UI reacts instantly and quietly rolls back if something fails, CSV export, an emoji picker for categories (small thing, weirdly satisfying), spending charts, top categories on the dashboard, and end-of-period reports that compare against the previous period — so you can actually tell whether you're getting better at this.

## Give it a try

It's live here: **[presupuesto-inteligente-nine.vercel.app](https://presupuesto-inteligente-nine.vercel.app)** — go poke around and break things.

One heads-up: it's **in Spanish**, since that's my first language and what I default to. Translations (English first) are near the top of my list, so if you land there and everything's in Spanish — that's not a bug, just a to-do I haven't gotten to yet.
