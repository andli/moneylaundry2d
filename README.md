# Money Laundry 2D

## Overview

**Money Laundry 2D** is a cozy chaos physics-based sorting and cleaning game inspired by *Cash Cleaner Simulator*, but focused on tight, tactile gameplay within a single, chaotic workspace.

You play as a humble "cash maintenance" worker hired by a bank — until you start noticing that your employers may not be quite what they seem.

## Story

You’re hired by a reputable bank to help with “cash maintenance.”  
Your job? Clean, sort, and package money for redistribution.

But as the days go on, strange messages, shady deliveries, and oddly specific instructions start showing up. Slowly, it dawns on you: you’re not working for a bank at all — you’re part of a *money-laundering operation*.  
Luckily, you’ve gotten pretty good at it.

The entire game takes place in a single room — a cluttered table, a cash chute, and an ever-growing pile of questionable money.

## Gameplay

Bills of various currencies and conditions drop at semi-regular intervals from a chute onto your worktable.

Your task:
- Sort, straighten, clean, and organize the cash.
- Deliver neatly packaged, well-sorted bundles to the **delivery box** for maximum reward.
- Discard damaged or suspicious bills before they ruin your score.

Delivering sorted, high-quality bills earns bonuses; sloppy bundles or counterfeit notes cause penalties.  
If you fall behind and your table overflows, you lose.

If cash falls off the table, it will end up in a special container that requires you to "sweep the floor" to get it up again, and bills may become dirty.

### Progression

As you level up, you can spend your hard-earned cash to buy **tools and automation**:
- Stackers, counters, sorters, irons, and dryers.  
- A leaf blower to dry or move bills into machines.  
- Upgrades that make handling the growing chaos easier.

### Random Events

Stay alert for occasional curveballs:
- A gust from an open window.  
- Spilled coffee ruining a batch.  
- Power flickers, counterfeit inspections, or visiting supervisors.

## Physics and Feel

All bills are fully physics-based — they can be pushed, grabbed, stacked, or blown around.  
The joy of the game comes from creating *order out of chaos* and the tactile satisfaction of moving piles of cash around.

Animations and sound are critical:
- Picking up cash should *feel* good.
- The rustle of paper money should be soft, rhythmic, and relaxing.

## Technical Details

- **Engine:** Godot 4.5  
- **Language:** GDScript  
- **Platform:** PC (initially)  

## Cash Attributes

Each bill can have multiple **properties** and **conditions**:

**Properties**
- Currency (USD, EUR, etc.)
- Denomination
- Counterfeit status
- Damage level

**Conditions**
- Dirty
- Stained
- Wet
- Folded / crumpled

## Development Goals

- Create a satisfying, replayable gameplay loop that feels both chaotic and methodical.
- Polish interactions and feedback: make every drag, drop, and rustle feel right.
- Build from small scope up: one table, one room, endless mess.
