# plaintalk

A writing style for agents, in three constraints: small words, short sentences,
and a plain direct tone.

The rules live in [`SKILL.md`](SKILL.md). That file is the contract. This one is
why it looks the way it does.

## The problem

Ask a model to write clearly and it will agree with you, then produce this:

> While the migration path is technically viable, there are several
> considerations that may impact feasibility, and it might be worth revisiting
> the assumptions underlying the original approach.

Nothing there is wrong. Nothing there is useful either. The reader cannot tell
whether the answer is yes or no, and the sentence that would settle it is not in
the paragraph.

"Be clear and concise" does not fix this, because every frontier model already
holds that as a default. Restating a default changes nothing. What changes the
output is a rule that overrides a specific habit.

## Why three sources

Each one controls something the other two do not.

| Source | Controls | The rule |
|---|---|---|
| Simple English Wikipedia | words | smallest word that is still exact |
| Ernest Hemingway | sentences | short, declarative, concrete nouns, few adjectives |
| Fred Rogers | tone | plain words with no condescension, say the hard thing directly |

Drop any one and it fails in a predictable way. Without Hemingway you get a
textbook. Without Rogers you get a machine. Without Simple English Wikipedia you
get something short and warm that still needs a second read.

Naming three writers also works better than listing thirty rules. "Write short
sentences" is an instruction a model follows for a paragraph and then forgets.
"Write like Hemingway" pulls a whole style the model already knows. Style
attractors hold better than style rules.

## The rule that does the most work

> **No metaphor in the sentence that carries the claim.**

State the claim plainly. An analogy after it is welcome, and it should be marked
as one.

This is the rule to keep if you keep only one. Compression is where meaning gets
lost, and a metaphor is compression. Put one in the sentence that carries the
claim and a reader who unpacks it wrong has nothing left to fall back on. Put it
after, and they still have the claim.

## When not to use it

**Marketing, fiction, persuasion.** Voice is the point there, and this flattens
voice on purpose.

**Text a machine parses with no human present** — tool descriptions, error
strings, inter-agent instructions, memory files. Use
[ASD-STE100](https://www.asd-ste100.org/) for those. It is a real controlled
language standard. It was written so aircraft technicians cannot misread a
maintenance step. It is stricter than this in one way: it forbids dropping words
for rhythm. plaintalk allows that. A human reader fills the gap correctly. A
parser may not.

The short version: **plaintalk for a reader who can ask you a follow-up
question. STE for one who cannot.**

## Install

```bash
mkdir -p ~/.claude/skills/plaintalk
cp SKILL.md ~/.claude/skills/plaintalk/
```

Then invoke it by name, or say "rewrite this plainly".

Skills load only when invoked. If you want it applied by default, put a line in
your always-loaded agent instructions. That is the file that is read on arrival.

## Honest notes

**This is not new.** [Plain language](https://www.plainlanguage.gov/) is an
existing standard with government style guides behind it, and it covers most of
the same ground. plaintalk differs by making the tone rule explicit rather than
leaving it implied, and by naming three writers instead of listing rules.

**Rule 6 came from being caught.** An earlier draft of these ideas was written in
dense metaphor while arguing against dense metaphor. That is the failure the rule
exists to prevent, and the file is written under its own rules for the same
reason.

**The three sources do not fully agree.** Hemingway's iceberg theory says to omit
what the reader can infer. That is the one place plaintalk and STE split, and it
is why there are two skills instead of one.

## License

MIT
