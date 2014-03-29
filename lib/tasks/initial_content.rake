namespace :db do
  desc "Fill the database with the initial content"
  task populate: :environment do
  	PublicPage.create!(name: "Vision 2000", content: "Our commitment to you as our client: to provide you with an
  		environment that is comfortable, clean, and welcoming as well as a staff that is committed to customer service,
  		education, creativity, and professionalism. To our employees: to continually support, lead, and encourage
  		you to individual success and fulfillment. With these objectives in mind, we will strive to create an unforgettable
  		experience for everyone involved.")
    PublicPage.create!(name: "Services", content: "Vision 2000 offers many services to pamper yourself or that
    	special someone: Hair care for the entire famile Coloring Hilighting Natural and artificial nails Spa
    	pedicures in private room Parafin spa hand and foot treatments Facial waxing Tanning Gift certificates
    	available Wedding and prom packages The following product lines are available in the salon: Kenra Paul
    	Mitchell American Crew Malibu 2000 Schwarzkopf Osis O.P.I. nail care products *********Other product lines
    	available with online shopping through Four Seasons! Call now to schedule an appointment with one of our
    	expert, licensed hair stylists, colorists, or nail technicians. Walk in service when available. Senior
    	citizen specials everyday - 60 and over. Sunburst Tanning has 3 Wolff Sundash beds and 1 Wolff Sundash
    	stand-up booth. Lots of tanning packages and combo specials are available. We carry the full time of
    	Australian Gold lotions for that deep dark tan.")
    PublicPage.create!(name: "Specials", content: "March Tanning Specials Unlimited Bed One Week…$17.95 One Month…$50.00
    	Buy Two Months for $89.95 and Receive One Month FREE Buy Four Months for $161.95 and Receive Two Months Buy Nine
    	Months for $259.95 and Receive Three Months FREE Tan Until the End of the Year...$239.00 Unlimited Booth Specials
    	One Week…$29.95 Buy One Month for $100.00 and Receive Two Weeks FREE Buy Two Months for $179.95 and Receive One
    	Month FREE Tan Until the End of the Year…$299.00 *Buying Offer Ends 3/31/14* Pedicures 2 pedicure spas in a private,
    	relaxing room. Refresh and revitalize your tired feet by submerging them into one of our state of the art pedicure
    	chairs with whirlpool jets. Our licensed, professional technicians offer personalized service to ensure a clean,
    	safe, high quality service you desire and deserve. Bring a friend, relax and enjoy this wonderful experience
    	together. Gift certificates available. To schedule and appointment call 585-798-4810. Wedding & Prom Packages
    	Package One - $56.00 Formal Hairstyle Manicure Package Two - $89.00 Fomal Hairstyle Manicure Pedicure Package
    	Three - $70.00 Formal Hairstyle Set of Party Nails Package Four - $103.00 Formal Hairstyle Set of Party Nails
    	Pedicure Package Five - $133.50 Style Cut Formal Hairstyle Set of Party Nails Pedicure Eyebrow Shaping Top 5
    	Reasons to get a Pedicure Your feet are your foundation. No matter whether you’re on or off them all day, they
    	can take a beating. Getting a pedicure is more than just having your toenails painted. It’s a relaxing experience
    	that is good for your overall health. Need proof? Here are our top reasons for getting a pedicure at Vision 2000.
    	A pedicure relieves stress. Sink into one of our massage chairs, dip your feet into a warm foot bath, and you
    	can’t help but breathe a little easier. Pedicures include a soothing foot massage to help circulation and release
    	tension held in your leg and foot muscles. Basic foot care is important. Taking care of your feet is essential,
    	especially for people with diabetes or for runners. Corns, calluses, ingrown toenails and other foot issues can
    	be prevented with regular pedicures. Before your pedicure, let us know if you have any special requirements or
    	sensitivities with your feet so we can make your pedicure a healthy and safe experience for you. Your skin's
    	moisture is replenished. The skin on your feet is just as important to keep hydrated as is your face. Moisturized
    	feet are less likely to crack or blister. Plus, having smooth, supple feet feels and looks great. Boost your foot
    	confidence. After getting a pedicure, your toenails (painted or not), cuticles and heals are soft, clean and
    	attractive. Clean feet are sexy feet. It's fun! Get a group of girlfriends together for pedicures together. Relax
    	and chat with your pals while one of our pedicure professionals takes care of you. The rainbow of nail colors to
    	choose from is also exciting. Men enjoy pedicures, too, as a way to rest, rejuvenate and look their best! New at
    	Vision 2000! OPI Brazil collection is now in! Brazil by OPI includes the following shades: Next Stop... - The
    	Bikini ZoneThis amethyst-toned pewter suits me just fine. Don't Bossa Nova Me Around - Nobody can stop me from
    	wearing this creamy nude! Taupe-less Beach - There's nothing optional about wearing this enticing taupe. I São 
    	Over - ThereHe was sipping coffee with this mocha-toned beauty. OPI Scores a Goal! - Make your point in this
    	winning shade of rich chocolate. AmazON...AmazOFF - I'm making the switch to this deep jungle green. I Just
    	Can't Cope-acabana - Nothing lifts your spirits like this sunshine yellow. Where Did Suzi's Man-go? - He went
    	to fetch her this delicious mango smoothie. Toucan Do It If You Try - You have talent to achieve anything in
    	this confident orange. Kiss Me I'm Brazilian - Plant this warm luscious pink on me! Live.Love.Carnaval - This
    	vibrant and festive coral is the life of the party. Red Hot Rio - A ruby red as hot as the most exciting city
    	in Brazil. The Brazil Beach Sandies Liquid Sand Mini Pack includes the following shades: Samba-dy Loves Purple
    	- Well, who wouldn't find this vivid textured violet irresistible? I'm Brazil Nuts Over You - And I'm crazy
    	for this textured matte pink What's a Little Rain Forest? - I've got this textured matte blue and an umbrella
    	for two. You're So Flippy Floppy - When I found this bright textured yellow, I just flipped!")
    PublicPage.create!(name: "About Us", content: "Darlene Witte has been the owner of Vision 2000 and Sunburst Tanning
    	for over 18 years. She has been a Licensed Hair Stylist and Nail Technician for over 24 years. She worked at
    	Vision 2000 and Sunburst Tanning for 6 years before purchasing the business from the previous owners. She is
    	married to Bruce Witte with 2 sons - Matthew, 18 and Shawn, 16. She is a member of the Medina Business Association
    	and The Greater Niagara Business Association. She is a graduate of Lyndonville Central School and Niagara Boces.
    	She has lived in this area for 40 years, which makes knowing and servicing her clients her number one priority.
    	Vision 2000 offers many services with 4 exceptionally trained, licensed stylists and nail technicians. 'We work
    	hand in hand with Kenra Inc. and Schwarzkopf International for in salon training and continued education to keep
    	up with all the latest styles and trends'. It all comes down to making people feel good about themselves. At the
        end of the day, that's really what our job is all about. Vision 2000 is looking for another stylist to join our team.
        If you or someone you know are looking to start their career or make a change please stop by Vision 2000 to fill
        out an application. All applications are strictly confidential. You can also e-mail me your resume to
        dwitte1@rochester.rr.com. 521 Main St. Medina 585-798-4810 Mon-Fri 8am-8pm and Sat 8am-4pm")
    PublicPage.create!(name: "Contact Us", content: "Phone:	585-798-4810 585-798-4600 Fax:	585-798-4600 Hours:
    	Monday-Friday 8AM-8PM Saturday 8AM-4PM Walk in service when available or call ahead for an appointment. We gladly
    	accept Visa, Mastercard, Discover, and debit cards. Email Address: dwitte1@rochester.rr.com")
  end
end