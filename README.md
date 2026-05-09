# CISC204-S26-Project2-Template
Template for the Typewriter Effect Project, contains an empty Godot 4.6 project

Project Overview
This project was created as the second major assignment for the Intro to Game Development course. The objective was to build a functional dialogue system that supports typewriter-style text reveal and synchronizes character visual states (sprites) with specific lines of dialogue. A key inspiration design-wise were a visual novels, specifically using assets and backgrounds from Danganronpa 2: Goodbye Despair.

My Work
I developed the project using Godot and GDScript, working and building upon four different stages:
- Dialogue Array & Indexing: I created an exported Array[String] to manage dialogue and an integer tracker to cycle through the lines.
- Input Handling: Implemented a unified input listener that detects both mouse clicks and the "ui_accept" action (Space) to advance the conversation.
- Typewriter Logic (For-Each Loop): Instead of displaying text instantly, I wrote a loop that iterates through each by putting them into a display string with a
  0.02 second delay.s
- Rich Text Parsing: I implemented a multiple types of font styles and colors []. When the script encounters a character like [b] or [i], it changes the specific text top be
  either bold or italicized; or a mix of both.
- Sprite Synchronization: I managed a secondary array of Sprite nodes for images, toggling their visibility in sync with the current dialogue index to reflect the character's
  changing emotions (Happy, Normal, Crazy, etc.).

What I Learned
Throughout this project, I gained several "hard" and "soft" skills essential for game development:
- String Manipulation: I learned how to treat strings as arrays of characters and how to parse specific characters to trigger logic gates (essential for the Rich Text
  requirement).
- Loop Time Control: Mastering the await keyword and get_tree().create_timer() allowed me to control the flow of time within a loop.
- Node Management: I learned how to store node references in arrays during _ready() to efficiently hide or show UI elements; as well as properly organizing nodes in the
  Scene Tree for less complexity.
- Attention to Detail: Managing a wide variety of different nodes and sprites for detail; and combining different nodes (PanelContainer and MarginContainer) to enhance detail
  and visuals.
- Problem Solving: Moving from static text (Part A) to dynamic, styled text (Part C) taught me how to add to, and edit existing code to accommodate more complex requirements
  without breaking the core functionality.

What I Would Improve
- Text Overlap: Although attempted during the project, I was unable to find a solution to overlapping text when clicking in quick succession repeadeatly. If given more time, I
  would implement a check to ensure that long lines of text don't begin until the previous is finished to prevent overlap.
- Dialogue Skipping: I would add logic that allows the player to click a second time to "finish" the typewriter effect instantly if they are a fast reader.
- Data Structure: Currently, the sprites and dialogue are in two separate arrays; I would improve this by combining them into one somehow, with each line of text being
  directly bundled with its corresponding image, instead of having to position said image order in an array
- Voice Clips/Music: To give the project a more accurate and authentic feel, I would like to have utilized music/voice clips from the original game.
