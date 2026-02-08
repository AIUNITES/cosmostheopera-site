# Session Transcript: VSV c06 - Extended Vocal Resonance Notation Systems
**Date:** February 8, 2026
**Site:** COSMOS the OPERA (cosmostheopera-site)
**Session:** 21

---

## User Request
> "On our cosmos the opera site, are there some more systems of vocal resonance notation we can add"

## Claude Analysis

Reviewed the existing `notation.html` which had 7 sections covering:
1. Primary Resonance Areas ([C], [L], [P], [O], [N], [H])
2. Additional Muscular Indicators ([T], [Tg], [SP], [M], [Oc], [E], [Ey], [B])
3. Degree of Resonance (numerical 1-5, symbol +/++/+++)
4. Combined Notation Examples
5. Example Score Notation
6. VRN for Different Genres (Rock, Jazz, Opera, Folk, Broadway)
7. Version History (VSV a04, c04, s05)

Proposed 8 new notation systems to expand the VRN:

1. **Breath & Airflow** — Diaphragm, intercostal, pelvic floor, appoggio, subglottic pressure, airflow rate
2. **Vocal Fold Behavior & Phonation Type** — Fold mass, phonation quality, onset type
3. **Vowel Modification & Formant Tracking** — Formant tuning, copertura, aggiustamento
4. **Register Transition Markers** — Passaggio zones, blending, shift points, mechanism
5. **Vibrato & Oscillation** — Rate, width, messa di voce, tremolo
6. **Jaw & Embouchure** — Jaw position, lip shaping, zygomatic lift
7. **Sinus Sub-Regions & Squillo** — Frontal/maxillary/sphenoid sinus, singer's formant
8. **Emotional & Timbral Color** — Chiaroscuro, sob, cry, metallic, velvety, angelic

## User Response
> "yes vsv c06, i'm using the c for the series of character notation and s for the symbol series"

Confirmed the versioning convention:
- **a** series = Core/foundational
- **c** series = Character/extended systems
- **s** series = Symbol/Unicode notation

## Implementation

### Files Modified
- **notation.html** — Added sections 7-14 (8 new systems), renumbered sections 15-16, updated hero subtitle, added VSV c06 to version history table

### New Sections Added

#### Section 7: Breath & Airflow Notation
| Symbol | Name | Description |
|--------|------|-------------|
| [D] | Diaphragm | Diaphragmatic engagement and lowering |
| [IC] | Intercostal | Intercostal muscle engagement — rib cage expansion |
| [PF] | Pelvic Floor | Deep low-body connection for sustained pressure |
| [Ap] | Appoggio | Coordinated Italian breath support system |
| Sp1–Sp5 | Subglottic Pressure | Pressure beneath vocal folds (1=whisper, 5=fortissimo) |
| Af→ | Airflow Steady | Consistent, even airflow rate |
| Af↑ | Airflow Increasing | Accelerating airflow — crescendo support |
| Af↓ | Airflow Decreasing | Decelerating airflow — diminuendo |

#### Section 8: Vocal Fold Behavior & Phonation Type

**Fold Mass & Configuration:**
| Symbol | Name | Description |
|--------|------|-------------|
| [Th] | Thick Fold | Full fold mass vibrating — chest-dominant (M1) |
| [Tn] | Thin Fold | Thinned fold edges — head-dominant (M2) |
| [Zp] | Zip | Partial fold closure — posterior zipped |

**Phonation Quality:**
| Symbol | Name | Description |
|--------|------|-------------|
| [Prs] | Pressed | High medial compression — tight, intense |
| [Fl] | Flow | Balanced airflow-to-closure — ideal phonation |
| [Br] | Breathy | Incomplete fold closure — soft, intimate |

**Onset Type:**
| Symbol | Name | Description |
|--------|------|-------------|
| [Gl] | Glottal Onset | Hard attack — sharp, percussive start |
| [As] | Aspirate Onset | Air before closure — breathy beginning |
| [Co] | Coordinated Onset | Simultaneous — clean, balanced, ideal |

#### Section 9: Vowel Modification & Formant Tracking
| Symbol | Name | Description |
|--------|------|-------------|
| [F1↑] | First Formant Raised | Open jaw/lower tongue — fuller low-mid pitches |
| [F1↓] | First Formant Lowered | Close jaw/raise tongue — softer, covered |
| [F2↑] | Second Formant Raised | Forward tongue, spread lips — brighter |
| [F2↓] | Second Formant Lowered | Retracted tongue, rounded lips — darker |
| [Vow: X→Y] | Vowel Modification | Modify vowel X toward Y (e.g., a→ɔ) |
| [Cov] | Copertura (Cover) | Covering technique at passaggio |
| [Ag] | Aggiustamento | Gradual vowel adjustment across ascending phrase |

#### Section 10: Register Transition Markers
| Symbol | Name | Description |
|--------|------|-------------|
| [Pz1] | Primo Passaggio | First passaggio — chest to middle |
| [Pz2] | Secondo Passaggio | Second passaggio — middle to head |
| [Bl] | Blending Zone | Seamless register mix |
| [Sh] | Shift Point | Distinct register break |
| [Mv: X→Y] | Register Movement | Direction (e.g., C→H = chest to head) |
| [Vce: M1] | Mechanism 1 | Heavy mechanism / modal voice |
| [Vce: M2] | Mechanism 2 | Light mechanism / loft voice |

#### Section 11: Vibrato & Oscillation Notation
| Symbol | Name | Description |
|--------|------|-------------|
| [Vib] | Vibrato | Standard natural vibrato |
| [Str] | Straight Tone | No vibrato — still, focused |
| Vib.r4–r7 | Vibrato Rate | Oscillations per second (4=slow, 7=fast) |
| Vib.w+ | Wide Vibrato | Broader pitch oscillation |
| Vib.w- | Narrow Vibrato | Tighter pitch oscillation |
| [Mes] | Messa di Voce | Swell pp → ff → pp on single note |
| [Trm] | Tremolo | Rapid wide oscillation — agitation, fear |

#### Section 12: Jaw & Embouchure
| Symbol | Name | Description |
|--------|------|-------------|
| [Jw↓] | Jaw Dropped | Lowered jaw — more oral space |
| [Jw→] | Jaw Forward | Protruded jaw — pharyngeal change |
| [Jw~] | Jaw Relaxed | Released, neutral jaw |
| [Lp] | Lip Rounding | Standard rounding — darkens tone |
| [Lp+] | Lip Protrusion | Exaggerated forward extension |
| [Lp→] | Lip Spread | Lateral stretch — brightens tone |
| [Zy] | Zygomatic Lift | Cheekbone raise ("inner smile") — mask resonance |

#### Section 13: Sinus Sub-Region & Squillo
| Symbol | Name | Description |
|--------|------|-------------|
| [Sf] | Frontal Sinus | Forehead vibration — most brilliant resonance |
| [Sm] | Maxillary Sinus | Cheekbone vibration — core "mask" resonance |
| [Ss] | Sphenoid Sinus | Deep resonance — "cathedral" quality |
| [Sq] | Squillo | Singer's formant (~2800–3200 Hz) |
| Sq+ | Enhanced Squillo | Maximum projection |
| Sq- | Reduced Squillo | Softened ring — intimate |

#### Section 14: Emotional & Timbral Color Qualifiers
| Symbol | Name | Description |
|--------|------|-------------|
| [Ch] | Chiaroscuro | Balanced light/dark — ideal operatic tone |
| [Sc] | Scuro (Dark) | Covered, rounded, warm, introspective |
| [Ch+] | Chiaro (Bright) | Forward, brilliant, ringing, extroverted |
| [Sob] | Sob Quality | Lowered larynx — mournful, grief, prayer |
| [Cr] | Cry Quality | Tilted thyroid — vulnerable, pleading, raw |
| [Met] | Metallic Edge | Narrowed aryepiglottic — cutting, steely power |
| [Vl] | Velvety / Warm | Relaxed pharynx — smooth, comforting |
| [Ang] | Angelic / Ethereal | High head + straight tone — transcendent |

### Combined Example (Full VSV c06)
```
// Observer sees the cosmos for the first time

[Br, Str, Vl, Sp1, Af→] "do you see"
// Breathy onset, straight tone, velvety, minimal pressure, steady air

[Co, Fl, Vib, Cr, Pz1, Mv: C→H, D++, Af↑] "what i see is the light"
// Coordinated onset, flow phonation, vibrato enters, cry quality, crossing primo passaggio

[H+++, Sq+, Mes, Ch, Tn, F2↓, Cov, Zy, Ap, D+++, Sp4] "i see the universe"
// Full head, squillo blazing, messa di voce, chiaroscuro, thin fold, covered vowel,
// zygomatic lift, full appoggio, maximum diaphragm, high subglottic pressure
```

### Version History Updated
| Version | Focus | Key Additions |
|---------|-------|---------------|
| VSV a04 | Core System | Primary resonance areas, basic indicators |
| VSV c04 | Characters/Genres | Ventricular Folds, Falsetto, Whistle Register |
| VSV s05 | Symbols | Unicode symbols for resonator direction |
| **VSV c06** | **Extended Character Systems** | **Breath & Airflow, Vocal Fold Behavior, Vowel Modification, Register Transitions, Vibrato, Jaw & Embouchure, Sinus & Squillo, Timbral Color** |

### Stats
- **New symbols added:** ~55
- **Total VRN symbols:** ~75
- **File size:** ~45KB (from ~20KB)
- **Sections:** 16 (from 7 + conclusion)

### Progress Log
Updated `PROGRESS_LOG.md` with Session 21 entry.

---

*Transcript saved: February 8, 2026*
*COSMOS the OPERA © 2002-2026 Tom. All Rights Reserved.*
