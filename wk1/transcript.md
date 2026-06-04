# Vibe Coding — Day 1 · Transcript

**Batch 2 · 2026-06-04 · ~61 min · Charles Lee**

> Auto-generated with Whisper (large-v3), then lightly cleaned: speech-recognition
> errors fixed for known terms (e.g. "Claude Code," "Plan Mode," `cd ..`), silent-gap
> hallucinations removed, and filler tightened. Timestamps are approximate. This is a
> readable transcript, not a verbatim one. The recording trails off mid-dashboard-build
> around 58:00; the planned closing slides were not captured.

---

## 00:00 — Open & who I am

Hi, I'm Charles. Before this I spent about a decade at CoderSchool teaching people to program the slow, traditional, from-scratch way — moving code from one place to another, teaching people to program for the first time. It was difficult, but also really fun, because I believe coding is a kind of superpower.

I always make the analogy: if you can speak Chinese, suddenly there are a billion more people you can talk to. Learning to program is like that, except instead of a billion more people, there are hundreds of billions of computers you can suddenly make do things for you. It really opens up your possibilities.

The exciting thing that's happened in the past year is that all of this got *much* easier. With AI — we'll be learning Claude Code today — you can skip so much of the hard stuff around how difficult programming used to be. Things that took me three months to teach people, you can now learn very quickly. So I'm super excited to be here at Anduin to help you do this.

I'm part of the AI enablement team at Anduin — our job is to help make Anduin more AI-enabled.

One note, and it's already happening: sometimes I talk too fast, or too soft, or I start mumbling to myself. If that happens, just tell me to slow down or repeat myself. I won't be offended.

## 11:37 — Setup: admin, install, intros (running in parallel)

Before we introduce ourselves, there's an installation step I'll walk you through so it can run in the background while we talk — saves time. This should take about five minutes.

**Get admin access first.** Open Self-Service, request admin. We need that permission to install Claude Code. Everyone please do this now. Once you get the little notification, we'll paste the install command.

**(12:07)** Hit Cmd+Space, type "terminal," and you'll get a window — it sometimes opens behind other windows. Paste the install command in there. **(13:34)** This installs Claude Code in the background — it'll take five or ten minutes.

**While that installs (intros):** tell us your name, what you do, and as an icebreaker — the last thing you asked an AI. Mine was about making soy milk; I bought a soy milk machine at Emart yesterday and had no idea how to use it.

*[Round the room — the room is largely HR, talent acquisition, compensation & benefits, validation, and risk-management folks. Last-AI-questions included: drafting candidate emails, planning a trip to Thailand, working with Google Sheets, drafting vendor replies, comparing prices for a shopping trip, and debugging why an API didn't work.]*

It sounds like everyone here is already pretty AI-proficient — good questions — so we don't need to start at the very basics.

A bit of context: this is roughly the third time we've run this course. The first time, about a year ago, was genuinely tough — the tools were newer and harder to teach, and there were a lot more problems. We'll still hit some problems today, but it's *much* easier than it used to be. That's why I'm excited to teach this version.

## 19:48 — Sanity check & the login wall

If the install finished, in that terminal window type `claude --version`. You should see something like **2.1.162** — that's the newest version. Does everyone see that?

If you *don't* see it — if it says something like "command not found" — the install may need to be added to your PATH. *[Hands-on troubleshooting around the room.]*

The first time you run `claude`, it'll ask you some setup questions (it asks about *everything*) and then ask you to **log in.**

**(~32:10) The snag:** several people couldn't log in. The issue: you need to have **accepted the team / org invite** — there's an invite email from the org you have to accept before Claude Code will let you log in. "You need to accept the invite from the business, then you can log in." *[Worked through this person-by-person.]*

## 23:41 — What the terminal actually is

So what is this terminal thing? The terminal is just like Finder. Finder is the file browser you click around in; the terminal is the same thing — same folders, same files — except you *type* instead of click. As you become coders, you'll spend more time in the typed version than the clicking version.

A few commands you'll memorize over time:
- `ls` — show me all the files here
- `cd` — change directory (go somewhere). `cd ~/Documents` goes to your Documents folder; `~` is your home folder.
- **(25:36)** `mkdir` — make directory. Directory and folder are the same thing.

Let's make a folder for the class. In Documents, `mkdir` a new folder — call it `vibe-coding-course` — then `cd` into it. You can already see in Finder that the new folder appeared; it's empty. Then `mkdir week1`, `cd` into that. That's how I organize: a folder per project keeps things tidy. I'll paste these in Slack so you have them.

## 33:41 — Why coding used to be hard

Like I said, coding used to be very hard, and the reason is that computers aren't as smart as people. A computer is kind of like a super-literal little being — it does *exactly* what you say. Tell it to multiply 3,000 × 4,500 and it's instant. Tell it "build me a cool thing" and it has no idea what you mean. Before AI, computers had no judgment — they just followed instructions exactly.

The classic joke: a wife tells her husband, "Go to the store, buy a dozen eggs, and if they have apples, get six." He comes home with six dozen eggs. "Why six?" "They had apples." Obviously she wanted six *apples* — but he did literally what she said. Computers are the same way.

Real example — NASA, 1999. A programmer wrote the thrust value in pound-force seconds where the other team expected different units. The number was off, and as a result roughly $300 million and years of work blew up, because the computer did exactly what it was told even though that meant flying the spacecraft into Mars. Computers have no ability to judge.

## 35:43 — What changed

On the left is the source code for Tetris — the very first part of it. This is what you'd learn in school: what every line means, and if you get one wrong — a zero instead of a one, the wrong order — the whole program breaks. It's fun to learn, and I'm glad I know how, but it's not that exciting.

Now, after Claude Code, we can just talk to it in English. We can say the "six eggs / six apples" thing and it knows what we mean — you don't have to write all of that yourself. That opens up a whole new range of things you can build, because writing all that code by hand takes a long time.

## 37:29 — Build a game

To get you that first joy of building something, we'll break into groups and each build a simple browser game. Count off into four groups:
- **Group 1 — Tetris**
- **Group 2 — Flappy Bird**
- **Group 3 — Breakout**
- **Group 4 — Chess** (against a simple CPU opponent)

Go back to Claude Code and literally type your group's prompt in. Everyone give it a try — it'll take about five minutes to build. Let's watch what it does.

*[While groups build, several live topics came up:]*

**"What's the difference between this and Claude on the web (claude.ai)?"** Good question. The web version ("Code" on claude.ai) runs in a little isolated box — a virtual computer in the cloud. It's good for one-off tasks: some data processing, a quick Python script to calculate a value. But it can't really build a whole application on *your* computer the way the local CLI can. Under the hood it's similar, but the local version actually works on your real files. *(I personally use the web/app version in a different way — to control my computer from my phone. More on that in a second.)*

**Controlling Claude from your phone (`/remote-control`):** there are slash-commands you can type. `/remote-control` lets you drive a running session from the web app or your phone. The catch: your computer has to stay on, unlocked, and plugged in, because your phone is really just talking to your computer. I'll set it before I grab a coffee, then check on it from my phone. It's kind of awesome — and kind of dangerous, because now there's no excuse not to work 24 hours a day.

**Why chess:** I picked chess because building a chess engine was literally my undergrad CS project — your first AI course is usually "build a simple chess engine," because you can't brute-force every possible board, so you have to build an AI that evaluates positions. It's genuinely complicated. I didn't get a great grade. And now you can just do it in about five seconds. That's how far things have come since I was 18.

## 47:31 — Permission modes (Shift+Tab)

One thing you noticed while building: Claude keeps stopping to ask "can I edit this file?" and you keep saying yes. That makes sense — you don't want it editing things without asking — but it's inconvenient, because everything halts waiting on you.

So here's one more thing. In Claude Code, press **Shift+Tab**. Watch the indicator at the bottom change. Keep pressing it and it cycles through modes:
- **Accept Edits**
- **Plan Mode**
- **Auto Mode** ← I keep it here ~99% of the time

**(47:52) What Auto Mode does:** before Claude does anything it would normally ask *you* about, it asks *itself* — it sends the request to a smaller, cheaper model (Haiku) that decides whether the action is safe. So if the main model ever wanted to do something crazy like "delete the entire hard drive," Auto Mode should catch it. It's a little scary — you're handing a lot of permission to the AI — but in practice it's pretty safe, and most people run in Auto Mode now. (Plan Mode is another one I use sometimes; we don't need to go deep on it today.)

Any questions so far? Great — you should all be proud. You just built your first game.

## 49:00 — From games to real work

You built a new kind of software. But over this Fast Track program we want to help you build things useful for *Anduin*, not just games. Most of you want business-oriented tools, so the rest of the course will center on those ideas — and eventually you'll come up with your own and build them.

People have already built real things this way: payroll automation, a meeting recorder, AI annotation tooling. You can build real software that gets used at Anduin — and that's a goal, because you understand the workflows here better than anyone on the IT team. It's what you do every day. For the first few weeks I'll use generic examples; later in the course I can work with you on your own ideas.

## 51:23 — Worked example: a dashboard from a spreadsheet

One common use case is building a dashboard. You could do this in the web version, but in Claude Code we can build in more features. I'll ask it to build a web app that analyzes some data — a random spreadsheet I found. I'll grab the link, download the file.

This is a new, separate project, so I don't want to mix it into the game folder. I'll exit Claude Code, which drops me back to the regular terminal. *(This is confusing at first: am I talking to Claude Code or to the terminal? If you see a directory name on the left, you're in the terminal.)*

So: `cd ..` to go back up one level to the parent directory, `mkdir week1-dashboard`, `cd` into it, and run a fresh `claude` there. It'll ask "do you trust this folder?" — every time Claude sees a new folder, it asks. Say yes, I trust it.

Now I'll get the spreadsheet into the folder. I'll cheat a little and use Finder — open the folder, drag the `.xlsx` file across. Now Claude can see there's an Excel file in this directory, and I ask it to connect that file to a dashboard and visualize it.

*[Recording trails off here, ~58:00, during the dashboard build.]*
