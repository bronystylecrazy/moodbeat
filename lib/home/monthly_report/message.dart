import 'dart:math';

final Map<String, List<String>> cheerUpMessages = {
  "joy": [
    "This month has been filled with laughter and light 🌞. You've let yourself enjoy the little things, and that's beautiful. Whether it was a small win, a kind word, or just a peaceful moment, you welcomed joy into your life. ✨ Keep holding onto that sparkle. Joy doesn't have to be loud—it can live in quiet, everyday moments too. Let this be a reminder that happiness is not a destination, but a practice 🌼. Keep choosing it, even when the world gets heavy. You deserve every bit of it 💛.",
    "You embraced joy this month in such a genuine way 🌟. Your heart felt light, and your presence lifted others. Even when things weren't perfect, you found reasons to smile and kept going 🌈. That kind of resilience deserves celebration. Keep watering the parts of your life that make you feel alive. There's beauty in how you've allowed yourself to feel happiness again. Don't forget—you're allowed to enjoy good things without guilt. Let this joy carry you forward into brighter days 🎉.",
    "Joy wrapped itself around your days like sunlight through a window 🌞. You didn't chase happiness—it grew from within. That's powerful. The way you let the moment breathe and brought warmth to those around you is truly inspiring. 🎈 Keep nurturing the joy you've found. Whether it's in nature, friendships, or simply a quiet cup of tea 🍵—you've shown that contentment is possible. This joy is yours to keep. Let it bloom in new places next month too 💫.",
    "The happiness you felt this month wasn't just a mood—it was a reflection of your mindset 🎊. You've been more present, more grateful, and more aware of the good. That shift matters 💖. Every laugh, every peaceful moment, shows you've built space for joy. Keep choosing it, especially when it feels out of reach. You're learning how to create happiness from the inside out 🌼. That's your superpower 🌟.",
    "Your energy this month has been radiant 🌞. Even in the ordinary, you found something to be thankful for. Joy doesn't always shout—it often whispers in stillness. You heard it. 💛 You've proven that happiness doesn't have to be complicated. Sometimes, it's just about noticing what's already good. Keep noticing. Keep celebrating. Let this feeling be the beginning of something lasting ✨."
  ],
  "anger": [
    "This month tested you, and your anger was a natural response 🔥. You're human—feeling strongly means you care deeply. You didn't suppress it, and that's growth. Anger can teach us where our boundaries are 🛑. You've learned something about yourself through it. Let this be a turning point: not to dwell in frustration, but to act with purpose. 💪 You're not out of control—you're aware. Use that awareness to build peace, not just for others, but for you too.",
    "Anger isn't a flaw 💥—it's a compass pointing to what matters. You've felt overwhelmed at times, and that's okay. But you've also begun to understand the source of your emotion. That clarity is powerful 🔎. Don't fear your fire—it's part of your strength. You're becoming more honest with yourself, more bold in standing up for what's right 🛡️. Keep channeling that energy into something meaningful.",
    "You've carried heavy emotions lately, and anger has flared up 🌪️. But instead of letting it consume you, you paused and reflected. That takes wisdom. You're no longer reacting out of habit—you're choosing how to respond 💫. That shift is proof of growth. Let your anger become fuel for change, not conflict. You're learning to protect your peace 🧘 and speak your truth.",
    "This month has shown you the fire within 🔥. It burned because something needed your attention. You didn't avoid it. That's courage. You've faced what wasn't working and set new boundaries. Be proud of that. 🛑 It's a powerful step. Anger can be a teacher, and you're listening. Let your next steps come from clarity, not just emotion. You're capable of turning that heat into something transformative.",
    "You felt triggered this month 💢, and that's valid. But you've grown—you didn't let anger define your actions. You breathed. You took space. You thought things through. That's emotional maturity 🧠. Let this be a reminder: you're allowed to feel, but you're also powerful enough to choose what comes next. Trust yourself 🕊️. You're building emotional strength every day."
  ],
  "surprise": [
    "This month brought unexpected turns 🌪️, and you handled them with grace. Surprise can be unsettling, but it also brings wonder and growth. You stayed open to possibilities—even when things didn't go as planned. 🌠 Let this remind you that life doesn't always follow a script, and sometimes the best things are unscripted. You've adapted beautifully. Keep leaning into the unknown. There's magic in spontaneity, and you're ready for more ✨.",
    "Surprises stirred your world this month, and you let them guide you 🌈. Whether it was a new opportunity, an emotional shift, or a small realization, you embraced change with curiosity 🧭. That openness shows resilience. You didn't resist—you explored. Keep that sense of wonder. It will continue to lead you to unexpected joy 🎁.",
    "You weren't expecting what came your way this month—but you showed up anyway 🦋. That takes strength. Surprises challenged you, but also reminded you that you're flexible and brave. Life threw curveballs 🎯, and you adapted with more courage than you think. Embrace the beautiful unpredictability of growth 🌱.",
    "Things didn't go as expected, and yet you made it through 🌤️. Sometimes life surprises us to shake us awake, to help us see new paths. This month, you saw them—and stepped forward. You didn't freeze—you flowed 🌊. Let that spontaneity empower you. You're more adaptable than you give yourself credit for 💫.",
    "Surprise didn't mean chaos—it meant change, and you leaned into it 💥. This month asked you to stay open, and you did. Your willingness to pivot shows courage. Let that spark stay alive 🔥. You've learned to expect the unexpected and smile at it anyway 😊."
  ],
  "expecting": [
    "You've spent this month holding onto hope 🌱. That's powerful. Whether you were waiting for answers, healing, or something new—you kept believing. That trust in what's ahead is your light. Even in uncertainty, you planted seeds for your future 🌸. Be patient—things are growing beneath the surface 🌷.",
    "Expectation filled your days, not with anxiety, but with readiness 🕯️. You've looked forward, planned, and envisioned something better. That's beautiful. Holding hope is an act of strength 💫. Keep preparing for what you want—it's coming. And you're ready to receive it with open arms 🌈.",
    "You've been patient this month ⏳. You believed in the process, even when results weren't immediate. That quiet strength matters. Keep trusting the timing of your journey 🛤️. You've done the inner work—now let the outer world catch up 🌻. Good things are on their way.",
    "Anticipation doesn't always mean restlessness—it can mean hope 💛. You've looked ahead with courage this month. You didn't cling—you believed. Let this trust continue. Something beautiful is aligning for you 🌟. Stay open to it. You're closer than you think 🪷.",
    "This was a month of looking forward 🪴. And in that looking, you built motivation and clarity. You've shaped a future in your mind—and that vision will guide your steps. Let this momentum carry you, because your readiness is a gift 🎁."
  ],
  "trust": [
    "This month, you leaned into trust 🤝. That's not always easy. You allowed space for connection and gave yourself permission to believe—in others, and in yourself. Trust grows when we stop controlling everything. 🌊 You showed vulnerability, and that's true courage.",
    "You opened your heart this month 💓, even when it felt risky. Trust is built slowly—and you laid another strong foundation. Every moment you chose belief over fear was a step forward. Let yourself feel proud. You're building bridges 🌉, not walls.",
    "You didn't just trust others—you trusted your own voice 🗣️. And that made a difference. This month reminded you that your instincts are strong, and your gut is wise. 🧭 Keep listening. You've learned to stand steady in your truth, even when it wavers around you.",
    "There's something powerful about letting go and trusting the flow 🕊️. You did that this month. Not because it was easy—but because it felt right. You stopped gripping so tightly and allowed life to unfold. And it did 🌈. Keep holding faith.",
    "This month, you practiced one of the bravest things: trusting what you can't see yet 👁️‍🗨️. You gave yourself grace, and others kindness. That soft strength is rare 🌼. Keep offering it. The trust you plant now will bloom later."
  ],
  "disgust": [
    "This month, something didn't sit right with you 🧪. And instead of ignoring it, you paid attention. That awareness matters. Disgust is often clarity in disguise—it tells us what doesn't belong. You've started clearing space, and that's a gift 🧹.",
    "You noticed what no longer aligns. That's a powerful first step 🌪️. Disgust isn't negativity—it's a signal. And you listened. You're removing what drains you, making room for better. Keep going. Let your values guide your cleanup 🧼.",
    "You've said no this month—and meant it ✋. That's not selfish. It's strength. Whether you walked away from habits, situations, or people, you chose better. Trust that choice. Disgust opened your eyes so you could protect your peace 🔒.",
    "Sometimes the things we reject teach us the most 🚫. This month, you turned away from what didn't nourish you. That shows incredible self-respect. You're clearing emotional clutter so something more beautiful can grow 🌿.",
    "You've felt repelled, and that's okay 😖. Your body and heart are telling you the truth. You're refining your space, your circle, and your life. That discomfort is the beginning of something cleaner and more authentic 🌟."
  ],
  "fear": [
    "Fear followed you this month like a shadow 🌑. But you didn't run. You walked forward anyway—and that's bravery. You paused, breathed, and showed up. That's more than enough 🛡️. You're learning to live with uncertainty without losing yourself.",
    "Your fear didn't win this month 🧠. You acknowledged it, sat with it, and still moved forward. That's strength. You're building trust in yourself with each small action. Let fear be a whisper—not a wall 🚪.",
    "You've faced discomfort this month 🧊. But instead of hiding, you leaned in. That courage matters. You're learning to soothe your nervous system and offer yourself care. The more you understand fear, the less power it holds 🔓.",
    "Fear visited, but it didn't get the final say 👣. You showed up anyway. That's something to celebrate. Keep noticing your courage in action, even if it's quiet. You're slowly replacing fear with confidence 💪.",
    "Your fear has been loud—but your heart louder 🔔. You've taken steps despite shaking hands and racing thoughts. Keep going. You are not your fear. You are the person learning to rise beyond it 💫."
  ],
  "sad": [
    "Sadness touched your days like rain on glass 🌧️. But you let it. That's strength. You didn't rush the pain—you gave it space. That's healing in progress. Let this softness stay until you feel ready to rise again 🌱.",
    "This month felt heavy 💔. And yet, you carried it. Not with denial, but with honesty. That's something to admire. You're learning that sadness isn't weakness—it's part of being whole. Be gentle with your heart 💙.",
    "Your tears meant something 🌊. They watered the truth of how deeply you feel. You've allowed emotions to flow, and that vulnerability is sacred. Healing doesn't have to look brave—it can look tender too 🧣.",
    "You didn't pretend this month. You felt what needed to be felt. That's resilience, even if it doesn't look like it 💧. Be proud of showing up for yourself. Sadness doesn't last forever, but it deserves to be heard 🕊️.",
    "The quiet you've experienced this month holds wisdom 🤍. Sadness isn't here to break you—it's here to teach. Let the stillness guide you gently. When you're ready, the light will return 🌤️."
  ]
};

String getCheerUpMessage(String mood, int index) {
  final messages = cheerUpMessages[mood];
  if (messages == null || messages.isEmpty) {
    return "Your mood is unique, and so are you! Embrace it.";
  }
  return messages[index];
}
