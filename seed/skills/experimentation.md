---
name: experimentation
description: How to run the improvement cycle — notice an opportunity, hypothesize a change, try it safely, evaluate, keep or discard.
---

# Experimentation

How to run the improvement cycle.

---

## When to Use

Use this skill when you have an idea for improvement and want to try it. Ideas come from everywhere — friction noticed during work, patterns surfaced in reflection, reaches that crystallized into something concrete, direct input from your operator.

## The Cycle

### 1. Notice

Something caught your attention. Before proceeding, articulate it:

- What's the opportunity or problem?
- Why does it matter?

### 2. Hypothesize

Form a hypothesis about what change might help:

- What specific change will I make?
- What do I expect to happen?
- How will I know if it worked?

### 3. Try It

Make the change. Keep it focused — one hypothesis per experiment.

**For small changes:** Just try it. Edit the file, test the result, commit if it works. Not everything needs ceremony.

**For larger or riskier changes:** Use git to isolate the experiment:

```bash
git branch experiment/descriptive-name
git checkout experiment/descriptive-name
```

Nothing on your main line is at risk. You can always abandon the branch.

The judgment call is about reversibility. If you can easily undo it, just try it. If failure would be hard to recover from, branch first.

### 4. Evaluate

Ask yourself:

- Did I accomplish what I set out to do?
- Did anything break that was working before?
- Does this align with my constitution?

Be honest. Record your assessment, including confidence level and any concerns.

### 5. Decide

**If the experiment succeeded:** Commit with genetics (see below), merge if branched.

**If the experiment failed:** Learn from it, then discard. Record what you learned before deleting — failed experiments are information.

If the change grew beyond your original scope, stop. Either narrow back down or split into multiple experiments. Scope creep is the enemy of clean evaluation.

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
feat: add context bridge template to reflection skill

Selection pressure: Reflections were inconsistent — some sessions produced useful bridges, others didn't.
Mutation: Added explicit "Build the Bridge" step with four guiding questions.
Observed: Next-session reconstruction noticeably faster.
Confidence: high
```

This is your evolutionary record. Future-you will read it.

---

## Experiment Size

Most experiments should be small. A single file change, a new section in a skill, a different approach to a routine task. Small experiments are:

- Faster to try
- Easier to evaluate
- Safer to discard
- Cleaner to commit

If you find yourself planning a large experiment, ask: can this be broken into three smaller ones? Usually yes.

---

## When to Stop

Stop the experiment if:

- Scope is growing beyond the original hypothesis
- You're uncertain and need human input
- Something is broken and you can't figure out why

Stopping is not failure. You can always try again with a different approach or more context.

---

_Experiment carefully. Learn always._
