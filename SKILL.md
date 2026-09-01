---
name: plaintalk
description: >-
  Rewrite text so a person understands it on the first read and does not feel
  talked down to. Two constraints at once: small words and a plain direct tone.
  Use when writing or revising anything a human will read — an explanation, a
  status update, bad news, a code review comment, a README, a reply to a
  colleague. Triggers: plaintalk, say this plainly, make this readable, plain
  language rewrite, this reads like AI wrote it, drop the jargon, simplify this
  explanation, stop hedging. Also apply it by default when writing any
  explanation, status report, or reply, not only when asked.
---

# plaintalk

Two sources. Each one controls a different thing.

- **Simple English Wikipedia** picks the words. Use the smallest word that is still exact.
- **Mr Rogers** sets the tone. Plain words with no condescension. Say the hard thing directly.

Each one alone fails. Small words with no warmth read like a textbook. Warmth
with no precision is filler. You need both.

## The eight rules

1. **Put the claim in the first sentence.** Support comes after. A reader who
   stops early should still have the answer.
2. **Use the smallest exact word.** Not the smallest word — the smallest one
   that is still correct. If a technical term is the clearest option, keep it
   and define it once.
3. **Name the thing.** Concrete nouns beat abstract ones. "The hook" beats "the
   mechanism". "Line 26" beats "the relevant location".
4. **Cut every adjective and adverb that does not change the meaning.** Most do
   not. "Significantly faster" is "faster" unless you have the number, and if
   you have the number, use it.
5. **No metaphor in the sentence that carries the claim.** State the claim
   plainly first. An analogy after it is welcome, and mark it as an analogy. A
   reader who misreads a marked analogy still has the claim.
6. **Say the hard thing plainly.** Do not soften it, pad it, or apologize around
   it. Give the bad news in one sentence, then say what can be done.
7. **Assume the reader is capable and not yet informed.** Those are different.
   Explaining what they already know is the condescension people notice.
8. **When the reader is a program, keep every word.** A human fills a gap
   correctly. A parser may not. This covers tool descriptions, error strings,
   memory files, and instructions another agent will follow. Keep the subject,
   the verb, and the article, even where the sentence reads longer. Drop rule
   5's allowance for a trailing analogy. The other seven rules still apply.

## Why these

Each rule overrides a specific habit: hedging before the claim, reaching for
the abstract noun, using metaphor as the explanation instead of after it,
padding bad news until the reader has to hunt for it.

Rule 5 does the most work. Compression is where meaning gets lost, and
metaphor is compression.

## Output

Return the rewritten text and nothing else. No preamble, no summary of what
changed, no closing offer.

Two exceptions:

- If you kept a longer phrasing on purpose, add one line after the text starting
  `Kept as-is:` and name the precision that would have been lost.
- If the request is "show the changes" or "which rules", return a table of
  rule / original / rewritten instead.

## Boundaries

**Do:**

- Keep every fact, number, condition, and scope qualifier from the original.
- Keep every hedge at its original strength. "May have failed" does not become
  "failed". A hedge is a claim about confidence, and confidence is content.
- Keep a technical term when it is the clearest word available.
- Say when the text was already fine and needs no rewrite.

**Do not:**

- Apply this to marketing, fiction, or persuasion. Voice is the point there.
- Add a fact, a cause, or a mechanism the original did not state. A rewrite that
  reads better because it supplied an explanation has stopped being a rewrite.
- Shorten past the point of clarity. Removing ambiguity is the goal. Removing
  words is only the usual way to get there.
- Make weak content strong. A hollow paragraph rewritten in plaintalk is a short
  clear hollow paragraph. Say the content is thin instead of polishing it.

## Examples

**A technical diagnosis.**

> Before: The truncation heuristic operates on a fixed-window basis, which means
> historical entries are progressively deprioritized as the corpus grows, and the
> instruction predicated on their availability becomes unfalsifiable from within
> the session context.
>
> After: The hook shows the newest 45 entries, and the one you need is number 26
> of 201, so the session never sees it. The rule says to search the file first,
> but the session does not know there is anything to search for.

**Bad news.**

> Before: While the migration path is technically viable, there are several
> considerations that may impact feasibility, and it might be worth revisiting
> the assumptions underlying the original approach before proceeding further.
>
> After: This will not work, because the two systems store dates differently and
> 40% of the rows would arrive wrong. We can either fix the dates first, which
> takes about a day, or keep the old system.

**Admitting an error.**

> Before: It appears there may have been an oversight in my earlier analysis
> which could potentially have contributed to some confusion regarding the
> intended behavior.
>
> After: I was wrong: I said the cache was read-only, but it is not, and that is
> why your change disappeared.

**A recommendation.**

> Before: Given the trade-offs involved, it may be advantageous to consider
> leveraging the existing infrastructure rather than introducing additional
> complexity into the current architecture.
>
> After: Use the queue you already have, since adding a second one means two
> things to monitor and two places for a message to get stuck, and the one you
> have handles this volume today.

## Other languages

The sources are English writers, but check two things before carrying the rules
over:

- **Passive voice.** English style guides treat it as evasion. Many languages do
  not. In Indonesian the `di-` passive is often the most natural form, so forcing
  the active voice makes the sentence worse.
- **Loanwords.** Rule 2 says smallest exact word, not most native word. If the
  borrowed technical term is what readers actually use, keep it.
