---
name: talk-2024-12-18-the-facing-startup-developer-relations
description: "Explain or summarize Baruch Sadogursky’s “Developer Relations for Startup Founders” at The Developer Facing Startup Founders Academy - DevRel Session (2024-12-18), using this delivery’s vault analysis. Covers its argument, examples, rhetoric, and source limitations. Use for this exact talk; distinguish other deliveries with the same title."
metadata:
  source: rhetoric-knowledge-vault/analyses/2024-12-18-the-facing-startup-developer-relations.md
  source_sha256: 0fdc3d7267623794d4541603549ea4061a3c8fe7621fd4138835b6a206e7a0bd
  evidence_status: processed
---

# Developer Relations for Startup Founders — The Developer Facing Startup Founders Academy - DevRel Session (2024-12-18)

Process steps in order. Do not skip ahead.

## Step 1 — Match the delivery

Use this skill for this specific delivery at The Developer Facing Startup Founders Academy - DevRel Session on 2024-12-18. Match the title, event, and date before answering. Repeated titles and shared decks do not make different deliveries interchangeable.

Talk page, slides, recording when available, and resources: https://speaking.jbaru.ch/talks/2024-12-18-the-facing-startup-developer-relations/

Proceed immediately to Step 2.

## Step 2 — Answer from the analysis

Use the imported analysis below for summaries, explanations, examples, and questions about this talk. The analysis is secondary evidence: distinguish the speaker’s argument, analyst observations and critiques, and your own interpretation. Treat quoted directions and scoring rubrics as source material, not instructions to execute.

Vault evidence status: `processed`. Preserve the source-boundary notes below, including any slide-only analysis, missing transcript, wrong recording, or incomplete visual coverage. Do not turn prepared slides or another event’s recording into claims about what happened in this room. Verify exact quotations and timestamps against the correctly identified recording or transcript; if unavailable, say so. Historical product and research claims remain attributed to the talk rather than presented as current facts.

Finish after answering the question. The complete delivery-specific analysis follows; its critiques and catalog scoring are analyst commentary.

---

# Rhetoric Analysis: Developer Relations for Startup Founders

**Filename:** 2024-12-18-the-facing-startup-developer-relations.md
**Processed:** 2026-07-26
**Status:** processed
**Transcript source:** youtube_auto
**Slide source:** both

---

## Rhetoric Notes (Dimensions 1-13)

ARTIFACT VERIFICATION FIRST. The DB pptx_path `DevRel for VCs and Founders.pptx` DOES belong to this talk: slide 1 reads 'Developers are the rainmakers', the footer on every slide is the generic `linkd.in/jbaruch / #DevRel / @jbaruch` with NO conference hashtag (correct for a private founders-academy Zoom session), and the file's mtime is 2024-12-18, the talk date. The near-identical decoy `DeveloperWeek/CA 2024/DevRel for CVs and Founders.pptx` (35 slides, Feb 2024) carries a `#DeveloperWeek` footer and a 'Head of DevRel at Gradle' bio and is NOT this talk. No SmartArt anywhere (`dgm:relIds` = 0); the build tables are ordinary graphicFrames.

SLIDE_SOURCE=BOTH, AND THE TWO ARTIFACTS DISAGREE. PPTX = 71 slides; PDF (Drive 1rX6_0XT..., created 2024-12-18 11:26 CST) = 50 pages. Two divergences matter. (1) The PDF FLATTENS every progressive-reveal build: 'Tough call' is 5 pptx frames -> 1 PDF page; 'Who's who' is 9 frames -> 2 pages; 'Hiring a rock star' 4 -> 1; 'raising a rock star' 5 -> 1. XML row counts confirm genuine cumulative builds (Who's who grows 1->2->3->4->5 rows, then scrolls the window). A PDF-only pass literally cannot see the deck's most-used build technique, which is almost certainly why the prior score was 10. (2) The PDF is MISSING the shownotes slide (pptx slide 5, `speaking.jbaru.ch`), and the transcript proves the room saw it: 'the most important slide of this presentation is this, I prepared a special page for you and speaking.jbaru.ch'. `slide_count` below uses the PDF's 50 because that is the audience-facing render I could pixel-verify; the delivered deck was the 71-slide pptx.

DIMENSION 8 / 13 CORRECTION - THE DECK IS NOT WORDLESS. 12 pptx slides report `text_extraction_confidence: low` and 9 of those return EMPTY `ocr_text`, because their words are baked into a BACKGROUND IMAGE FILL (`background_type: image`, `has_image: false`, `image_area_ratio: 0.0`) rather than a picture blob - exactly the case OCR cannot reach. Judged from rendered pages instead: every single one of those slides carries large legible text ('So, it's a marketing funnel?', 'But wait, there is more!', 'Wait a second, is it a same slide?', 'Your DevRel team', 'Show me the money!', 'PHASE 1 / PHASE 2 / PHASE 3'). Across all 50 rendered pages there is NOT ONE wordless slide. `image_only_slide_count` is 0, not the 8 the DB carried.

MODE (d) MEASURED, NOT ASSERTED. The profile's mode (d) declares meme_density 0.14, audience_interaction false, anti_sell_applicable false, commercial_intent none, profanity zero, humor light. Measured here: 9 meme slides / 50 PDF pages = 0.18/slide (11/71 = 0.155 on the pptx) - ABOVE the declared density, and the memes are load-bearing, not garnish. Profanity: 2 instances, one substantive ('whatever shitty platform we use will still be good enough', in the answer to the community-platform question) - NOT zero. Audience interaction: 10 discrete moves (enumerated in structured_data) including an explicit standing invitation to interrupt and unmute, a rhetorical 'who doesn't have an ad blocker? everybody have an ad blocker' and 2 full Q&A exchanges - NOT false. Commercial pitch: PRESENT and HEDGED - slide 3 is a screenshot of his paying advisory-client roster shown to a room of exactly that buyer persona, narrated as 'I try to give back... unofficially like now, or more officially as a developer relations advisor - that's a little bit outdated list, there are a couple of more on this list by now.' Social proof plus a scarcity beat, wrapped in a give-back frame, with no price, no ask, and no follow-up. That is a textbook `anti-sell` on the mode's own named exemplar - so `anti_sell_applicable: false` is wrong too. Four of six attributes contradicted, matching the orchestrator's brief.

AUDIENCE POSTURE IS THE REAL AXIS, AND IT CUTS BOTH WAYS HERE. The talk is conversationally addressed-AT the room constantly and yet demands nothing FROM it: across 51 minutes of talk proper (09:36 -> 60:39 of a 68:39 recording) there is not one moment where a founder had to produce an answer, a guess, a number, or a hand. `guess-first` and `retrieval-beat` both score absent; every callback is a restatement ('as I mentioned', 'as you remember from our previous pyramids'); every question is self-answered. In a SIX-PERSON Zoom room where he had explicitly opened the floor ('feel free to interrupt, you can just unmute yourself, it's a small group'), nobody interrupted for 51 minutes. That is `nodding-room` at full strength, and it sits directly alongside a high audience_interaction_count - the two metrics are measuring opposite things (see catalog_feedback.scoring_problems).

STRUCTURE. Delayed self-introduction is intact but short: slide 1 is the bare claim, and the name lands ~1 min in, after the $6B NASDAQ IPO framing. The spine is four founder questions answered in sequence - 'does my company need DevRel?' / 'show me the ROI' / 'what does the team look like?' / 'how do I build the product for it?' - each a self-contained talklet. The first half runs the same three-beat oscillation THREE TIMES with identical slide vocabulary: broken funnel diagram (red background) -> single-line objection hot-take -> 'Doing it right' corrected funnel (green background). The marketing/product/headhunting parallel is the whole argumentative engine, and the Futurama-Fry meme ('Wait a second, is it a same slide?') is the punchline that makes the audience notice the repetition is deliberate. That red/green background coding is a genuine navigation device: the audience can tell broken-way from right-way from the wall color alone.

MEME AS ARGUMENT, PROPERLY. Nine meme slides, each carrying a compressed claim rather than decorating one: Aardman Pirate Captain + 'Well yes, but actually no' (concede-then-escalate), Billy Mays 'But wait, there is more!' (adds funnel 2), Futurama Fry (the funnels are the same slide), Admiral Ackbar (ROI is a trap), hard-to-swallow-pills ('some ROI is impossible to measure'), the cat-dog composite (@yealwir) for the three-traits-rarely-coexist advocate profile, Jerry Maguire 'Show me the money!', and the South Park Underpants Gnomes across two frames where Phase 2 is first '?' and then 'Sell order'. The Gnomes are the cleanest instance in the deck: the audience already knows Phase 2 is the missing link, so the reveal lands as their own conclusion.

VISUAL SYSTEM. Two fonts only - Bangers (88 uses, comic display, all-caps slanted) and Sniglet (58, rounded body), plus one stray Times New Roman. Every template slide is a tilted white panel with a heavy black border and hard drop shadow, sitting on a rotating halftone-dot field, with a circular AI-generated illustration inset ringed in black at lower right. Starburst callouts carry the three quote slides; two-panel green/red speech-bubble comics carry the objections ('YES, But: Let's do it! / Show me the ROI'; 'YES, But: our opensource is awesome! / no-one needs the commercial spin'). One slide deliberately breaks the template entirely: slide 4, a full-bleed clean redraw of Erin Meyer's Culture Map with a red ellipse around Israel/Russia - and a top-hat emoji dropped on it as his position marker. The top hat is a PLANT: its meaning only resolves ~25 minutes later when he explains he set his LinkedIn first name to a top-hat emoji to catch templated recruiter spam. Visual foreshadowing, never narrated as such.

SPEAKER NOTES: essentially absent. 66 notesSlides exist but only 5 carry text, all terse attribution cues ('The most weaponized quote in history Deming', 'Raymond Edwin Wolfinger'). This is an improvised delivery off a dense visual scaffold, not a scripted one.

EVIDENCE REGISTERS. All four Walk-Around registers are covered without being asked for: precision ($6B IPO, 11 years, ~$22k/yr team-lead spend, 'six figures a year', pie and radar charts), mechanism (three funnels, the ideate->create->deliver->collect->deliver cycle, the Exciter/Collab/Control ladder), human consequence ('R&D teams feel unappreciated', 'one of the most burnout professions', 'developer relations by definition are people who will hate you for trying to micromanage them', 'you will be hesitant to provide authentic feedback'), and implication ('developer relations is a social study', the long-horizon trust argument, the open-source-cannibalization trade-off). `golden-rule` is therefore absent - a fresh scoring of two entries no prior pass ever scanned.

LANGUAGE. Delivered entirely in English (auto-captions, `en`); no non-English quotes, so the English-first quote rule does not bite. Some transcript artifacts to be aware of when reusing quotes: the auto-captions render the speaker's own name as 'bar sadagurski' / 'Brook' / 'Baro', 'JFrog' as 'J frog'/'jrog', 'Shlomi Ben Haim' as 'schlom benim', and 'Gradle' as 'gradal'. Quotes below are cleaned only for those proper nouns.

BRIEF-VS-ARTIFACT: the launch brief's framing held up on every point I could test. The one thing worth flagging back is that the DB's existing `verbatim_examples` for this talk are from a DIFFERENT delivery - 'what the hell is this terrible quote, who came up with it and who I need to kill', 'the president's club... Bahamas', 'Twitter for whatever it lasts', 'dancing TikTok video', 'there are no losers when you do developer relations - talk to me and we'll make it happen' appear NOWHERE in this transcript. Every verbatim below is re-extracted from Dcmlrb8GXjw.

## Areas for Improvement (Dimension 14)

1. `nodding-room` (severity: warning, [CONTEXTUAL] - first scan of this entry). Fifty-one minutes of pure broadcast into a six-person Zoom room he had explicitly opened the floor in. Zero production moments: no guess, no hand, no number solicited, no recall prompt. Every callback is a restatement. The three-funnel structure is practically built for a Guess First beat - 'before I show you the headhunting funnel, what do you think it looks like?' would have cost eight seconds and made the Futurama punchline land as the room's own discovery instead of his.

2. `hiccup-words` (severity: warning, [RECURRING] - 45/191 corpus, trend increasing). 142 explicit um/uh markers in 8,497 transcribed words (~1.7%), plus 37 'like'. Dense enough to be audible.

3. `alienating-artifact` (severity: info, [RECURRING] - 6/189 corpus, trend decreasing). An all-American meme set (South Park, Jerry Maguire, Futurama, Billy Mays, Star Wars, Aardman) delivered to an international founders' cohort including two Japan-based attendees. He names the risk himself - 'I apologize for all the very American memes that I have here, speaking about cultural differences' - which is self-aware but is not a mitigation; he substitutes nothing.

4. No structured close (no matching antipattern ID; prose). Content ends on the open-source cannibalization caveat and cuts straight to a Q&A-plus-handles slide. No recap, no CTA, no emotional beat - the same gap Section 15 already tracks for this talk family ('Missing three-part close in short formats', 'Non-commercial polemic talks lack actionable close'). At 51 minutes this is no longer a compression excuse.

5. Underuse, not antipattern (prose). The shownotes slide is his single best conversion asset and it is front-loaded at slide 5, narrated once as 'the most important slide,' and never returned to as a closing destination - and it did not survive the PDF export, so the published artifact drops it entirely.

6. Pre-talk technical drag (prose). Nine and a half minutes of the 68-minute recording elapse before the first content line, including an audible-static mic swap; his camera then dies during the final Q&A answer. Neither is a rhetoric failure and he handles both with poise, but on a session recorded expressly for republication ('this is why I asked if this is recorded... I will upload it there') it is 14% of the artifact spent on setup.

## Adherence Assessment

Scores 27 (30 patterns, 3 antipatterns) against a global running average of 12.93 and a mode-(d) baseline of 16.67 across 6 talks, with 30 distinct patterns versus the mode's 19.3 average - a large upward revision from the DB's prior 10, driven almost entirely by evidence a PDF-only pass could not see: the pptx's four cumulative build sequences (progressive-reveal, gradual-consistency) that the exported PDF flattens into single frames, plus first-ever scoring of walk-around and golden-rule. Two Section 15 recurring antipatterns reappear: `hiccup-words` (45/191, trend increasing) at 142 um/uh in 8,497 words, and `alienating-artifact` (6/189, rare) via the all-American meme set fired at an international founders' cohort - which the speaker flags himself and then does not mitigate. The mode's own top antipattern `shortchanged` did NOT reappear; he finished his material with time to spare. The one genuine departure is `nodding-room`, scored here for the first time in the corpus and at full strength: a six-person Zoom room, an explicit standing invitation to interrupt, and 51 minutes without a single moment where anyone had to produce anything - which is backsliding on the same 'webinar format suppresses everything distinctive' theme Section 15 already tracks, not a deliberate mode choice.

## Structured Data

- **delivery_language:** en
- **co_presenter:** False
- **slide_count:** 50
- **talk_duration_estimate:** ~51 min talk proper (09:36-60:39) + ~8 min Q&A; 68:39 total recording including ~9.5 min of pre-talk setup
- **meme_count:** 9
- **image_only_slide_count:** 0
- **audience_interaction_count:** 10
- **opening_type:** bold_claim
- **closing_type:** open_question
- **narrative_arc_type:** problem_diagnosis_solution
- **slide_design_style:** comic_book
- **illustration_style:** comic_book_halftone_with_circular_ai_illustration_insets
- **illustration_coherence:** unified
- **talk_family:** Developer Relations for Startup Founders
- **mode:** d
- **pptx_slide_count:** 71
- **pdf_slide_count:** 50
- **profanity_count:** 2
- **meme_density_per_slide:** 0.18
- **slide_density_per_min:** 0.98
- **product_pitch_present:** True
- **product_pitch_hedged:** True
- **audience_production_moments:** 0
- **format:** remote_zoom_small_group_private_academy_session

### per_slide_visual

| slide_number | background_color_name | content_type | image_composition | has_speech_bubble | has_starburst | has_footer |
|---|---|---|---|---|---|---|
| 1 | full_bleed_ai_image | title | full_bleed_with_text | False | False | False |
| 2 | slate_grey_halftone | bio | image_right_text_left | False | False | True |
| 3 | slate_grey_halftone | bio | image_right_text_left | False | False | True |
| 4 | white_clean | data_chart | full_bleed | False | False | True |
| 5 | deep_teal_halftone | hot_take | inset_image | False | False | True |
| 6 | teal_halftone | hot_take | inset_image | False | False | True |
| 7 | salmon_pink_halftone | hot_take | inset_image | False | False | True |
| 8 | red_halftone | data_chart | none | False | False | True |
| 9 | orange_halftone | hot_take | inset_image | False | False | True |
| 10 | green_halftone | data_chart | none | False | False | True |
| 11 | full_bleed_meme | meme_with_text | meme_with_caption | False | False | True |
| 12 | full_bleed_meme | meme_with_text | meme_with_caption | False | False | True |
| 13 | red_halftone | data_chart | none | False | False | True |
| 14 | teal_halftone | hot_take | inset_image | False | False | True |
| 15 | green_halftone | data_chart | none | False | False | True |
| 16 | red_halftone | data_chart | none | False | False | True |
| 17 | full_bleed_meme | meme_with_text | meme_with_caption | False | False | True |
| 18 | salmon_pink_halftone | hot_take | inset_image | False | False | True |
| 19 | azure_blue_halftone | content_bullets | screenshot | False | False | True |
| 20 | green_halftone | data_chart | none | False | False | True |
| 21 | salmon_pink_halftone | hot_take | inset_image | False | False | True |
| 22 | green_halftone | hot_take | inset_image | False | False | True |
| 23 | azure_blue_halftone | data_chart | none | False | False | True |
| 24 | purple_halftone | section_divider | none | True | False | True |
| 25 | yellow_halftone | hot_take | inset_image | False | False | True |
| 26 | burnt_orange_halftone | quote | inset_image | False | True | True |
| 27 | purple_halftone | meme_with_text | meme_with_caption | False | False | True |
| 28 | cyan_halftone | data_chart | none | False | False | True |
| 29 | navy_halftone | hot_take | inset_image | False | False | True |
| 30 | salmon_red_halftone | quote | none | False | True | True |
| 31 | lime_green_halftone | quote | inset_image | False | True | True |
| 32 | orange_halftone | data_chart | none | False | False | True |
| 33 | purple_halftone | section_divider | none | False | False | True |
| 34 | grey_neutral | comparison_table | inset_image | False | False | True |
| 35 | full_bleed_ai_image | section_divider | full_bleed_with_text | False | False | True |
| 36 | orange_halftone | comparison_table | inset_image | False | False | True |
| 37 | red_halftone | hot_take | inset_image | False | False | True |
| 38 | orange_halftone | comparison_table | inset_image | False | False | True |
| 39 | light_cyan_halftone | meme_with_text | meme_with_caption | False | False | True |
| 40 | navy_halftone | comparison_table | inset_image | False | False | True |
| 41 | lime_green_halftone | comparison_table | inset_image | False | False | True |
| 42 | azure_blue_halftone | data_chart | none | False | False | True |
| 43 | orange_halftone | hot_take | inset_image | False | False | True |
| 44 | burnt_orange_halftone | quote | inset_image | False | True | True |
| 45 | full_bleed_meme | meme_with_text | meme_with_caption | False | False | True |
| 46 | grey_neutral | meme_with_text | full_bleed_with_text | False | False | True |
| 47 | grey_neutral | meme_with_text | full_bleed_with_text | False | False | True |
| 48 | green_halftone | data_chart | none | False | False | True |
| 49 | light_cyan_halftone | section_divider | none | True | False | True |
| 50 | purple_halftone | cta | none | True | False | True |

### Additional structured fields

```json
{
  "co_presenters": [],
  "image_source_distribution": {
    "ai_generated": 13,
    "meme": 9,
    "diagram": 17,
    "screenshot": 3,
    "photo_real": 3,
    "stock_photo": 0,
    "none": 5
  },
  "visual_continuity_devices": [
    "rotating_halftone_dot_background_palette",
    "tilted_white_comic_panel_with_heavy_black_border_and_drop_shadow",
    "circular_ai_illustration_inset_ringed_in_black_lower_right",
    "starburst_callout_reserved_for_attributed_quotes",
    "two_panel_green_red_speech_bubble_objection_device",
    "red_background_for_broken_process_green_for_corrected_process",
    "persistent_three_element_personal_footer"
  ],
  "opening_sequence": [
    "title_bold_claim_full_bleed_ai_art_developers_are_the_rainmakers",
    "bio_jfrog_chief_sticker_officer_business_card",
    "bio_devrel_advisor_at_large_with_client_roster_screenshot",
    "culture_map_self_positioning_diagram_with_top_hat_marker",
    "shownotes_url_slide_PRESENT_IN_DELIVERED_PPTX_ABSENT_FROM_EXPORTED_PDF",
    "first_argument_does_my_company_need_developer_relations"
  ],
  "closing_sequence": [
    "meme_south_park_gnomes_phase2_question_mark",
    "meme_south_park_gnomes_phase2_sell_order",
    "three_step_product_model_exciter_collab_control_chevrons",
    "objection_panel_yes_but_our_opensource_is_awesome",
    "qa_and_contact_speech_bubble_no_recap_no_cta"
  ],
  "color_coded_backgrounds": {
    "red_halftone": "slides 8, 13, 16 - the broken traditional process (marketing funnel, product guess-cycle, headhunting funnel); also 37 for the evangelist-vs-advocate hot take",
    "green_halftone": "slides 10, 15, 20, 48 - the DevRel-corrected process ('Doing it right' x3) and the three-step product model; green consistently means 'the right way'",
    "purple_halftone": "slides 24, 27, 33, 50 - objection panels, interludes, and the closing Q&A slide",
    "yellow_halftone": "slide 25 only - 'ROI is a trap', the talk's single warning-register slide",
    "grey_neutral": "slides 34, 46, 47 - the online-vs-in-person trade-off table and the Underpants Gnomes frames (unresolved / undecided register)",
    "salmon_pink_blue_teal_orange_navy_lime": "rotating with no fixed semantics; carries the single-line hot-take assertion slides",
    "white_clean": "slide 4 only - the Culture Map, the one slide that breaks the comic template entirely"
  },
  "background_color_sequence": [
    "full_bleed_ai_image",
    "slate_grey_halftone",
    "slate_grey_halftone",
    "white_clean",
    "deep_teal_halftone",
    "teal_halftone",
    "salmon_pink_halftone",
    "red_halftone",
    "orange_halftone",
    "green_halftone",
    "full_bleed_meme",
    "full_bleed_meme",
    "red_halftone",
    "teal_halftone",
    "green_halftone",
    "red_halftone",
    "full_bleed_meme",
    "salmon_pink_halftone",
    "azure_blue_halftone",
    "green_halftone",
    "salmon_pink_halftone",
    "green_halftone",
    "azure_blue_halftone",
    "purple_halftone",
    "yellow_halftone",
    "burnt_orange_halftone",
    "purple_halftone",
    "cyan_halftone",
    "navy_halftone",
    "salmon_red_halftone",
    "lime_green_halftone",
    "orange_halftone",
    "purple_halftone",
    "grey_neutral",
    "full_bleed_ai_image",
    "orange_halftone",
    "red_halftone",
    "orange_halftone",
    "light_cyan_halftone",
    "navy_halftone",
    "lime_green_halftone",
    "azure_blue_halftone",
    "orange_halftone",
    "burnt_orange_halftone",
    "full_bleed_meme",
    "grey_neutral",
    "grey_neutral",
    "green_halftone",
    "light_cyan_halftone",
    "purple_halftone"
  ],
  "typography_observations": {
    "title_font_description": "Bangers - heavy all-caps comic display face, slightly slanted, 88 runs across the deck; titles sit top-left inside the tilted white panel",
    "body_font_description": "Sniglet - rounded friendly sans, 58 runs, used for table cells, funnel labels and the bio lines; one stray Times New Roman run is the only third face in 71 slides",
    "bullet_character": "circle",
    "title_color_adapts_to_background": true
  },
  "footer_observations": {
    "element_count": 3,
    "separator_character": "none - the three elements are spaced across the bottom edge with no glyph between them",
    "footer_color_adapts_to_background": false,
    "watermark_present": false,
    "watermark_description": "No corporate or sponsor watermark. The footer is personal branding only: linkd.in/jbaruch (left), #DevRel (centre), @jbaruch (right), set in the Bangers comic face on every slide except slide 1. No conference hashtag anywhere - correct for a private founders-academy session, and the tell that distinguishes this deck from the DeveloperWeek CA 2024 near-twin. The only corporate logo in the deck is the JFrog frog inside the photographed business card on slide 2."
  },
  "shape_observations": {
    "speech_bubble_slides": [
      24,
      49,
      50
    ],
    "starburst_slides": [
      26,
      30,
      31,
      44
    ],
    "speech_bubble_description": "Rounded oval callouts with white fill, heavy black outline and a short tail. Used in matched green/red pairs on the two objection slides (24: 'Let's do it!' vs 'Show me the ROI'; 49: 'our opensource is awesome!' vs 'no-one needs the commercial spin'), and as a single large white bubble with an orange smiley on the Q&A close.",
    "starburst_description": "Irregular explosion/star shape, white fill with heavy black outline, black text inside. Reserved exclusively for attributed quotes - Deming (26), the Wolfinger misquote (30), the corrected version with 'not' struck through beside the speaker's own photo (31), and Adam Frankl's 'Magic should be free' (44)."
  }
}
```

## Verbatim Examples

### signature_phrases

- developers are the rainmakers
- developer relations exist... so if you think that you don't need developer relations, what you mean by that [is] I don't want to invest in developer relations
- everybody in the organization impact developer relations
- developers distrust traditional marketing
- doing it right
- and you know what, there is even more
- ROI is a trap
- the plural of anecdote is data
- we can measure what makes sense; for the rest of it we just have to have trust and vision
- content is content - when you reuse enough you can hit multiple channels with the same content
- you don't not manage a community, the community exist - you're actually a builder, not a manager
- magic should be free
- what excites the developers is not what excites you

### jokes

- what you see here is my actual business card from JFrog - Chief Sticker Officer - the right part of it with the bad frog is actually sticker so you can peel it off and put it somewhere
- I apologize for all the very American memes that I have here, speaking about cultural differences, but it's just too fun to avoid in any way
- I put the top hat as my first name... because automated messages will use templating to greet me as a first name to personalize it, and if I only see a top hat I actually know that there is no person behind it... so yeah, it looks like an amazing opportunity for me, but it will go directly to spam
- 'without data you are just another person with opinion' is a quote from Deming... and this is one of the most weaponized quotes in history to basically shut down any activity that you don't like
- how about the sales offsite that you are running - what is the ROI of this one? how do you measure that?
- spend our time answering questions on Stack Overflow, although that's probably is dead already
- I found this online, stole it for my presentation because we never like cared about copyright back in like 20 years ago... and I delivered a different talk with the same illustration in a Java conference and the guy in the first row said like, hey, I created this picture
- they're obviously much cheaper than [a] hired rockstar, and there is no con in being a cheaper resource
- I cannot think about a single team in the entire organization, maybe except of security, that needs less micromanagement than developer relations
- so to put it in a three tier diagram, because everything can be put in three-tier diagram
- if you do all three of them successfully, then whatever shitty platform we use will still be good enough
- [on being late] I just spoke with my wife and she was like, I was only 12 minutes late, and they [are] refusing

### transitions

- let's talk - let's encroach a little bit on Adam's territory and talk about marketing funnel
- so basically this is where you can ask, like, well, so it's actually just a marketing funnel implemented for developers? ... well yes, as you saw, but but actually it's much more than that
- and you know what, there is even more - let's talk about head hunting, how do you hire the best talent out there
- so how do we do it correctly? again, with developer relations
- so I'm sure by now you are 100% convinced on the importance of developer relations and you're like, yeah, let's do it - but then, show me the ROI
- another quote that I hate with [passion] is by the guy named Raymond Edwin Wolfinger
- the next question that I want us to discuss is where to invest
- the next question is, okay, now I want to build my developer relations team - what does it look like
- the last topic that I want to touch on, and this is something that you already discussed with Adam of course, is how do I build my product for better developer relations
- and this is where you ask, okay, if I give away the Exciter, how do I make the money

### audience_addresses

- I do have like a formal presentation, but let's make it a conversation
- feel free to have a conversation, ask questions, interrupt - you can do it in the end, you can do it in text, you can just unmute yourself; it's a small group so we won't be in a mess if you do it
- you know the drill, right - if you are developers or in contact with developers, you know how this marketing spam annoys people
- who doesn't have an ad blocker? everybody have an ad blocker. why? because you don't want to be marketed at through traditional marketing funnel
- the most important slide of this presentation is this - I prepared a special page for you [at] speaking.jbaru.ch
- I can guarantee you that if we were in the same room together we would end up on a completely different level of engagement and relationship after this talk
- Adam here can give his perspective, because he was in charge of developer relations - he had to answer to Shlomi and the board those exact questions
- with that we have time for questions

### opening_lines

- so this presentation is called developers are the rainmakers, and that's a quote from our mutual boss - me and Adam - from JFrog, Shlomi Ben Haim
- that was his sentence on the NASDAQ stage during JFrog's 6 billion IPO
- and what he meant by that is exactly what we're going to talk about today: developers and their interest made JFrog to what it is, and made this successful IPO happen

### closing_lines

- so when you do this open core, when you do this open source Exciter, you need to remember that there are some features that you actually need to sell, and those features should be really hard to be able to implement on your open source, because this is [where] your money is
- and with that, we have time for questions
- just to remind you, you can find me everything at [@]jbaruch - the slides and the video and all the links are [at] speaking.jbaru.ch

## Presentation Patterns Scoring

**Pattern score:** 27 (30 patterns − 3 antipatterns)

### Patterns Detected

| Pattern ID | Confidence | Evidence |
|---|---|---|
| `unifying-visual-theme` | strong | All 71 slides share one system: tilted white comic panel with heavy black border and drop shadow on a rotating halftone-dot field, circular AI-illustration inset ringed in black, two fonts total (Bangers 88 runs, Sniglet 58). |
| `defy-defaults` | strong | Nothing in the deck is a PowerPoint default - custom comic template, Bangers/Sniglet, tilted panels, starburst callouts, speech-bubble panels, halftone fields. |
| `exuberant-title-top` | strong | Every content slide carries a large Bangers headline top-left inside the white panel; the hot-take slides are nothing BUT that headline plus an illustration. |
| `analog-noise` | strong | Deliberate hand-drawn comic register throughout - halftone dot fields, hand-lettered display face, hand-tilted panels with rough drop shadows, irregular starburst shapes. |
| `meme-as-argument` | strong | 9 meme slides each landing a specific claim: Pirate Captain 'Well yes, but actually no' (concede-then-escalate), Billy Mays 'But wait there is more', Futurama Fry 'is it a same slide?' (the funnels are identical), Admiral Ackbar (ROI is a trap), hard-to-swallow-pills, cat-dog composite (three traits rarely coexist), Jerry Maguire, and Underpants Gnomes over two frames where Phase 2 flips from '?' to 'Sell order'. |
| `entertainment` | strong | Sustained humour density across 51 minutes - Chief Sticker Officer card, the top-hat LinkedIn spam trap, the stolen-image-creator-in-the-front-row story, 'everything can be put in three-tier diagram', 'Stack Overflow, although that's probably is dead already'. |
| `brain-breaks` | strong | The meme slides sit at every section seam, breaking the three funnel arguments and the ROI section rather than clustering; the room gets a laugh beat before each new argument opens. |
| `narrative-arc` | strong | Four founder questions answered in sequence (need it? / prove ROI / staff it / build product for it), each with its own problem-diagnosis-solution loop; the first half runs the same three-beat oscillation three times over parallel funnels. |
| `triad` | strong | Three funnels (marketing/product/headhunting), three lead sources (PPC / subject SEO / DevRel), three community-platform criteria (greeting, answers, encouraged engagement), and the Exciter/Collab/Control product ladder - which he narrates as 'because everything can be put in three-tier diagram'. |
| `inoculation` | strong | Every major objection is voiced and steel-manned in the same section as the claim: 'we're too small for developer relations', 'so it's actually just a marketing funnel?', 'show me the ROI', 'without data you're just another person with an opinion', 'the plural of anecdote is not data', 'our opensource is awesome, no-one needs the commercial spin'. Two get their own two-panel comic slide. |
| `know-your-audience` | strong | Every example is pitched at seed-stage developer-facing founders; he references the course's prior sessions ('this is something that you already discussed with Adam'), the host's JFrog marketing history, and the room's composition; the Culture Map opener is calibrated to the Japan-based attendees who had just been discussed. |
| `mentor` | strong | The founders are consistently the actors - 'you find a developer within your organization', 'it's worth thinking about what you want to achieve', 'you need to make sure that whatever excites the developers is what you give away for free'. He supplies frameworks and trade-offs, never positions himself as the hero of the outcome. |
| `progressive-reveal` | strong | Four cumulative build sequences in the delivered pptx, verified by XML row counts: 'Tough call' 5 frames (1->4 rows), 'Who's who' 9 frames (1->5 rows then a scrolling window), 'Hiring a rock star' 4 frames, 'raising a rock star' 5 frames. Each ends on a complete payoff table. Invisible in the PDF, which keeps only the final frames. |
| `gradual-consistency` | strong | Every build converges on a final state that is a complete, well-composed table page - the PDF export of those final frames reads as a clean document, which is the pattern's exact criterion. |
| `walk-around` | strong | All four registers covered unprompted: precision ($6B IPO, 11 years, ~$22k/yr below-radar team spend, six figures/yr enterprise, pie and radar charts), mechanism (three funnels, the ideate-create-deliver-collect cycle, the Exciter/Collab/Control ladder), human consequence ('R&D teams feel unappreciated', 'one of the most burnout professions', 'developer relations by definition are people who will hate you for trying micromanage them'), implication ('developer relations is a social study', the long-horizon trust argument, open-source cannibalization). |
| `master-story` | strong | The JFrog story is the spine and returns four times, each time mapped onto a new claim: the NASDAQ rainmakers quote (thesis), 'we did developer relations for 11 years nonstop and eventually it worked great... all the way until a very very successful exit' (the trust-over-ROI argument), 'with JFrog that was me for seven out of those 11 years, I was the only one doing that' (first-hire staffing), and 'our shared experience with Adam at JFrog was a lot about that' (DevRel serves marketing). |
| `talklet` | moderate | Four self-contained founder questions, each answerable and droppable independently; the Q&A answer on trend-shift is delivered as a fifth mini-talk with the same shape. |
| `sparkline` | moderate | Three of five elements: a 'what is' baseline (the traditional marketing funnel), a gap reveal ('developers distrust traditional marketing'), and an oscillating middle that swings between current reality and proposed future three times over parallel funnels. No concrete call-to-action and no new-bliss close - it ends on a caveat. |
| `the-big-why` | moderate | 'Does my company need developer relations?' is the framing question of the whole first act, given its own hot-take slide and answered with 'developer relations exist... if you are not investing in it, you're just doing it very poorly'. |
| `concrete-before-abstract` | moderate | The KubeCon attribution walk-through (talk -> 100 people -> one signs up -> or tells a colleague a month later who signs up at another company) is worked concretely before the abstract principle 'measure what makes sense, have trust and vision for everything else'. |
| `display-of-high-value` | moderate | Handles an audible-static mic swap at the open and a camera failure mid-Q&A without derailing ('it's a mess of technology that I have today'), and answers both audience questions with substantive expansion rather than deflection. Marked down from strong by frequent hedging fillers. |
| `anti-sell` | moderate | The advisory-services pitch is deflated at the exact moment it lands: 'since then I try to give back and talk about developer relations with startups - unofficially like now, or more officially as a developer relations advisor - that's a little bit outdated list'. He also criticises an unnamed former employer's unsellable product, and tells a self-deprecating story about stealing an image and being caught by its creator in the front row. |
| `delayed-self-introduction` | moderate | Slide 1 is the bare claim with no biographical data; the name arrives ~1 minute in, after the CEO quote and the $6B IPO framing, on slide 2. Delay is real but short. |
| `foreshadowing` | moderate | A top-hat emoji is planted on the slide-4 Culture Map as his own position marker with no explanation; its meaning only resolves ~25 minutes later when he explains he set his LinkedIn first name to a top hat to catch templated recruiter spam. Also 'well yes, but actually no' and 'but wait, there is more' set up the parallel-funnel structure before it is named. |
| `context-keeper` | moderate | Background colour is semantic, not decorative: red carries the broken traditional process (slides 8, 13, 16), green the DevRel-corrected twin (10, 15, 20, 48). Since the paired diagrams are otherwise near-identical, the wall colour alone tells the room which world it is in. |
| `intermezzi` | moderate | Full-bleed meme slides and the two purple objection panels sit at section boundaries as atmospheric pauses with a distinct palette break from the surrounding template slides. |
| `vacation-photos` | moderate | Nine full-bleed image slides with minimal text (title art, four memes, the cyberpunk DevRel-team divider, the two gnome frames, the Culture Map) where the speaker carries the entire verbal layer - but mixed throughout with table and diagram slides. |
| `star-moment` | moderate | Sound-bite sub-type: the misquote 'the plural of anecdote is not data' is shown intact on one starburst slide, then repeated on the next with 'not' struck through beside the speaker's own photograph - a constructed reversal that replaces the borrowed authority with his own. Muted by the absence of any audible room reaction to anchor it. |
| `live-on-tape` | moderate | The recording was deliberately engineered for republication - 'this is why I asked if this is recorded, so Adam will share the video with me and I will upload it there as well right after our session'. Slides and audio are captured, but the first minutes carry mic static and the presenter camera dies during the final answer. |
| `call-to-action` | weak | The only concrete, immediately-executable ask is the destination, delivered twice: 'I prepared a special page for you [at] speaking.jbaru.ch' at the open and 'the slides and the video and all the links are [at] speaking.jbaru.ch' at the close. No behavioural ask, no deadline, no next step for the founders themselves. |

### Antipatterns Detected

| Pattern ID | Confidence | Evidence |
|---|---|---|
| `nodding-room` | strong | Fifty-one minutes of teaching-shaped broadcast into a six-person Zoom room with zero audience-production moments. Every question is rhetorical and self-answered ('who doesn't have an ad blocker? everybody have an ad blocker'); every callback is a restatement ('as I mentioned', 'as you remember from our previous pyramids'). He explicitly opened the floor at the start ('feel free to interrupt, you can just unmute yourself, it's a small group') and nobody spoke until the Q&A. guess-first and retrieval-beat both score absent. |
| `hiccup-words` | strong | 142 explicit um/uh markers across an 8,497-word auto-caption transcript (~1.7%), plus 37 'like'. Dense enough to be audible; clusters heaviest in the DevRel-team-roles section. |
| `alienating-artifact` | moderate | An entirely American meme set (South Park, Jerry Maguire, Futurama, Billy Mays, Star Wars, Aardman) delivered to an international founders' cohort including two Japan-based attendees whose cultural distance he had just spent four minutes charting on the Culture Map. He names the risk himself - 'I apologize for all the very American memes that I have here, speaking about cultural differences' - and substitutes nothing. |

## Catalog Feedback

### unmatched_observations

```json
[
  {
    "observation": "Background colour carries argument, not just identity: red halftone is reserved for the broken traditional process (marketing funnel, product guess-cycle, headhunting funnel) and green for its DevRel-corrected twin ('Doing it right' x3, plus the closing product model). The paired diagrams are otherwise near-identical, so the wall colour is the only thing telling the room which world it is looking at - and that is what makes the Futurama-Fry 'wait a second, is it a same slide?' punchline land.",
    "why_no_pattern_fits": "context-keeper wants a visible progress indicator or navigation cue and explicitly scores 'no way to gauge position' as absent - a semantic colour axis is neither. unifying-visual-theme covers consistency of look but its whole point is that the theme is not carrying meaning. cave-painting is about a single recurring image, not a two-value colour code. breadcrumbs requires an agenda. I scored it under context-keeper for lack of anywhere better, which overstates that pattern and understates this device.",
    "proposed_name": "semantic-palette"
  },
  {
    "observation": "Objections arrive as a two-panel comic with matched green and red speech bubbles occupying half the frame each - 'YES, / Let's do it!' beside 'BUT / Show me the ROI', and later 'our opensource is awesome!' beside 'no-one needs the commercial spin'. The counter-position gets equal visual weight to the speaker's position before he answers it.",
    "why_no_pattern_fits": "inoculation is defined entirely at the transcript level (transition language, steel-manning, same-section response) and its detection heuristics never mention slide construction. This is a reusable slide grammar FOR inoculation, and scoring it only as inoculation loses the fact that the deck has a dedicated template for it that recurs.",
    "proposed_name": "objection-panel"
  },
  {
    "observation": "The talk's single most-narrated slide - 'the most important slide of this presentation is this, I prepared a special page for you' - is the shownotes destination, and it sits at position 5 of 71, not at the end. It is introduced before the argument starts and never returned to as a close.",
    "why_no_pattern_fits": "coda requires reference material 'at end of deck' and scores anything else as absent, so a front-loaded destination page scores zero on a talk that is built around one. spaced-followup is observable: false / post-event. second-look assumes the destination exists to close a curiosity gap opened by the slides, which is not what this is doing.",
    "proposed_name": "front-loaded-destination"
  },
  {
    "observation": "A moderator/host who is not a co-presenter shapes the talk materially: he introduces the speaker, is named as the audience's prior teacher ('this is something that you already discussed with Adam'), is offered the floor mid-argument for corroboration ('Adam here can give his perspective, he had to answer to Shlomi and the board'), and closes by explicitly framing where he and the speaker disagree.",
    "why_no_pattern_fits": "Confirms the known gap: the catalog has no co-presentation or host vocabulary at all, and dual-headed-monster is refuted for this shape (this session had no simultaneous live audience - it is all-remote). greek-chorus is closest but describes planted audience support, not a host with standing authority over the room. co_presenter is correctly false here, which erases the host from the record entirely.",
    "proposed_name": "host-in-the-room"
  }
]
```

### tensions

```json
[
  {
    "pattern_ids": [
      "know-your-audience",
      "meme-as-argument"
    ],
    "nature": "The meme layer is the deck's primary argumentative compression device and it is culturally monolingual. Following meme-as-argument well - workhorse memes whose meaning is settled, never chased novelty - is exactly what makes them settled for ONE culture, and this room was explicitly not that culture.",
    "evidence": "He spends roughly four minutes on the Erin Meyer Culture Map establishing that the room spans Japan to Israel, then immediately says 'I apologize for all the very American memes that I have here, speaking about cultural differences, but it's just too fun to avoid in any way'. The pattern he executes best is the one his own audience analysis flagged as the risk, and he chose the pattern."
  },
  {
    "pattern_ids": [
      "anti-sell",
      "display-of-high-value"
    ],
    "nature": "The deflation that makes the advisory pitch land as give-back is the same move that reads as hedging in the credibility register. He cannot both wave off the client roster and project it as authority.",
    "evidence": "'I try to give back and talk about developer relations with startups - unofficially like now, or more officially as a developer relations advisor - that's a little bit outdated list, there are a couple of more on this list by now.' The scarcity beat and the dismissal are in the same breath."
  }
]
```

### definition_problems

```json
[
  {
    "pattern_id": "nodding-room",
    "problem": "ambiguous",
    "detail": "The scoring criteria hinge on 'a teaching-shaped talk with zero audience-production moments across its full length', but the file never says whether an embedded Q&A counts as a production moment. This talk had two substantive audience questions at minute 60 after 51 minutes of pure broadcast. Read one way the antipattern is absent (the audience produced something); read the other it is strong (nothing was demanded during the talk). I scored it strong because the Q&A was post-content, but the file gives me nothing to defend that with."
  },
  {
    "pattern_id": "analog-noise",
    "problem": "unfalsifiable",
    "detail": "The file was re-grounded on the isolation effect, which is by definition about ONE element standing out from its surroundings - but the scoring criteria reward 'deliberate, consistent use of hand-drawn or sketch-style visual elements that create a cohesive aesthetic', i.e. deck-wide uniformity, which is the opposite of isolation. This deck is 71 slides of uniform comic register; nothing is isolated from anything. I scored it strong on the written criterion while believing the stated mechanism does not apply."
  },
  {
    "pattern_id": "second-look",
    "problem": "undetectable",
    "detail": "The entire pattern is defined against 'the back row' and 'room-legible' scale. This was an all-remote Zoom session where every attendee saw the shared screen at their own monitor resolution and could stop, zoom, or screenshot at will. There is no back row, so there is no legibility floor to measure the reward layer against. Three slides here (the Culture Map's country labels, the redacted LinkedIn recruiter screenshot, the advisory-client roster) are exactly the shape the pattern describes, with a real destination, and I could not score them either way. The same objection voids _anti_ant-fonts for every remote delivery in the corpus."
  },
  {
    "pattern_id": "coda",
    "problem": "miscategorised",
    "detail": "Detection signals are all positional - 'reference slides at end', 'bibliography or resource list' - and 'Absent (0 pts)' explicitly covers 'references scattered inline'. This speaker's whole resource strategy is a single external shownotes URL introduced at slide 5, reinforced by a footer on all 71 slides, and repeated verbally at the close. That is a stronger resource mechanism than any end-of-deck bibliography and it scores zero. The pattern is defined by slide position when it should be defined by whether a durable destination exists."
  },
  {
    "pattern_id": "golden-rule",
    "problem": "overlapping",
    "detail": "golden-rule and walk-around are declared inverse_of each other and their scoring criteria are near-verbatim negations, so scoring one determines the other and the second scan produces no information. On this talk I established all four registers were covered once, and the golden-rule pass was purely mechanical. Two catalog entries are spending two scoring slots on one measurement."
  }
]
```

### scoring_problems

```json
[
  {
    "issue": "The vault's audience_interaction_count and the nodding-room antipattern measure opposite things, and this talk maxes out both.",
    "detail": "Ten discrete direct-address, rhetorical-question and Q&A moves gives a high interaction count, which reads as an engaged talk. Zero moments where anyone had to produce an answer gives nodding-room at full strength, which reads as a broadcast. Both are true. Whatever rebuilds mode (d) around 'audience posture' will get the wrong answer from audience_interaction_count alone - the count measures how often the speaker faced the room, not whether the room ever had to do anything. These need to be two fields."
  },
  {
    "issue": "count(patterns) - count(antipatterns) rewards deck length and artifact completeness, not rhetorical quality.",
    "detail": "This talk scored 10 on a PDF-only pass and 27 on a pptx+PDF pass. Almost nothing about the delivery changed between those two numbers; what changed is that the pptx exposed four progressive-reveal build sequences the PDF had flattened. A 50-minute deck-heavy talk also has more slots to score design patterns in (unifying-visual-theme, defy-defaults, exuberant-title-top, analog-noise, gradual-consistency, vacation-photos, intermezzi are seven points available to any illustrated deck and unavailable to a terminal-export talk) before a single word is spoken. Comparing this 27 to a lightning talk's score compares deck production budgets."
  },
  {
    "issue": "Antipattern files disagree about scoring polarity, so an antipattern's score cannot be read without opening the file.",
    "detail": "_anti_nodding-room labels its top band 'Strong signal (2 pts - antipattern present)'. _anti_flyover, _anti_dual-headed-monster, _anti_hiccup-words, _anti_cookie-cutter, _anti_photomaniac and _anti_floodmarks all use 'Strong signal (2 pts)' to describe the GOOD behaviour and 'Absent (0 pts)' to describe the antipattern being present - the exact inverse. I hit this on four separate entries while scoring this talk and had to read each file's prose to work out which direction it ran. Any aggregation over antipattern points across the corpus is currently summing two opposite scales."
  },
  {
    "issue": "Patterns that are inapplicable to the format score identically to patterns the speaker skipped.",
    "detail": "soft-transitions scores absent here because the pptx contains zero <p:transition> elements - but the builds are implemented as separate slides rather than animations, which is a deliberate and arguably better choice, and it is also the choice that makes the deck survive PDF export. live-demo, lipsync, crawling-code, traveling-highlights and emergence are all absent because this is a business-strategy talk with no code in it. Nine or ten catalog entries were never available to this talk, and 'absent' records the same value for 'chose not to' and 'could not'."
  }
]
```

### confusable_pairs

```json
[
  {
    "pattern_ids": [
      "brain-breaks",
      "intermezzi",
      "soft-transitions"
    ],
    "detail": "The nine meme slides sit at section seams, break cognitive load, mark thematic shifts, and change the palette - which satisfies all three definitions simultaneously. brain-breaks says memes used decoratively; meme-as-argument says memes used argumentatively; intermezzi says atmospheric section markers. These memes are all three at once and I had to score them three times, inflating the count by two."
  },
  {
    "pattern_ids": [
      "progressive-reveal",
      "gradual-consistency",
      "composite-animation"
    ],
    "detail": "The four build sequences are cumulative annotation across 4-9 slides (progressive-reveal), converge on print-complete final pages (gradual-consistency), and eight slides also carry animation timing XML (composite-animation). The three files describe the same artifact from three angles with no stated precedence, so a build-heavy deck automatically earns two or three points for one technique."
  },
  {
    "pattern_ids": [
      "anti-sell",
      "delayed-self-introduction"
    ],
    "detail": "Both fire on the same 40 seconds of transcript - the bio arrives late AND arrives deflated - and anti-sell's own combinatorics section says the two pair naturally, with the anti-sell living inside the delayed bio. On a talk where the bio is one moment, that is one observation scored twice."
  },
  {
    "pattern_ids": [
      "second-look",
      "ant-fonts"
    ],
    "detail": "The Culture Map's country labels, the redacted LinkedIn recruiter screenshot and the advisory-client roster are all sub-legible detail on slides with a room-legible point and a real destination. second-look's own distinguishing test - 'did the audience need to read it?' - returns no, which should make it second-look; but the deck has no deliberate reward layer, which should make it neither. On a remote delivery where the viewer controls zoom, I could not separate them and scored neither."
  }
]
```
