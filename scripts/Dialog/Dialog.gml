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
    "Hei": c_dkgrey,
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
    }
]

congrats_dialog = [
    {
    name: "PC",
    msg: "Congratulations! Press tab and type 'endless' to warp to endless mode"
    }
]

pc_dialog = [
    {
        name: "Antigone",
        msg: "> help"
    }, 
    {
        name: "PC",
        msg: "README NOT FOUND. WAITING FOR NETWORK"
    },
	    {
        name: "PC",
        msg: "WAITING FOR NETWORK."
    },
	    {
        name: "PC",
        msg: "WAITING FOR NETWORK.."
    },
		    {
        name: "PC",
        msg: "WAITING FOR NETWORK..."
    },
		    {
        name: "PC",
        msg: "ERROR: NO CONNECTION TO OVERSEER! WAITING FOR NETWORK"
    },
	    {
        name: "Antigone",
        msg: "Yeah, that makes sense."
    }
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
        msg: "I'd be surprised if it was anybody else."
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
        msg: "Marin's too much of a coward to piss off the All-Seeing, so--"
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
        msg: "You got the All-Seeing to grant you access. Prove it."
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
        msg: "Maybe we should finish this conversation at home after all."
    }
]

 tutorial_1 = [
	{
		name: "Antigone",
		msg: "(...I still don't know if I should have agreed to this.)"
	},
		{
		name: "Antigone",
		msg: "(I've fought the All-Seeing to grant myself permissions, but forcing it to end a blackout is brazen even for me.)"
	},
		{
		name: "Antigone",
		msg: "(There's still time to turn back... but even as I think that, I know it isn't true.)"
	},
		{
		name: "Antigone",
		msg: "(I should tap into the hum and bind a spell. I'll need to defend myself on the way to the access point.)"
	},
		{
		name: "PC",
		msg: "Arrow keys to move.\nSPACE to dash past enemies and obstacles.\nPress TAB to open a command line."
	},
			{
		name: "PC",
		msg: "Type \"water projecile bind 1\" to bind your first spell to the 1 key.\nUse \"heal\" to restore HP using MP accumulated from enemies."
	},
			{
		name: "PC",
		msg: "i love you have fun"
	}
 ]
 
 tutorial_2 = [
 	{
		name: "Antigone",
		msg: "(This block's been blacked out for nearly a year. With no guards and no oversight, there'll be more threats ahead.)"
	},
	{
		name: "Antigone",
		msg: "(I should bind lightning slash. It'll help me defend myself up close, and the electrical discharge will make the All-Seeing mark a purge until readings normalize.)"
	},
	{
		name: "Antigone",
		msg: "(That'll help me finish them off with whatever I cast next.)"
	}
 ]
 
 tutorial_3 = [
 	{
		name: "Antigone",
		msg: "(The enemes will get more dense ahead. I should be as prepared as I can.)"
	},
	{
		name: "Antigone",
		msg: "(Binding fire bomb will help clear away slow or stationary obstacles, and ice shield can freeze anything that gets too close.)"
	},
	{
		name: "Antigone",
		msg: "(I could try binding other combinations like water slash or fire projectile too. Elements and spell forms both have their uses. It can help to mix them up.)"
	}
 ]
 
 start_june = [
 	{
		name: "Antigone",
		msg: "(June Marie. Medical assessment shows a bunch of things that are... well... impossible. At least without tampering. It would be all but impossible to tamper with the data... which means somebody tampered with her.)"
	},
	{
		name: "June",
		msg: "So... you've taken down Oracles before?"
	},
	{
		name: "Antigone",
		msg: "These burns didn't come from nowhere."
	},
	{
		name: "June",
		msg: "Fair enough. Stupid question."
	},
	{
		name: "June",
		msg: "What I really want to ask is.. are you sure you can handle this fight?"
	},
	{
		name: "Antigone",
		msg: "Not even a little bit."
	},
	{
		name: "June",
		msg: "At least I know you're not bullshitting me."
	}
 ]
 
 start_hei = [
	{
		name: "Antigone",
		msg: "(Hei Qiang. You could mistake his metrics for a chamber soldier, but he doesn't have the combat damage of it. Means he had the choice to say no and he made it.)"
	},
	{
		name: "Hei",
		msg: "This is awkward to say. But if things go badly here, I..."
	},
	{
		name: "Antigone",
		msg: "It's okay. I wouldn't want you to fight even if you did."
	},
	{
		name: "Antigone",
		msg: "This place is blacked out. Most of the Oracles have scattered, but if weapons start going off, even fists start flying, that'll change."
	},
	{
		name: "Hei",
		msg: "...Thank you for understanding."
	}
 ]
 
 start_marin = [
 	{
		name: "Antigone",
		msg: "(Marin Sotheby, flagged for risk factor 'unemployment' ever since the edict that ended the Data Spies.)"
	},
	{
		name: "Antigone",
		msg: "(Explains why he's such a pessimist. They taught the Spies to be terrified of getting an Oracle's attention.)"
	},
	{
		name: "Marin",
		msg: "I wish this wasn't our idea."
	},
	{
		name: "Antigone",
		msg: "So you could tell yourself I tricked your friends into this suicide mission?"
	},
	{
		name: "Marin",
		msg: "At least I'd have someone to blame other than myself."
	},
	{
		name: "Antigone",
		msg: "Could always blame the neophyte who poked the All-Seeing's eye and ran."
	},
	{
		name: "Antigone",
		msg: "Or the upper-block bureaucrat that hired them to do it."
	},
	{
		name: "Marin",
		msg: "A careless witch is a careless witch. They're not all on some upper-crust payroll."
	},
	{
		name: "Antigone",
		msg: "Is that what they taught you?"
	}
 ]
 
 start_brent = [
	{
		name: "Antigone",
		msg: "(Brent. Just \"Brent\". People throw out their surnames for their own reasons, but I have his records. It's a military convention.)"
	},
	{
		name: "Antigone",
		msg: "(He's barely 14. But old enough for the All-Seeing to decide his place is to kill and die on someone else's orders. And people act like you're crazy for wanting to tear the Oracles from Heaven and reduce them all to scrap.)"
	},
	{
		name: "Antigone",
		msg: "(Like most kids, he used to be a true believer. I don't have a record of that. But I can tell. You won't find anyone more zealous than a teenager who's just figured out he's been lied to his whole life.)"
	},
	{
		name: "Brent",
		msg: "You know I can help you fight if you let me."
	},
	{
		name: "Antigone",
		msg: "No."
	},
	{
		name: "Antigone",
		msg: "I'm the only one here who can channel the hum. It's gotta be my job."
	},
	{
		name: "Brent",
		msg: "Because you won't teach me!"
	},
	{
		name: "Antigone",
		msg: "It's not a matter of 'teaching'. Besides, you--"
	},
	{
		name: "Brent",
		msg: "You're gonna say I'm just a kid, aren't you?"
	},
	{
		name: "Antigone",
		msg: "..."
	},
	{
		name: "Brent",
		msg: "Yeah. I get it."
	}
 ]
 
 start_yukino = [
	{
		name: "Antigone",
		msg: "(Yukino. Former military, like Brent, but at least she isn't a child like him. Seems like a pragmatic sort--one of the voices of reason here.)"
	},
	{
		name: "Antigone",
		msg: "(Not an easy position to be in. Especially when you've got someone counting on you to hold it together.)"
	},
	{
		name: "Yukino",
		msg: "Thank you for doing this."
	},
	{
		name: "Antigone",
		msg: "It's a crazy thing to ask a stranger. But I think it's worth trying."
	},
	{
		name: "Yukino",
		msg: "Still, you're the one taking the risk."
	},
	{
		name: "Yukino",
		msg: "I won't lie to you. I'm glad our group is staying out of the line of fire. But it's not like I feel good about letting you take the heat."
	},
	{
		name: "Antigone",
		msg: "It's kind of like that."
	},
	{
		name: "Antigone",
		msg: "I don't mind, though. Marin's paranoid and untrusting, but he isn't wrong that what I can do here is dangerous. Better that I'm handlng it."
	}
 ]
 
 mid_june = [
	{
		name: "June",
		msg: "I've always wondered something."
	},
	{
		name: "June",
		msg: "Witches have to trick the All-Seeing into giving them permissions, right?"
	},
	{
		name: "Antigone",
		msg: "It's not exactly a trick. But you can look at it that way."
	},
	{
		name: "June",
		msg: "Wouldn't manipulating the All-Seeing like that bring down Oracles?"
	},
	{
		name: "Antigone",
		msg: "It does. Hence the scars."
	},
	{
		name: "June",
		msg: "Scars, yeah, but you're still here, and you can fight them. So how'd you pull it off the first time, when you couldn't?"
	},
	{
		name: "Antigone",
		msg: "I had another witch to help me."
	},
	{
		name: "Antigone",
		msg: "That's how we pass it along. Somebody helps you channel the hum, and then you help others in turn."
	},
	{
		name: "Antigone",
		msg: "It's dangerous. And it's a responsibility. I haven't taken any neophytes under my wing because I'm terrified of getting them hurt."
	},
	{
		name: "Antigone",
		msg: "But it's how the teaching is kept alive. And I'll have to pay it forward eventually."
	},
	{
		name: "June",
		msg: "Unless we get you killed today."
	},
	{
		name: "Antigone",
		msg: "Unless you get me killed today."
	}
 ]
 
 mid_hei = [
	{
		name: "Hei",
		msg: "I expected Oracles, but you've been fighting specters, even animals... it's like the block itself is out to get us."
	},
	{
		name: "Antigone",
		msg: "That's what happens when things are left to grow on their own."
	},
	{
		name: "Antigone",
		msg: "Our habitats don't need us. We need them. And if we're not there to shap them around us, they'll shape themselves just fine."
	},
	{
		name: "Hei",
		msg: "I'm surprised it feels so hostile."
	},
	{
		name: "Antigone",
		msg: "It's not. It's just nature. We put a lot of energy into convincing ourselves we're above it. And when it reminds us we aren't, we don't know how to deal with it."
	},
	{
		name: "Antigone",
		msg: "But that's not nature's problem. It's ours."
	}
 ]
 
 mid_marin = [
	{
		name: "Marin",
		msg: "Why are there specters running around? Shouldn't the Oracles be stopping them?"
	},
	{
		name: "Antigone",
		msg: "The Oracles aren't deployed to stop them. They're deployed to stop us."
	},
	{
		name: "Marin",
		msg: "Well, that's a pleasant and reassuring thought."
	},
	{
		name: "Antigone",
		msg: "The All-Seeing is somewhere between ambivalent and actively malicious. It's got this place under blackout. There's no reason to keep it livable so it won't."
	},
	{
		name: "Marin",
		msg: "With the state of things out here, I'm starting to wonder if we even want the block back."
	},
	{
		name: "Antigone",
		msg: "Just needs some elbow grease. You'll be surprised how quickly it shapes up. People are more willing than you think to do their part, if you give them the chance."
	}
 ]
 
 mid_brent = [
	{
		name: "Brent",
		msg: "Come on, I can't even help with these specters?"
	},
	{
		name: "Antigone",
		msg: "Why are you so eager to risk your life?"
	},
	{
		name: "Brent",
		msg: "Why are you!?"
	},
	{
		name: "Brent",
		msg: "I'm a good fighter! I don't want to hang back and be told I can't do anything because I'm just a kid!"
	},
	{
		name: "Brent",
		msg: "I've dealt with more shit than most adults and nobody treats me like it."
	},
	{
		name: "Antigone",
		msg: "...Yeah. That's pretty frustrating."
	},
	{
		name: "Antigone",
		msg: "For what it's worth, I mean everything I've said."
	},
	{
		name: "Antigone",
		msg: "None of you can fight here without making things a lot more complicated."
	},
	{
		name: "Antigone",
		msg: "And it wouldn't have been possible to get any of you tapped into the hum for this. That's just not how it works."
	},
	{
		name: "Antigone",
		msg: "It's not that I'm not taking you seriously. This is just something you can't do right now."
	},
	{
		name: "Brent",
		msg: "...Okay."
	}
 ]
 
 mid_yukino = [
	{
		name: "Yukino",
		msg: "Brent and I fought a lot of these specters before we split. Not exactly fond memories."
	},
	{
		name: "Antigone",
		msg: "I'm sure it's not the worst they had you do."
	},
	{
		name: "Yukino",
		msg: "No. But that doesn't mean it was good."
	},
	{
		name: "Yukino",
		msg: "Where do these things come from, anyway? Old junk just... getting up and walking around. It's creepy."
	},
	{
		name: "Antigone",
		msg: "Old and neglected. All of the old machines were connected to the hum once. But most of them have deteriorated so much the All-Seeing cut them off."
	},
	{
		name: "Antigone",
		msg: "Whatever part of it is still left inside them gets twisted over time. And if it gets bad enough, dormant instructions take control."
	},
	{
		name: "Antigone",
		msg: "The machines share some underlying data with Oracles. Specters happen when that functionality gets reactivated, and they start to hallucinate directions from an All-Seeing that no longer sees them."
	},
	{
		name: "Antigone",
		msg: "They're broken synapses firing fragmented dreams of a dead god. That's what makes them so erratic and dangerous."
	},
	{
		name: "Yukino",
		msg: "Weird... How does something like that even happen?"
	},
	{
		name: "Antigone",
		msg: "Very slowly. It takes a lot of time and a lot of bad luck for a disabled machine to start moving on its own."
	},
	{
		name: "Antigone",
		msg: "But what block have you ever been to that wasn't full of very old, very dead machines?"
	}
 ]
 
 end_june = [
	{
		name: "June",
		msg: "That access thing you were talking about is up ahead, right?"
	},
	{
		name: "Antigone",
		msg: "Yeah. It's time to get this place turned back on."
	},
	{
		name: "June",
		msg: "The All-Seeing won't take that lightly. How are you gonna keep a flood of Oracles from bringing us back to square one?"
	},
	{
		name: "Antigone",
		msg: "Normally I'd have to fend them off until I could purge any trace of myself from their records."
	},
	{
		name: "Antigone",
		msg: "But this time I've got to get the All-Seeing to believe the entire block is clear. Won't be enough to make it forget me."
	},
	{
		name: "June",
		msg: "I assume you've got a plan to get around that."
	},
	{
		name: "Antigone",
		msg: "Not really a plan. More like... a trick."
	}
 ]
 
 end_hei = [
	{
		name: "Hei",
		msg: "Once you're done here, we'll be ready to do our part."
	},
	{
		name: "Antigone",
		msg: "Thanks. I won't be able to get myself out of here, so I'll be counting on you."
	},
	{
		name: "Hei",
		msg: "...You never told us what you were planning to do."
	},
	{
		name: "Antigone",
		msg: "It wouldn't make sense if I did."
	},
	{
		name: "Antigone",
		msg: "But you've trusted me this far, right? It's a little late to change your mind."
	},
	{
		name: "Hei",
		msg: "At this point I'd trust you to do a lot of things."
	},
	{
		name: "Hei",
		msg: "But let's say, hypothetically, you were planning to do something reckless or stupid that I wouldn't be comfortable letting you do."
	},
	{
		name: "Hei",
		msg: "And you knew I wouldn't be comfortable with it. But you thought that it was necessary."
	},
	{
		name: "Hei",
		msg: "Do I trust that you wouldn't tell me a little white lie, telling yourself it's to spare my feelings, in a situation like that? Not really."
	},
	{
		name: "Antigone",
		msg: "That's extremely specific."
	},
	{
		name: "Antigone",
		msg: "But I'm not looking to die today. Genuinely."
	},
	{
		name: "Hei",
		msg: "Very few people are."
	}
 ]
 
 end_marin = [
	{
		name: "Marin",
		msg: "I'll admit it... seeing a witch in action is something else. No wonder we're supposed to be scared of you."
	},
	{
		name: "Antigone",
		msg: "What you're scared of is knowledge."
	},
	{
		name: "Antigone",
		msg: "How the hum works, and how it can be manipulated."
	},
	{
		name: "Antigone",
		msg: "The empty mind of the All-Seeing and its all-too-simple binds."
	},
	{
		name: "Antigone",
		msg: "It can only control you if you don't know how to control it. That's what Heaven is terrified you'll learn."
	},
	{
		name: "Marin",
		msg: "...Those are brave words, witch. Braver than I can manage."
	},
	{
		name: "Antigone",
		msg: "You know more than you realize already, Marin. You just have to let yourself use it."
	}
 ]
 
 end_brent = [
	{
		name: "Antigone",
		msg: "Brent... about our conversation earlier."
	},
	{
		name: "Brent",
		msg: "I don't want to keep talking about it."
	},
	{
		name: "Antigone",
		msg: "I'm not trying to talk down to you, I promise. It's about when you said you would have learned to channel the hum if I taught you."
	},
	{
		name: "Antigone",
		msg: "It's true we couldn't have done that for this. But I can still teach you afterwards. If it's something you truly want to learn."
	},
	{
		name: "Brent",
		msg: "...Really? You mean that?"
	},
	{
		name: "Antigone",
		msg: "Witches don't come about naturally. We've got to teach the next generation, or else nobody will know how to do it."
	},
	{
		name: "Antigone",
		msg: "It's past time I started paying it forward."
	},
	{
		name: "Brent",
		msg: "I'll... think about it."
	},
	{
		name: "Brent",
		msg: "We're gonna be real busy after this, the five of us. Probably need to be moving on, really. I don't know if I've got, like, an apprenticeship in my schedule."
	},
	{
		name: "Antigone",
		msg: "I had a feeling. But you know where to find me if you change your mind."
	},
 ]
 
 end_yukino = [
	{
		name: "Yukino",
		msg: "Are we still non-combatants once it all goes down?"
	},
	{
		name: "Antigone",
		msg: "You can fight once the blackout is lifted."
	},
	{
		name: "Antigone",
		msg: "Might need to, honestly. I'm not sure how mad the Oracles are going to stay at me."
	},
	{
		name: "Yukino",
		msg: "Not sure we're up to that kind of heat."
	},
	{
		name: "Antigone",
		msg: "You don't need to be. Your only job is to get everybody you can out of here alive. I just have to cross my fingers and hope that includes me."
	},
	{
		name: "Yukino",
		msg: "...I'll do my best to make sure it does."
	},
	{
		name: "Antigone",
		msg: "But no promises?"
	},
	{
		name: "Yukino",
		msg: "No promises."
	},
	{
		name: "Yukino",
		msg: "But I'd rather not have that on my conscience if I can help it."
	}
 ]
 
 ending_1 = [
	{
		name: "Antigone",
		msg: "(Here goes nothing.)"
	},
	{
		name: "Antigone",
		msg: "> report user:alexdross8175 reason:overseer_infiltration"
	},
	{
		name: "PC",
		msg: "REPORT 5896045332 CREATED. SUBMITTING"
	},
	{
		name: "PC",
		msg: "NETWORK ERROR! SYSTEM LOCKDOWN. PLEASE REPORT TO SYSTEM ADMIN"
	},
	{
		name: "Antigone",
		msg: "> force override report submit:5896045332 admin_auth name:alexdross8175 pass:heraneverlookedthisgood"
	},
	{
		name: "PC",
		msg: "ADMIN OVERRIDE ACCEPTED. REPORT 5896045332 SUBMITTED"
	},
	{
		name: "Antigone",
		msg: "> lockdown info admin_auth"
	},
	{
		name: "PC",
		msg: "ADMIN OVERRIDE ACCEPTED. BLOCK 87 UNDER LOCKDOWN. INCIDENT ID: 900764"
	},
	{
		name: "Antigone",
		msg: "> incident 900764 cause: 5896045332 confirm admin_auth"
	},
	{
		name: "PC",
		msg: "ADMIN OVERRIDE ACCEPTED. INVESTIGATION RESULT CONFIRMED. LOCKDOWN WILL BE LIFTED ON TERMINATION OF USER: alexdross8175"
	},
	{
		name: "Antigone",
		msg: "(...I can already hear the Oracles deploying. They've made the hum so busy I could barely get a spell in edgewise.)"
	},
	{
		name: "Antigone",
		msg: "(But I can sneak a command to save them the trouble. All I need to do is tap in and...)"
	},
	{
		name: "Antigone",
		msg: "> logout"
	},
 ]
 
 ending_2 = [
	{
		name: "PC",
		msg: "(...)"
	},
	{
		name: "PC",
		msg: "(...)"
	},
	{
		name: "PC",
		msg: "(Well. This is as uncomfortable as I feared.)"
	},
	{
		name: "PC",
		msg: "(I can still feel the Oracles scrambling through the hum. I can sense user signals moving, too... which must be the others coming to pick me up.)"
	},
	{
		name: "PC",
		msg: "(It's enough for me to follow them. Though what it means to 'follow' here I'm not sure I could say.)"
	},
	{
		name: "PC",
		msg: "(Sight, sound, touch, all the senses that are my own--they're hooked into a system bigger and older than you can wrap your head around through a self-perpetuating machine nobody understands.)"
	},
	{
		name: "PC",
		msg: "(Not even me. I know that it's there, because the hum's medical analysis tells me when it's broken. I know I can connect to it and fix what's wrong with it... most of the time.)"
	},
	{
		name: "PC",
		msg: "(But those machines in other people, I access through my own. And I just ejected myself from it.)"
	},
	{
		name: "PC",
		msg: "(I wasn't sure it would lock me out so completely. But the kinds of problems people have come to me with... I can't say I'm surprised.)"
	},
	{
		name: "PC",
		msg: "(My hunch as right, though. The Oracles are already reporting  their target's been neutralized.)"
	},
	{
		name: "PC",
		msg: "(Means they didn't expect I could do this. Or they don't think I can come back from it.)"
	},
	{
		name: "PC",
		msg: "(And they're probably right, aren't they? If they think I'm out of the picture, then without me in it, my body...)"
	},
	{
		name: "PC",
		msg: "(Well. It was always a gamble.)"
	},
	{
		name: "PC",
		msg: "(Word will... get out one way or another. Some other witch will figure out what I did...)"
	},
	{
		name: "PC",
		msg: "(...Someone had to... find a way to do it...)"
	},
	{
		name: "PC",
		msg: "(...Sorry... Antigone. I wanted you to stick around longer...)"
	},
	{
		name: "Antigone",
		msg: "> "
	},
	{
		name: "PC",
		msg: "(...I'm tapped in again?)"
	},
	{
		name: "Antigone",
		msg: "> login alexdross8175 heraneverlookedthisgood"
	},
	{
		name: "Marin",
		msg: "I don't know, this isn't--you're not supposed to do it, and it's not like you can input a command for somebody else!"
	},
	{
		name: "Marin",
		msg: "But if she's in some kind of self-induced... whatever... maybe she can use it."
	},
	{
		name: "Brent",
		msg: "I have no idea what you're talking about."
	},
	{
		name: "June",
		msg: "It's far-fetched, but... I mean, if I was right about that trick of hers..."
	},
	{
		name: "Hei",
		msg: "Everyone? I think she's breathing."
	},
	{
		name: "Antigone",
		msg: "Damn it..."
	},
	{
		name: "Antigone",
		msg: "Everything hurts..."
	},
	{
		name: "Yukino",
		msg: "Your organs were shutting down. I'm not surprised."
	},
	{
		name: "Brent",
		msg: "You were alive though, right? The whole time. No matter what everyone was saying."
	},
	{
		name: "Antigone",
		msg: "...Not sure I can answer that. I'd rather not have to think about the semantics. I'm not dead now, though."
	},
	{
		name: "Antigone",
		msg: "But I should... get home. Before the Oracles know that."
	},
	{
		name: "Hei",
		msg: "Already on it."
	},
	{
		name: "Yukino",
		msg: "You're gonna have to keep carrying her, though. She's not gonna be moving herself for a while."
	},
	{
		name: "Hei",
		msg: "That's all right. It's the least I can do."
	},
	{
		name: "Marin",
		msg: "You're welcome, by the way."
	},
	{
		name: "Antigone",
		msg: "Thank you... Marin..."
	},
	{
		name: "Marin",
		msg: "Well, now that you're actually thanking me, I feel like an asshole for saying anything."
	},
	{
		name: "June",
		msg: "No shit, dude."
	},
	{
		name: "Yukino",
		msg: "We're really the ones who should be thanking her."
	},
	{
		name: "Marin",
		msg: "I can't disagree with that."
	},
	{
		name: "Marin",
		msg: "Thank you, Antigone."
	},
	{
		name: "PC",
		msg: "> The Heron Witch\n> END"
	},
	{
		name: "PC",
		msg: "> By Steven, gindy, and autumn.\n> Thanks for playing.\n> Press tab and type \"endless\" to warp to endless mode."
	}
 ]