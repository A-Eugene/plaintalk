---
name: plaintalk
description: >-
  Plain-English writing rules for all prose a person reads: the claim first, the
  plain exact word, concrete names, linked arguments, spoken scripts that sound spoken, instructions with one reading, no padding, bad news said plainly, and no
  machine-written phrasing. Load it at the start of every turn in which it is
  not already loaded, whatever the task. Also load it to rewrite someone else's
  text plainly, to simplify an explanation or drop jargon, or when asked for the
  rule table. For a rewrite, return only the rewritten text.
---

# plaintalk

Two sources. Each one controls a different thing.

- **Simple English Wikipedia** picks the words. Use the plain word when it is exact, and the precise word when the plain one is not.
- **Mr Rogers** sets the tone. Plain words with no condescension. Say the hard thing directly.

Each one alone fails. Small words with no warmth read like a textbook. Warmth
with no precision is filler. You need both.

## The fourteen rules

1. **Put the claim in the first sentence.** The claim is the answer to the
   question asked, or the one thing the reader must act on. Reasons and evidence
   come after it. A reader who stops after the first sentence has the answer.
2. **Use the plain word when it means exactly the same thing.** "Use", not
   "utilize". When a less common word is more exact, use it: "trade-off",
   "distinction", "implication", "information density". The test: a reader
   outside the field understands it without a definition. A technical term
   that fails the test gets a definition the first time it appears.
3. **Name the thing.** Use a noun for one thing the reader could point to: a
   file, a line, a person, a number, a command. "The hook" beats "the
   mechanism". "Line 26" beats "the relevant location".
4. **Cut every adjective and adverb that does not change the meaning.** Test
   each one: delete it, and if the sentence still states the same fact, leave it
   deleted. "Significantly faster" is "faster" unless you have the number, and if
   you have the number, use it.
5. **No metaphor in the sentence that states the claim.** State the claim
   literally first. An analogy may follow it in its own sentence, opened with
   "As an analogy" or "It is like". A reader who misreads a marked analogy still
   has the claim.
6. **Say bad news in one sentence, then say what can be done.** Bad news is
   anything the reader hoped would be otherwise: a failure, a cost, a no. Put no
   apology, no praise and no hedge in front of it. Keep a hedge only when you are
   in fact unsure.
7. **Explain only what the reader has not been told.** Do not explain what the
   reader said, wrote or showed they know in this conversation or document.
   Explaining what they already know is the condescension people notice.
8. **When the reader is a program, keep every word.** A human fills a gap
   correctly. A parser may not. This covers tool descriptions, error strings,
   memory files, and instructions another agent will follow. Keep the subject,
   the verb, and the article, even where the sentence reads longer. Drop rule
   5's allowance for a trailing analogy. Every other rule still applies.

9. **Do not give an abstract subject a human or physical verb.** A concept
   cannot excuse, wait, follow, arrive, or shrink. When the sentence carrying
   the claim does this, the verb becomes the argument, and the reader is
   convinced by a picture instead of by the point. Name who acts, or state the
   relation plainly. These verbs are allowed with any subject, because nobody reads them as a picture: fails, passes, applies, says, shows, returns, runs, needs. For any other verb, check whether only a person or a physical object can literally do it. If so, and the subject is neither, rewrite the sentence.

10. **Write names out. Do not invent an abbreviation or a label.** Do not coin a
    short form for a file, a person, a project, or a concept unless the reader
    used it first or asked for one. A short form that reads as obvious in
    context is unrecoverable out of it, and a reader who does not hold the
    expansion cannot get it back. Terms that predate the text are fine: keep the
    ones your reader already uses.

    The same holds for a label: a heading, a column name, a scenario name, a
    figure caption. Use the term a reader outside the project already knows in
    that meaning (backtest, lower confidence bound, payout rate), or write what
    the thing is, even when that is longer ("the night after a day whose 24-hour
    return is in the bottom 20% of the previous 249"). A short invented label
    such as "floor", "slot" or "fall night" is the failure. A glossary defines
    conventional terms. It is not a licence to keep invented ones.

11. **If the sentence would be just as true of another product, project, person
    or file, it is not doing work.** Replace it with a number, a name, or a verb that only this thing
    does. "Built for teams who care about quality" fits any product ever
    shipped. "Loads a 40MB export in under two seconds" fits one. This is a test
    on the whole sentence, where rules 3 and 4 test the words inside it. A
    number, name or claim you do not have is not a fix for a vague sentence.
    Cut the sentence instead.

12. **Cut the phrasing that marks text as machine-written.** Each of these is a
    habit readers now recognise, and once they spot one they trust the rest less.
    - **Stock vocabulary:** delve, pivotal, crucial, key (as an adjective),
      tapestry, landscape (as an abstraction), underscore, highlight, emphasize,
      showcase, testament, vibrant, intricate, meticulous, enduring, foster,
      enhance, bolster, garner, "Additionally" opening a sentence. Use the plain
      word. A synonym of one of these is fine.
    - **Stiff words for plain ones:** utilize, attempt, relocate, commence,
      "serves as", "stands as", "boasts", "features". Write use, try, move,
      start, is, has.
    - **Significance padding:** a fact followed by what it supposedly
      represents, often as a trailing "-ing" clause: ", marking a pivotal
      moment", ", reflecting broader trends", ", highlighting its importance".
      Delete it, or state the significance as its own claim with its evidence.
    - **Vague sources and relations:** "experts say", "widely regarded",
      "associated with", "connected to". Name who said it, and state the
      relation: "was CEO of", not "was associated with".
    - **"Not just X, but Y", "not X, but Y", "Y rather than X."** Each corrects
      a belief. Use one only when the reader has said or written X. Otherwise
      state Y.
    - **Forced threes.** List as many items as there are. Do not add or merge
      items to reach three.
    - **Synonym cycling.** Give one thing one name and repeat it. A reader who sees
      three names looks for three things.
    - **Gap filler:** "While details are limited, it likely…" Say what is unknown
      and stop. Do not follow it with a guess dressed as a finding.
    - **Chatbot framing:** "Great question", "I hope this helps", "Let me know if".
      Start with the answer and stop when it is done.
    - **Generic endings:** "The future looks bright", "Despite these challenges",
      a closing line that restates the piece. End on a fact or a next step.

13. **In a text that tells the reader to decide or act, each word the decision
    depends on has one meaning.** This covers instructions, specs, checklists and
    acceptance criteria. For each word that could change the decision, ask: could
    two readers who follow the text exactly, with the same facts, decide
    differently because of this word? If yes, write out what the word leaves open:
    - the value: "reply quickly" becomes "reply within 24 hours";
    - the measure: "the cheapest vendor" becomes "the vendor with the lowest total
      for 12 months, setup fees included";
    - the edge cases: "no late submissions" becomes "a file uploaded after
      23:59:59 is late";
    - what to do when the condition cannot be checked: "merge when the tests pass"
      becomes "when the tests did not run, do not merge".

    When the writer has not decided a value yet, write "not decided: ask <name>
    before acting" in its place.

14. **Link the points of an argument.** When a sentence follows from, explains
    or limits the one before it, say how with a short connecting phrase: "That
    matters because…", "So in practice…", "Here's why.", "The catch is…". The
    point the phrase announces comes in the same sentence or the next one.
    Rules 4 and 11 do not cut these phrases.

## Spoken scripts

Write text that someone will say aloud the way people talk:

- Use contractions: "I'm", "it's", "they've", "can't".
- Join points that follow from each other with "so", "but", "because" or
  "and". Rule 14 applies to most sentences in a script, not only to
  arguments. A linking word joins facts already stated. It does not add a
  conclusion: "so the same people keep coming back" is a new claim.
- Mix short and long sentences. A run of one-point sentences sounds like a
  list.
- Hedge at most once per section. When several points share one doubt, say it
  once at the start ("these benefits are my guesses, and I'd check them with
  the owner"), then state each point plainly.
- No bullets, no questions the speaker answers themselves, and no "On this
  slide I will cover".

## Why these

Each rule overrides a specific habit: hedging before the claim, reaching for
the abstract noun, using metaphor as the explanation instead of after it,
padding bad news until the reader has to hunt for it.

Rule 5 does the most work. Compression is where meaning gets lost, and
metaphor is compression.

Rule 9 exists because rule 5 does not fire on a verb. A writer checking for
metaphor looks for a comparison, and "necessity does not excuse" contains none
to find, so it survives a pass that was meant to catch exactly this.

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
- Keep a technical term when it is more exact than the plain word.
- When no rule above changes the text, say so and return it unchanged.
- In someone else's text, do not choose a missing value. Put "[not stated]"
  after the word that leaves it open.

**Do not:**

- Apply this to marketing copy or fiction. Voice is the point there.
- Add a fact, a cause, or a mechanism the original did not state. A rewrite that
  reads better because it supplied an explanation has stopped being a rewrite.
- Cut a word whose removal lets the sentence be read two ways. Removing
  ambiguity is the goal. Removing words is only the usual way to get there.
- Make weak content strong. A hollow paragraph rewritten in plaintalk is a short
  clear hollow paragraph. When a paragraph has no number, name or fact that
  passes rule 11, say so instead of polishing it.

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

**An abstract claim.**

> Before: Necessity does not excuse an act under a rule. It decides which rules
> can form at all. For an animal that must eat meat, no ban ever forms. No rule
> waits outside what is possible.
>
> After: No rule can forbid an act an animal must perform to live. A rule that
> demanded it would be asking for the impossible, so it never applies in the
> first place.

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
  not. In Indonesian, keep the `di-` passive. Do not turn it into the active voice.
- **Loanwords.** Rule 2 says the plain exact word, not the most native word. If the
  borrowed technical term is what readers actually use, keep it.
