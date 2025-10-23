## 🧭 Developer Roadmap

### 🎯 Phase 1 — Core Prototype (MVP)
**Goal:** Make the core gameplay loop fun and tactile before adding content.

- [ ] Implement basic physics for bills (RigidBody2D + Area2D for stacking)
- [ ] Add player hand interaction (drag, drop, flick)
- [ ] Spawn bills from chute at timed intervals
- [ ] Add delivery box detection and scoring logic
- [ ] Simple lose condition (table overflow)
- [ ] Placeholder art & sound
- [ ] Basic UI (score, timer, restart)

**Success criteria:**  
It’s already satisfying to pick up, clean, and stack money — even without polish.

---

### 🧹 Phase 2 — Progression & Upgrades
**Goal:** Add incentives and player progression to sustain gameplay.

- [ ] Implement currency/condition system (dirty, wet, counterfeit)
- [ ] Add “shop” or upgrade screen
- [ ] Implement purchasable tools:
  - [ ] Iron / straightener
  - [ ] Dryer / blower
  - [ ] Automatic sorter
- [ ] Introduce timed levels or endless mode
- [ ] Add visual and sound polish to make handling cash feel real

**Success criteria:**  
Players feel the tension of increasing pace but get rewarded by automation.

---

### 💼 Phase 3 — Story & Atmosphere
**Goal:** Add character and humor through light narrative flavor.

- [ ] Add incoming messages / notes revealing the criminal plot
- [ ] Add subtle background elements (shadows, sounds, suspicious deliveries)
- [ ] Introduce small cutscenes or text pop-ups between levels
- [ ] Background ambiance (office hum, muffled conversation)
- [ ] UI / branding that matches the “money laundering” satire tone

**Success criteria:**  
Game has a personality — not just a mechanic.

---

### 💸 Phase 4 — Polish & Replayability
**Goal:** Make the game visually and mechanically satisfying to replay.

- [ ] Replace placeholder art with pixel or stylized art
- [ ] Add juicy animations (bill flutter, hand grip, machine movement)
- [ ] Refine audio feedback (bill rustle, machinery hum, UI clicks)
- [ ] Implement random events (coffee spill, draft, counterfeit inspection)
- [ ] Add leaderboard / high-score system
- [ ] Add sandbox or zen mode for relaxed play

**Success criteria:**  
Players replay for the satisfying feel, not just to beat their score.

---

### 🌍 Phase 5 — Optional / Stretch Goals
**Goal:** Explore advanced mechanics and community features.

- [ ] Co-op or versus mode (split table chaos)
- [ ] Mod support (custom currencies, tools)
- [ ] Procedural table layouts
- [ ] Steam/itch.io release
- [ ] Mobile version or tablet port
- [ ] Speedrun / challenge mode

---

### 🔧 Dev Notes
- Focus on **feel first** — polish physics, interaction, and feedback before expanding.
- Keep **performance in mind** — use object pooling for bills, limit active physics bodies.
- Log fun bugs — chaotic money physics often create memorable moments worth keeping.

---

*“If you can’t clean up the mess, at least make it profitable.”*