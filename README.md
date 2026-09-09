# plaintalk

A writing style for agents, in two constraints: small words and a plain direct
tone.

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

## Why two sources

Each one controls something the other does not.

| Source | Controls | The rule |
|---|---|---|
| Simple English Wikipedia | words | smallest word that is still exact |
| Fred Rogers | tone | plain words with no condescension, say the hard thing directly |

Drop either one and it fails in a predictable way. Without Rogers you get a
machine. Without Simple English Wikipedia you get something warm that still
needs a second read.

Naming writers also works better than listing thirty rules. "Use plain words"
is an instruction a model follows for a paragraph and then forgets. "Write like
Simple English Wikipedia" pulls a whole register the model already knows. Style
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
strings, inter-agent instructions, memory files. Rule 8 covers this case rather
than handing it off: keep every word, and drop the trailing analogy. A human
reader fills a gap correctly. A parser may not.

## Install

Claude Code: `./install.sh` (or `.\install.ps1` on Windows). Copies, never symlinks.

claude.ai: on GitHub, Code › Download ZIP, then upload that zip under
Settings › Customize › Skills. Any paid plan with code execution on. If the
upload rejects the zip, rename the extracted folder to `plaintalk` and zip it
again. Skills there are per-user and do not sync from Claude Code, so
re-upload after a change.

Then invoke it by name, or say "rewrite this plainly".

Skills load only when invoked. If you want it applied by default, put a line in
your always-loaded agent instructions. That is the file that is read on arrival.

## Honest notes

**This is not new.** [Plain language](https://www.plainlanguage.gov/) is an
existing standard with government style guides behind it, and it covers most of
the same ground. plaintalk differs by making the tone rule explicit rather than
leaving it implied, and by naming two writers instead of listing rules.

**Rule 11 was measured before it was added.** Four arms on four writing tasks:
no instructions, plaintalk alone, plaintalk plus this rule, and plaintalk plus
nine named sentence shapes to avoid. The nine shapes never appeared, not even
with no instructions at all, so banning them suppressed nothing. This one rule
still cut the count of interchangeable sentences from 3.33 per output to 2.50,
and beat plaintalk alone 3-1 in blind pairwise. Evidence is thin at four
prompts and one judge, so treat the size of the effect as a hint and the
direction as the finding.

**Rule 10 arrived from outside.** It was a standing instruction in one user's
global config before it was a rule here. It earned the move because it is about
writing for a reader rather than about one person's setup, so anyone who
installs the skill gets the same benefit from it.

**Rule 9 came from rule 5 not being enough.** A debate map was rewritten in
plaintalk and came out full of sentences like "necessity does not excuse an act
under a rule" and "no rule waits outside what is possible". Rule 5 never fired,
because a writer hunting for metaphor looks for a comparison and a personifying
verb contains none to find. The abstract subject doing a physical thing is the
metaphor, and it hides in the verb. Rule 9 names it so the pass can catch it.

**Rule 5 came from being caught.** An earlier draft of these ideas was written in
dense metaphor while arguing against dense metaphor. That is the failure the rule
exists to prevent, and the file is written under its own rules for the same
reason.

**There is no short-sentence rule, on purpose.** An earlier version carried one
("one idea per sentence, under 20 words", after Hemingway). In blind pairwise
tests the version without it won 7 of 8 pairings, including on readability: a
length cap prices out the subordinate clauses that carry mechanisms and
caveats. Do not add it back. Rule 8 keeps the one Hemingway-adjacent caution
that survived: omission is safe for a person and unsafe for a parser.

## License

MIT
