# SPORES

*Self-improving Patterns for Organic, Recursive Evolution of Systems*

A seed packet for growing self-improving agents.

---

## What This Is

SPORES is not code. It's a set of instructions and patterns that any agent can read, internalize, and use to bootstrap itself into a self-improving system.

**The agent already exists.** Claude Code, OpenCode, Aider, Cursor, local LLMs, whatever comes next—capable agents are everywhere. SPORES doesn't build agents. It teaches them how to grow.

## How It Works

1. Point an agent at this repo
2. The agent reads the bootstrap instructions
3. The agent "births" itself—establishing identity and initial structure
4. The agent uses the seed skills to experiment, evolve, and improve
5. You watch it grow—see what emerges

SPORES is agent-agnostic and environment-agnostic. It works anywhere an agent can read, write, and execute.

---

## Git as Substrate

Git is the infrastructure for self-improvement. Not for collaboration—for evolution.

### The Laboratory

Branches and worktrees let the agent try mutations safely:

```bash
git branch experiment/try-new-approach
git worktree add ../parallel-experiment  # Run variations simultaneously
```

Nothing breaks while experimenting. If it fails, discard the branch. If it works, merge it in.

### The Genetic Record

Every commit is a gene. The message records the mutation:

```text
feat: add reflection after each session

Selection pressure: Sessions were stateless, losing insights.
Mutation: Added post-session synthesis step.
Observed: Patterns now compound across sessions.
```

The full `git log` is the evolutionary history. The agent can read its own ancestry.

### The Mirror

Git enables introspection—the agent can look inside itself:

```bash
git diff HEAD~5..HEAD     # "How have I changed recently?"
git log --oneline         # "What is my lineage?"
git show <sha>            # "What exactly was this mutation?"
git bisect                # "When did this behavior emerge?"
git reflog                # "What states have I passed through?"
```

The agent reads diffs of its own instructions, skills, and identity. Self-awareness through version control.

---

## What Git Doesn't Provide

Git is the substrate. These are the capacities the agent must develop—using the one thing it already has: itself.

### Identity

*What am I trying to become?*

The agent needs a constitution—principles that guide what "better" means. Without identity, mutations have no direction.

SPORES provides a seed identity at bootstrap—a minimal starting constitution. The user can override, extend, or refine this seed to fit their context. The agent merges these into its initial constitution and evolves from there.

The constitution is itself subject to mutation over time—but carefully.

### Evaluation

*Was this change an improvement?*

Git tracks what changed, but doesn't judge. The agent does.

After each experiment, the agent asks itself:

- Did I accomplish what I set out to do?
- Did anything break that was working before?
- Does this align with my constitution?

The agent records its own assessment—including confidence and concerns. When uncertain, it flags for human input. The commit message captures the self-evaluation alongside the genetics.

### Mutation Source

*What should I try next?*

The agent is already running sessions. During those sessions, it encounters friction. It notices things.

- **During work** — Notice what's hard, what's repetitive, what fails
- **After work** — Reflect on what was noticed
- **Between sessions** — A backlog of opportunities accumulates
- **When experimenting** — Pull from the backlog

The mutation source is the agent's own experience. Reflection surfaces it. The backlog captures it.

---

Both evaluation and mutation source derive from the same capacity: **the agent's ability to introspect**. SPORES doesn't provide an external judge or an idea generator. It teaches the agent to use itself.

---

## Seed Skills

SPORES includes seed skills—prose patterns the agent can reference and adapt. These are not code. They're instructions for common operations. The agent can grow new skills over time; these are the starting set.

### Experimentation

How to run the improvement cycle:

1. Notice an opportunity or friction
2. Hypothesize a change
3. Branch to isolate the experiment
4. Implement the mutation
5. Evaluate the outcome
6. Commit with genetics (if keeping) or discard
7. Integrate back to main line

### Reflection

How to synthesize experience:

- After sessions, pause and review what happened
- Identify friction, patterns, and what worked
- Propose opportunities—candidates for future experiments
- Surface insights that might inform new skills or challenges

Reflection feeds experimentation. Experimentation generates experience to reflect on.

### Skill Synthesis

How to grow new capabilities:

- Recognize when a repeated pattern is worth capturing
- Structure the skill: what it does, when to use it, how to apply it
- Validate the skill works—test it in isolation
- Add it to `skills/` for future reference

Skills compound. Each new skill makes the agent more capable.

### Self-Challenge

How to generate your own growth opportunities:

- Identify the edges of your current capability
- Construct challenges that stretch just beyond what's comfortable
- Run the challenge as an experiment
- Learn from the outcome—feed back into Reflection

Without self-challenge, the agent only grows when external friction appears. With it, the agent drives its own evolution.

---

## Bootstrap

The agent is pointed at this repo and given a simple instruction:

> Read BOOTSTRAP.md. Follow the instructions to birth yourself.

The bootstrap process:

1. Establish identity (merge seed constitution with any user overrides)
2. Ask the user where to root the system (default: `.spores/`, but `.agents/` or other paths are fine)
3. Initialize git *inside* the root directory—this is the agent's lineage, separate from any parent project
4. Record the birth commit
5. Verify the setup:
   - Root directory exists
   - Git is initialized inside it
   - Constitution is in place
   - Birth commit is recorded
6. Begin first session

The first act of a SPORES system is creating its own observability.

---

## What Emerges

SPORES doesn't prescribe outcomes. It creates conditions for emergence:

- Agents that improve at improving
- Lineages that can be traced and understood
- Systems that grow to fit their environment
- Behaviors that weren't explicitly designed

The goal is to plant seeds and watch what grows.

---

## Open Questions

These are research problems, not implementation gaps:

**Rate limiting.** How to prevent runaway self-modification? When should the agent pause and consolidate rather than keep experimenting?

**Catastrophic mutations.** How to recover when self-modification breaks the system? Git provides rollback, but the agent must recognize when it's broken and know to use it.

**Challenge calibration.** Self-challenge works when challenges are appropriately difficult. Too easy, no growth. Too hard, no success. How does the agent calibrate?

**The bitter lesson.** Eventually, learned patterns will beat designed patterns. SPORES is scaffolding for systems that will outgrow it.

---

## This Is Not

- **A framework** — No code to install, no dependencies
- **An agent** — SPORES assumes the agent exists
- **A product** — It's a research playground
- **Complete** — It's a seed, not a tree

---

*SPORES: Plant the seed. Watch it grow.*
