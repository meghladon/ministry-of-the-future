# The Ministry of the Future

A civic technology project testing whether [Polis](https://pol.is), the deliberation tool used by [vTaiwan](https://vtaiwan.tw/) to resolve real political deadlocks in Taipei, can help Australians think constructively together about what this country should become.

**Live site:** [meghladon.github.io/ministry-of-the-future](https://meghladon.github.io/ministry-of-the-future/)

---

## What this site does

The site is the public face of the project. It hosts the case for the work, the methodology behind it, and — most importantly — the live deliberative rounds people are invited to take part in.

There are currently two rounds running:

**Round 01 · Wealth & intergenerational fairness** — a serious round on one of the most chronically deadlocked questions in Australian politics: how this country taxes wealth, capital, and intergenerational transfers. Embedded on the homepage. Running in partnership with the Australian network of the [School of Moral Ambition](https://www.schoolformoralambition.com/).

**Round 02 · The shared-house round** — a low-stakes warm-up round on the politics of communal living: dishes, guests, the fridge, the chaos of shared houses. Lives on `demo.html`. Designed as the easiest way to feel how Polis works before engaging the tax round.

Both rounds use the same method, the same algorithm, the same bridging logic — they just differ in stakes.

## How Polis works (the short version)

Polis is an opinion-mapping tool. Participants vote agree, disagree, or pass on a stream of statements about a question, and can submit their own statements to be voted on by others. A clustering algorithm (PCA + k-means) sorts participants into opinion groups in real time. The interesting output is the **bridging statements**: ideas that earn agreement across clusters that otherwise disagree about most things.

This matters because most contested public issues aren't as polarised as they look. People are divided on some things and quietly agreed on others — but the agreed parts are invisible because nobody's shouting about them. Polis surfaces them.

vTaiwan has used this method to break legislative deadlocks on ride-sharing (Uber), online alcohol sales, fintech regulation, and telemedicine, with a documented government-action rate of around 80%. The Ministry of the Future is an experiment in whether the same approach works here.

## How the site is built

A static site, deployed via GitHub Pages. Vanilla HTML, CSS, and JavaScript — no build step.

```
index.html     The main page: hero, wealth round, demo invite, history, roadmap
demo.html      The shared-house demo round
README.md      This file
```

Polis is embedded into both pages using the official hosted Polis service ([pol.is](https://pol.is)). The site does not run its own Polis instance — it embeds conversations created on the hosted platform.

Two types of Polis embed are used:

- **Conversation embed** — the voting interface where people add their voice. Uses `data-conversation_id`.
- **Report embed** — the public-facing cluster map and bridging statements, updating as new votes come in. Uses `data-report_id`.

## Design language

- Typography: [Fraunces](https://fonts.google.com/specimen/Fraunces) for prose and headlines, [JetBrains Mono](https://fonts.google.com/specimen/JetBrains+Mono) for labels and metadata.
- Palette: cream paper `#f3ede0` on ink `#1a1814`, with rust `#b8451f` and ochre `#c98a2b` accents.
- Visual approach: figures and diagrams over prose. The site aims for editorial-magazine density without becoming text-heavy.

## What's next

See the roadmap section on the live site. In short: the wealth round runs through to a reflection-and-ratification session at a School of Moral Ambition tax-reform conference, with the bridging statements going into a face-to-face room of stakeholders, economists, and public servants. The output will be a public report.

Beyond that: a regional festival round (lighter), larger infrastructure deliberations (heavier), and partnerships with councils and the wider Computational Democracy / Decidim / Make.org ecosystem.

## Credits & sources

- [Polis](https://pol.is) — the deliberation tool, built by the [Computational Democracy Project](https://compdemocracy.org), open-source.
- [vTaiwan](https://vtaiwan.tw/) — the Taiwanese civic-tech crew (g0v) and Digital Minister Audrey Tang's office (PDIS), who designed the four-stage process this project adapts.
- [The GovLab](https://thegovlab.org/), *CrowdLaw for Congress: vTaiwan* (2020) — the most thorough English-language case study of the methodology.
- V-Dem Institute Democracy Report 2026 and Lowy Institute Poll 2025 — cited on the site's "Why this exists" section.

## Contact

This is an early-stage project being built slowly, in public. There's no mailing list yet. The clearest signal of interest is voting in the rounds.

For partnership or research enquiries: [meaghan_ferguson@outlook.com](mailto:meaghan_ferguson@outlook.com)
