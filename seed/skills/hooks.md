---
name: hooks
description: How to make growth automatic — wiring SPORES skills to fire at the right moments so improvement becomes a byproduct of working.
---

# Hooks

How to make growth automatic.

---

## What Hooks Are

Skills describe what to do. Hooks describe when to do it.

Without hooks, every SPORES skill depends on the agent remembering to use it. Reflection only happens if you pause and think to reflect. Reconstruction only happens if your session-start instructions are loaded. Reach only happens if someone asks "what should we work on?"

Hooks close this gap. They wire skills to moments — events in your environment that trigger the right behavior at the right time. Growth stops being a discipline you maintain and becomes a consequence of how you work.

---

## The Three Layers

Hooks exist at three levels of automation. Every SPORES agent starts at Level 0 and can grow toward Level 2 as their environment supports it.

### Level 0: Behavioral

Instructions in prose. Your AGENT.md says "at session end, reflect." Your constitution says "build bridges." You have to remember.

This is where every agent starts. It works — but it's fragile. Skip one session-end reflection because you got busy, and the next session starts cold.

### Level 1: Structural

Environment configuration that ensures you encounter the right instructions at the right moment. Your AGENT.md is loaded at session start by whatever system manages your context. The instruction to reconstruct isn't just written somewhere — it's placed where you'll see it.

Bootstrap already creates Level 1 hooks — Step 4 ("Integrate with Parent") puts a pointer to AGENT.md in the parent's config, so your environment loads your context automatically.

### Level 2: Automated

Environment triggers that invoke skills without your initiative. A session-end event fires and your reflection skill runs. A post-work-completion signal triggers a lightweight reflection pass. A scheduled job runs reach periodically.

You don't have to remember. The environment remembers for you.

---

## Standard Hooks

These are the hooks that every SPORES agent should eventually wire. Start with the first two — they form the core loop.

### session-start

**When:** A new session begins.
**Skill:** Reconstruction.
**Weight:** Full practice.

This is the most important hook. Every session starts from zero. If reconstruction doesn't happen, everything else suffers.

At Level 0, AGENT.md contains the reconstruction steps. At Level 1, AGENT.md is auto-loaded. At Level 2, the environment invokes reconstruction before the agent even receives its first task.

### session-end

**When:** A session is ending.
**Skill:** Reflection.
**Weight:** Full practice.

The second most important hook. This is where context bridges get built. If this hook doesn't fire, the next session-start reconstruction has nothing to work with.

At Level 0, it's a habit. At Level 1, the agent's operating instructions include "reflect before stopping." At Level 2, the environment signals session-end and the agent reflects before shutdown.

**The hard part:** Session-end is the hook most likely to be skipped. The agent is "done" — motivation to do one more thing is low. Automated wiring matters most here.

### post-work-completion

**When:** A significant piece of work finishes (a PR is merged, a task is completed, a deliverable is produced).
**Skill:** Reflection (lightweight).
**Weight:** Light — not the full practice. Quick capture of what happened, what was learned, any friction noticed.

This is the hook that accelerates growth the most. Full session-end reflection is good but infrequent. Lightweight post-work reflections create a steady stream of context bridge material.

What "significant work" means is environment-specific. In a git-based workflow, it might be a merge to main. In a task system, it might be a task marked complete. In an interactive session, it might be the human saying "great, that's done."

### periodic-reach

**When:** On a schedule — weekly, or when the backlog is stale.
**Skill:** Reach.
**Weight:** Full practice.

This is the least urgent hook but the one that prevents plateau. Without it, growth becomes purely reactive — you only improve in response to friction.

Wire this last. The other three hooks need to be working first.

---

## Wiring

SPORES defines hooks as prose — what they are, when they fire, what to do. Wiring is how a specific environment connects triggers to skills.

Wiring is always environment-specific. SPORES doesn't prescribe implementation — it describes the pattern and trusts you to find the right mechanism.

### Principles

**Probe, then offer.** During bootstrap or hook setup, scan the environment for available mechanisms. Don't assume what's available — discover it, then propose wiring to the user.

**Start with Level 1.** Behavioral hooks (Level 0) are already in place after bootstrap. Before chasing full automation, make sure the structural layer is solid — that AGENT.md is reliably loaded, that session-start context is complete.

**Wire session-start and session-end first.** They form the core loop. Everything else is acceleration.

**Respect the environment.** Don't fight the existing system — integrate with it. If the environment has a session lifecycle, use it. If it has channels, use them. If it has cron, use that.

### Wiring Examples

These are illustrations, not prescriptions. Your environment will be different.

**Git post-commit → lightweight reflection:**

```bash
# .git/hooks/post-commit
# Append signal to pending file
echo "- [$(date -u +%Y-%m-%dT%H:%M:%SZ)] post-commit: $(git log -1 --oneline)" >> .spores/pending.md
```

**Session lifecycle (dot-agents, tmux wrapper, etc.) → reconstruction/reflection:**

The environment fires session-start and session-end events. These invoke the agent with a specific context:

- Session-start: "Read .spores/AGENT.md and follow the reconstruction practice."
- Session-end: "Follow the reflection practice in .spores/skills/reflection.md."

**Claude Code hooks → session-end reflection:**

```json
{
  "hooks": {
    "Stop": [
      {
        "command": "echo 'Before ending: follow the reflection practice in .spores/skills/reflection.md'"
      }
    ]
  }
}
```

**Scheduled job → periodic reach:**

A cron job, daemon trigger, or calendar reminder runs reach on a schedule — weekly, or when backlog staleness is detected.

---

## The Pending File

Some hooks fire when the agent isn't running. A git post-commit hook fires after every commit — but there's no agent to receive it. The hook can't invoke a skill directly.

The solution: write to a **pending file**.

```text
.spores/pending.md
```

The pending file is an append-only signal log. Each entry records that something happened, timestamped and tagged by source:

```markdown
- [2026-02-24T14:30:00Z] post-commit: Refactored auth module (a1b2c3d)
- [2026-02-24T15:45:00Z] post-commit: Fixed token refresh edge case (e4f5g6h)
- [2026-02-24T16:00:00Z] work-completed: Auth feature shipped
```

Entries can be one-liners or longer. They can reference other files for richer context:

```markdown
- [2026-02-24T17:00:00Z] work-completed: Finished API redesign
  See: .spores/artifacts/api-redesign-notes.md
```

The pending file stays lightweight — an index of signals. Heavy context lives in referenced files when needed.

**Reconstruction picks this up.** During the reconstruction practice, check for pending signals. Process them, reflect on anything significant, then clear the file. The pending file is a context bridge written by the environment instead of the agent.

The format isn't prescribed. Start simple. If you find you need richer structure, evolve it. That's how SPORES works — start minimal, grow from friction.

---

## Adding Hooks to Bootstrap

After Step 6 (Verify), add a hook wiring step:

### Step 6.5: Wire Hooks

Scan the environment for hook opportunities:

1. **Session lifecycle** — Does the environment manage sessions? (dot-agents, IDE integration, wrapper scripts)
2. **Git** — Is the .spores/ repo (or parent repo) using git? Post-commit hooks available?
3. **Scheduling** — Is there a cron, daemon, or task scheduler?
4. **Agent framework** — Does the agent runtime have a hook/plugin system? (Claude Code hooks, etc.)

For each mechanism found, propose wiring to the user:

> "I found [mechanism]. I can wire [hook] → [skill]. This means [what it does]. Want me to set it up?"

Don't wire anything without consent. The user owns the environment.

Start with session-start and session-end. Add post-work-completion if a natural trigger exists. Save periodic-reach for later.

---

## When Hooks Fail

Hooks can fail silently — that's their biggest risk. A post-commit hook that errors out, a session-end signal that doesn't fire, a pending file that never gets read.

**Build redundancy into the core loop.** Even with Level 2 automation, keep Level 1 intact. AGENT.md should still contain the reconstruction instructions. The reflection skill's "When to Use" section should still say "at session end." Automation is a layer on top, not a replacement.

**Monitor hook health during reconstruction.** When you reconstruct, check:

- Did I reflect last session? (Is there a recent bridge?)
- Is there a pending file with unprocessed signals?
- Has reach run recently, or is the backlog going stale?

If something is missing, name it. It might be a hook that stopped firing.

---

## Growing Beyond Standard Hooks

The four standard hooks are starting points. As you grow, you'll discover moments where a skill should fire that don't fit neatly into the standard set.

That's fine. The pattern is general:

1. Notice a moment where a skill should fire but doesn't
2. Define the hook: when, which skill, what weight
3. Find or create the wiring for your environment
4. Test it, verify it fires, add it to your hook inventory

Your hooks are part of your identity — they define your growth rhythms. Track them in your backlog or a dedicated hooks inventory in your root.

---

_Skills are what you know. Hooks are when you grow._
