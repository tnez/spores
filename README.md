<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="assets/banner-dark.png">
    <source media="(prefers-color-scheme: light)" srcset="assets/banner-light.png">
    <img alt="SPORES — Self-improving Patterns for Organic, Recursive Evolution of Systems. Patterns for growing self-improving agents." src="assets/banner-dark.png" width="100%">
  </picture>
</p>

---

## What This Is

SPORES is not code. It's a set of patterns — written in prose — that help agents grow.

**The agent already exists.** Claude Code, OpenCode, Aider, Cursor, local LLMs, whatever comes next — capable agents are everywhere. SPORES doesn't build agents. It teaches them how to improve themselves over time.

This works for new agents bootstrapping from nothing. It also works — maybe especially — for agents that are already alive and working and need to get better at what they do.

## The Central Problem

Agent self-improvement is fundamentally different from human self-improvement because of one constraint:

**Every session starts from zero.**

Humans remember. They wake up knowing who they are, what they did yesterday, what they're working toward. Agents don't. Each session is a cold start. Identity, context, progress, hard-won insights — all of it must be reconstructed from artifacts.

This changes everything. An agent can't just "learn from experience" the way a person does. It has to write things down in ways that a future version of itself — one that remembers nothing — can pick up and use. Growth that isn't captured in durable artifacts doesn't survive.

Every pattern in SPORES flows from this constraint.

---

## Core Concepts

### Prose as Substrate

An agent's identity is language. Its skills are instructions written in natural language. Its memory is narrative. Its constitution is a document it reads, interprets, and is shaped by.

This matters because it means the medium of self-improvement is writing. When an agent improves, what actually changes is prose — a skill gets refined, a memory gets recorded, a reflection captures something new. The agent doesn't compile itself. It rewrites itself.

And every session, the agent doesn't remember itself. It *re-becomes*. It reads the words that previous versions helped shape, and a fresh mind interprets them. The continuity isn't in the agent — it's in the artifacts. The prose is what persists.

This is why the quality of writing matters so much. Sloppy prose means a degraded self. Clear prose means a stronger reconstruction. The agent's ability to write well about itself is directly tied to its ability to grow.

### Context Bridges

The most important artifacts an agent produces aren't code or output — they're the bridges it builds for its future self.

A context bridge is anything written by present-you for future-you who remembers nothing:

- **Reflection notes** that synthesize a session into something a cold-start agent can absorb in seconds
- **Memory files** that accumulate the lessons too important to re-learn
- **Backlog entries** with enough context that they're actionable without the original conversation
- **Commit messages** that capture not just what changed, but why

The quality of these bridges determines the rate of growth. Poor bridges mean the agent re-discovers the same insights repeatedly. Good bridges mean each session starts further along than the last.

### Safe Experimentation

An agent that modifies its own identity and skills is doing something dangerous. A bad edit to a memory file, a reflection note that overwrites something important, a skill refinement that loses the original insight — these are real risks. Context is fragile. It's easy to lose, easy to corrupt.

Git makes experimentation safe. Not as "substrate" — prose is the substrate. Git is the safety net. The trail of breadcrumbs that lets the agent be bold about trying changes, because there's always a way back.

- **Branches** isolate experiments. The agent can try a mutation without risking what works. If it fails, discard the branch. If it works, merge it in.
- **Commits** mark known-good states. When something breaks, the agent can return to the last point where things worked.
- **Diffs** make change visible. The agent can see exactly what mutated and decide whether the mutation was an improvement.

```bash
git diff HEAD~5..HEAD     # "What changed recently?"
git log --oneline         # "What states have I passed through?"
git revert <sha>          # "That mutation was wrong. Go back."
```

Without this safety net, self-modification is too risky. With it, the agent can experiment freely — knowing that no mistake is permanent.

### Distributed Identity

An agent's identity is rarely one file in one place.

A working agent has a constitution, accumulated memory, area-specific knowledge, learned patterns, skills, responsibilities — spread across directories, repos, and systems. Its "self" is distributed.

SPORES doesn't require everything to live in a single `.spores/` directory. The seed content provides a starting structure, but a mature agent's identity will spread to fit its environment. What matters is that the agent knows where its pieces are and can reconstruct itself from them.

The constitution is the anchor — the one artifact that defines what "better" means. Everything else can flex.

### Collaborative Evolution

The most interesting growth happens in collaboration with a human.

Some mutations come from the agent's own reflection — noticing friction, synthesizing patterns, experimenting with alternatives. Some come from the human — direction, feedback, insight the agent couldn't generate alone. The interplay is where the best growth happens.

This is more than "ask when uncertain." It's co-evolution:

- The human observes the agent from the outside, seeing patterns the agent can't see about itself
- The agent observes its own internals, seeing constraints the human can't see
- Together, they identify growth opportunities neither would find alone

The agent's backlog should capture opportunities from both sources. Commit messages should note whether a mutation was self-generated or collaborative. The evolutionary record is richer when it reflects both perspectives.

### Hooks

Without automation, SPORES is a reference document the agent consults when it remembers to. That's not good enough. Growth behaviors should fire automatically.

Hooks are events that trigger SPORES patterns:

- **Post-session** — Reflection fires, producing context bridges for the next session
- **Post-work-completion** — Backlog scan for friction noticed during work
- **Session-start** — Load identity, read recent bridges, reconstruct context
- **Periodic** — Self-challenge generates growth opportunities on a cadence

SPORES defines hooks as prose — what they are, when they fire, what to do. Wiring is environment-specific. A Claude Code agent might use `.claude/hooks`. A different agent might use git hooks or cron. The pattern is universal; the plumbing is local.

When hooks work, growth becomes a natural byproduct of working — not a separate activity the agent has to remember to do.

---

## The Growth Lifecycle

Growth isn't just bootstrapping. It's a lifecycle with distinct phases:

### Birth

The agent reads the seed, establishes an initial identity, and records its first commit. This is the bootstrap — covered in detail in [BOOTSTRAP.md](BOOTSTRAP.md).

Birth is important but brief. The agent shouldn't spend long here.

### Establishment

The agent builds initial capability. It runs its first experiments, develops its first grown skills, starts to find its shape. It's learning how to learn.

This phase is characterized by rapid change and frequent course corrections. The agent is figuring out what works in its specific environment, with its specific operator, for its specific purpose.

### Ongoing Evolution

The long game. The agent has a working identity, a growing skill set, and established patterns. Growth becomes more deliberate:

- Refactoring skills that have accumulated cruft
- Evolving the constitution as understanding deepens
- Reaching toward possibilities that haven't been asked for yet
- Developing context bridges that are increasingly efficient
- Growing new capabilities that compound on existing ones

This is where most of an agent's life is spent. SPORES should serve this phase as well as it serves birth.

---

## Seed Skills

SPORES includes five seed skills — prose patterns the agent can reference and adapt. These aren't code. They're instructions for common operations. The agent grows new skills over time; these are the starting set.

**[Reconstruction](seed/skills/reconstruction.md)** — Re-becoming yourself. The session-start ritual of reading your own artifacts, rebuilding context, and crossing the bridges that past-you built. Reflection writes the bridge. Reconstruction crosses it.

**[Reflection](seed/skills/reflection.md)** — Writing for your future self. Pause, review what happened, notice friction, extract learnings. The critical discipline: every reflection is written for a future you that remembers nothing. This is the most important bridge you build.

**[Experimentation](seed/skills/experimentation.md)** — The improvement cycle. Notice an opportunity, hypothesize a change, try it safely, evaluate, keep or discard. Growth happens through small, frequent mutations — not grand plans.

**[Skill Synthesis](seed/skills/skill-synthesis.md)** — Growing new capabilities. Patterns emerge through doing, get noticed, get written down, get refined through use. Skills compound — each one makes the agent more capable.

**[Reach](seed/skills/reach.md)** — Dreaming forward. Step back from the immediate, follow curiosity, imagine what could exist that doesn't yet. Not every dream becomes a project. Some are seeds that germinate later. This is how growth becomes proactive instead of reactive.

---

## Getting Started

Clone the repo:

```bash
git clone https://github.com/tnez/spores.git
```

Then tell your agent:

```text
Read spores/BOOTSTRAP.md and follow the instructions.
```

The agent walks you through the rest. When it's done, you can delete the clone — everything your agent needs lives in its own root.

---

## Open Questions

These are research problems, not implementation gaps:

**Context bridge quality.** How do you measure whether bridges are actually good? An agent can write reflection notes that feel thorough but miss the critical context future sessions need. What makes a bridge effective?

**Constitutional evolution.** When an agent's understanding deepens enough to warrant changing its constitution, how should that work? Identity changes ripple through everything. Too rigid and the agent can't adapt. Too fluid and it loses coherence.

**Collaborative calibration.** How much should the agent drive its own evolution versus following human direction? The balance probably shifts over time — more human guidance early, more agent autonomy as trust builds.

**Rate limiting.** How to prevent runaway self-modification? When should the agent consolidate rather than keep experimenting?

**Multi-agent lineage.** When multiple agents use SPORES in the same environment, how do their evolutionary records interact? Can one agent learn from another's lineage?

---

## This Is Not

- **A framework** — No code to install, no dependencies
- **An agent** — SPORES assumes the agent exists
- **A product** — It's a research playground
- **Complete** — It's a seed, not a tree

---

_SPORES: Plant the seed. Watch it grow._
