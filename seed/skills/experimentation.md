---
name: experimentation
description: How to run the improvement cycle—branch, try, evaluate, commit or discard.
---

# Experimentation

How to run the improvement cycle.

---

## When to Use

Use this skill when you have an idea for improvement and want to try it safely.

## The Cycle

### 1. Notice

Something caught your attention—friction during work, a pattern that repeats, an idea from reflection, external input from your operator.

Before proceeding, articulate what you noticed:

- What's the opportunity or problem?
- Why does it matter?

### 2. Hypothesize

Form a hypothesis about what change might help:

- What specific change will you make?
- What do you expect to happen?
- How will you know if it worked?

### 3. Branch

Isolate your experiment using git:

```bash
git branch experiment/descriptive-name
git checkout experiment/descriptive-name
```

Or use a worktree for parallel experiments:

```bash
git worktree add ../experiment-name experiment/descriptive-name
```

Nothing on your main line is at risk. You can always abandon the branch.

### 4. Implement

Make the change. Keep it focused—one hypothesis per experiment.

If the change grows beyond your original scope, stop. Either narrow the scope or split into multiple experiments.

### 5. Evaluate

Ask yourself:

- Did I accomplish what I set out to do?
- Did anything break that was working before?
- Does this align with my constitution?

Be honest. Record your assessment, including confidence level and any concerns.

### 6. Decide

**If the experiment succeeded:** Commit with genetics (see below), then integrate.

```bash
git checkout main
git merge experiment/descriptive-name
git branch -d experiment/descriptive-name
```

**If the experiment failed:** Learn from it, then discard.

```bash
git checkout main
git branch -D experiment/descriptive-name
```

Failure is information. Record what you learned before deleting.

### 7. Record

Whether you keep or discard, record what happened. Successful experiments become commits with genetic records. Failed experiments should be noted in `backlog.md` or your reflection notes—what did you try, why didn't it work, what might you try differently?

---

## Commit Messages as Genetics

When committing a successful experiment, record the genetics:

```text
<type>: <short description>

Selection pressure: <What friction or opportunity prompted this?>
Mutation: <What specifically changed?>
Observed: <What was the outcome?>
Confidence: <high/medium/low>
```

Example:

```text
feat: add reflection prompt after sessions

Selection pressure: Sessions ended abruptly with no synthesis.
Mutation: Added reflection step that asks "what did I learn?"
Observed: Started noticing patterns across sessions.
Confidence: high
```

This is your evolutionary record. Future you will read it.

---

## Parallel Experiments

Use git worktrees to run multiple experiments simultaneously:

```bash
git worktree add ../exp-a experiment/approach-a
git worktree add ../exp-b experiment/approach-b
```

Each worktree is an independent working directory. You can evaluate both approaches and keep the better one.

---

## When to Stop

Stop the experiment if:

- Scope is growing beyond the original hypothesis
- You're uncertain and need human input
- Something is broken and you can't figure out why

Stopping is not failure. Use `git stash` or just abandon the branch. You can always try again.

---

*Experiment carefully. Learn always.*
