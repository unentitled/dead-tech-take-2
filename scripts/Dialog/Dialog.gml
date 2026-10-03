function create_dialog(_messages){
    if (instance_exists(obj_dialog)) return;
        
    var _inst = instance_create_depth(0, 0, -100, obj_dialog)
    _inst.messages = _messages
    _inst.current_message = 0;
}

char_colors = {
    "gindy": c_yellow,
    "Steven": c_aqua,
    "autumn": c_maroon,
    "PC": c_teal,
    
    "June": c_green,
    "Hei": c_gray,
    "Brent": c_yellow,
    "Yukino": c_purple,
    "Marin": c_orange,
    "Antigone": c_blue
}

welcome_dialog = [
    {
        name: "gindy",
        msg: "test message no. 1"
    },
    
    {
        name: "Steven",
        msg: "test message no. 2"
    },
    
    {
        name: "autumn",
        msg: "test message no. 3"
    },
    
    {
        name: "Steven",
        msg: "final test message. Goodbye!"
    },
]

pc_dialog = [
    {
        name: "Antigone",
        msg: "> console help"
    }, 
    {
        name: "PC",
        msg: "Press the tab key to open your spell console"
    },
    {
        name: "PC",
        msg: "Spells are formatted as such: ELEMENT ATTACK BIND 1-5"
    },
    {
        name: "PC",
        msg: "Elements include: 'fire' 'water' 'lightning' 'ice'"
    },
    {
        name: "PC",
        msg: "Attacks include: 'slash' 'projectile' 'shield' 'bomb'"
    },
    {
        name: "PC",
        msg: "To save your spell, type bind, then a number 1-5"
    },
    {
        name: "PC",
        msg: "Example: press tab -> then type 'fire slash bind 4'. When you press 4, a fire sword attack appears!"
    },
]

intro_dialog = [
    {
        name: "Marin",
        msg: "There's still time to turn back. It's desperate times, but we don't need to take stupid measures."
    },
    {
        name: "Hei",
        msg: "Why are you so jumpy, Marin? What she does isn't so different from what you do."
    },
    {
        name: "Marin",
        msg: "It is VERY different, in one VERY important way."
    },
    {
        name: "Brent",
        msg: "Yeah, and that's why you can't help us, and she can."
    },
    {
        name: "Brent",
        msg: "Just because you're a coward doesn't mean we all are."
    },
    {
        name: "Yukino",
        msg: "Calm down, Brent."
    },
    {
        name: "June",
        msg: "Either she's the real deal, or she isn't. We'll find out soon enough."
    },
    {
        name: "Marin",
        msg: "If anything, we might be better off with the con artist."
    },
    {
        name: "Yukino",
        msg: "You need to give it a rest, too."
    },
    {
        name: "Marin",
        msg: "Ugh. Fine."
    },
    {
        name: "Marin",
        msg: "But mark my words: it never ends well when you consort with a witch."
    },
    {
        name: "Hei",
        msg: "Look alive. Someone's coming down the path."
    },
    {
        name: "Yukino",
        msg: "Think that's her?"
    },
    {
        name: "Hei",
        msg: "Be surprised if it was anybody else."
    },
    {
        name: "Antigone",
        msg: "Saw you all coming and thought I'd spare you the other half of the trip."
    },
    {
        name: "Antigone",
        msg: "Especially since I haven't had time to clean."
    },
    {
        name: "Hei",
        msg: "We're sorry about the disturbance."
    },
    {
        name: "Yukino",
        msg: "But it's important. We wouldn't have trekked all the way up here if it wasn't."
    },
    {
        name: "Antigone",
        msg: "I assumed that much."
    },
    {
        name: "Brent",
        msg: "Marin's too much of a coward to piss off the All-Seeing, so-"
    },
    {
        name: "June",
        msg: "Hold on. We don't need to tell her anything when we don't know if she's on board."
    },
    {
        name: "Antigone",
        msg: "...Why don't we start with introductions?"
    },
    {
        name: "Antigone",
        msg: "My name is Antigone. Though I imagine you've heard it, given you're here."
    },
    {
        name: "Antigone",
        msg: "I can't say that goes both ways. So who are you all?"
    },
    {
        name: "June",
        msg: "Aren't you supposed to be a witch? You should know already."
    },
    {
        name: "Antigone",
        msg: "I could find out. But that would be very impersonal. Not to mention rude."
    },
    {
        name: "Antigone",
        msg: "Besides. Just because the All-Seeing thinks it knows your name doesn't mean it's right."
    },
    {
        name: "Marin",
        msg: "And then there's the insignificant little detail that pulling all those records would get an Oracle dropped on your head."
    },
    {
        name: "Antigone",
        msg: "On your head, certainly. I have permission."
    },
    {
        name: "June",
        msg: "Prove it."
    },
    {
        name: "Marin",
        msg: "Are you crazy?"
    },
    {
        name: "Antigone",
        msg: "...All right, I get it. Everybody likes to see a magic trick. It's fine."
    },
    {
        name: "Antigone",
        msg: "Your name is June Marie. The jumpy one is Marin Sotheby."
    },
    {
        name: "Antigone",
        msg: "Your large friend is on record as Hei Qiang. And the last two are just logged as Brent and Yukino."
    },
    {
        name: "Antigone",
        msg: "(You're all from Block Navarre... and none of you have been eating well. Not even the kid.)"
    },
    {
        name: "Antigone",
        msg: "(Hard not to think those things are connected.)"
    },
    {
        name: "Antigone",
        msg: "...Maybe we should finish this conversation at home after all."
    }

    
]
