CREATE SCHEMA IF NOT EXISTS shop;

CREATE TABLE IF NOT EXISTS shop.users (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    address VARCHAR(255),
    phone_number VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    birthday DATE,
    user_type INT DEFAULT 0,
    is_blocked BOOLEAN DEFAULT FALSE
);

INSERT INTO
    shop.users (
        user_name,
        password,
        address,
        phone_number,
        email,
        birthday,
        user_type,
        is_blocked
    )
VALUES
    (
        'lekhoi',
        '$09$ugFZmLNF89rFqaf2VLshyOEUm9rN8WOQsBt3BFs8mYoJMQ8lFuxAu',
        '350A To Hien Thanh',
        '0838571677',
        'khoi.le99@hcmut.edu.vn',
        '1999-12-28',
        '0',
        'FALSE'
    ),
    (
        'lekhoi1',
        '$2y$09$PEWniDl8PyMIcVHJo5VikOfLgsIcZOgVxKr0TOK1T2N9Ey1keKDCG',
        'test',
        '1234561212',
        'test@test.com',
        '2023-7-16',
        '0',
        'TRUE'
    ),
    (
        'lekhoi2',
        '$2y$09$cGfmm16z94OqGhbwnywV2.Gp2PN7d1HqxeX55a.2SvaSM68LEG8jO',
        '123123123',
        '1234561231',
        'khoi.le99@hcmut.edu.vn1',
        '2023-7-16',
        '0',
        'FALSE'
    ),
    (
        'asd',
        '$2y$09$lDEY9UVZMsKmy8G0kDKHeONeu1tw.ybNlArE4EAZKYxWvcXWZgHna',
        'asd',
        '1234567890',
        'asd@asd.com',
        '1999-12-28',
        '0',
        'FALSE'
    ),
    (
        'lekhoi99',
        '$2y$09$nOhSYTq6uJwJoTsDAxNL3.8bh80zf2JXG15ZvvR7rorfmZeHpXrbi',
        'asd',
        '1231231312',
        'lekhoi99@gmail.com',
        '1999-9-9',
        '0',
        'FALSE'
    ),
    (
        'asd123',
        '$2y$09$SCKOElvJ2rLBUGokfYpXT.JzQPC2MZPoV07vF.U4jc0GtWzFXqjqy',
        'asd',
        '1231312312',
        '1323@adas.com',
        '1999-02-08',
        '0',
        'FALSE'
    );

CREATE TABLE IF NOT EXISTS shop.admins (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    email VARCHAR(255) UNIQUE
);

INSERT INTO
    shop.admins (user_name, password, email)
VALUES
    (
        'lekhoi',
        '$2y$09$9lY7KhuKzXgNSRsgYszBdecJbAMLEDCS7kzWApWaf6ldwdeq1pZ/O',
        'khoi.le99@hcmut.edu.vn'
    );

CREATE TABLE IF NOT EXISTS shop.products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    price INTEGER,
    description TEXT,
    img TEXT,
    brand VARCHAR(255),
    color VARCHAR(255),
    material VARCHAR(255),
    size VARCHAR(255)
);

INSERT INTO
    shop.products(
        name,
        price,
        description,
        img,
        brand,
        color,
        material,
        size
    )
VALUES
    (
        'Amazon Basics Woodcased #2 Pencils, Pre-sharpened, HB Lead Bulk Box, 150 Count, Yellow',
        14.99,
        'wood case #2 HB pencils made from high-quality wood come presharpened
Strong medium-soft lead produces long-lasting, smooth, readable strokes
Rounded hexagonal shape with satin-smooth finish for a secure, comfortable grip
Soft, smudge-free, latex-free eraser secured to the end for conveniently wiping away mistakes',
        '{81yb+HGKXrL._AC_SL1500_.jpg,61-aJZ1bkLL._AC_SL1500_.jpg,71jOJo4vnwL._AC_SL1500_.jpg,81j4wVDrbdL._AC_SL1500_.jpg,3157w-GFUhL._AC_SL1080_.jpg}',
        'Amazon Basics',
        'Yellow',
        '',
        ''
    ),
    (
        'Amazon Basics Foldable Metal Platform Bed Frame with Tool Free Setup, 14 Inches High, Full, Black',
        60.37,
        'DURABLE AND SOLID HARDWOOD: Constructed of solid rubberwood and composites, a material that is naturally stronger, denser, and more durable that the more commonly-used pine wood found in other bunk beds.Item Dimensions : 75"L x 54"W x 14"H.Maximum weight recommendation:250 pounds
Designed for sleepers up to 250 pounds
Full size platform bed frame offers a quiet, noise-free, supportive foundation for a mattress. No box spring needed
Folding mechanism makes the frame easy to store and move in tight spaces
Provides extra under-the-bed storage space with a vertical clearance of about 13 inches',
        '{61q39wTCtbL._AC_SL1000_.jpg,8193sP6-TyL._AC_SL1500_.jpg,8120Lsi-a5L._AC_SL1500_.jpg,7172iXV02yL._AC_SL1500_.jpg,61MJjWHP9qL._AC_SL1500_.jpg,81n+nqjNEFL._AC_SL1500_.jpg}',
        '‎Amazon Basics
‎Amazon Basics',
        'Black',
        'Steel',
        '75"L x 54"W x 14.02"H'
    ),
    (
        'Duracell CR2032 3V Lithium Battery, Child Safety Features, 6 Count Pack, Lithium Coin Battery for Key Fob, Car Remote, Glucose Monitor, CR Lithium 3 Volt Cell',
        8.11,
        'BITTER TASTE DISCOURAGES SWALLOWING – Duracell Lithium Coin batteries are the only batteries with a non-toxic, bitter coating to help discourage swallowing
CHILD-SECURE PACKAGING makes Duracell Lithium Coin battery packaging nearly impossible to open without scissors
LONG-LASTING BATTERIES DESIGNED FOR DEPENDABILITY – Duracell Lithium Coin Batteries deliver the long-lasting power and performance you can count on for electronic devices throughout the home or on-the-go
RELIABLE POWER – The Duracell 2032 3V Lithium Coin battery powers both everyday and essential home devices, including key fobs, remote controls, glucose monitors, thermometers, and many more
GUARANTEED FOR 10 YEARS IN STORAGE – Holds power up to a decade in storage, so you can be confident these batteries will be ready when you need them
#1 TRUSTED BATTERY BRAND – From storm season to medical needs to the holidays, Duracell is the #1 trusted battery brand; 2032 3V Lithium Coin batteries available in 1-, 2-, 4-, 6-, and 8-count packs',
        '{61-tP7MJrEL._AC_SL1000_.jpg,711d6EyBRJL._AC_SL1500_.jpg,71O76RHaooL._AC_SL1500_.jpg,81IaumMxpdL._AC_SL1500_.jpg}',
        'DURACELL',
        '',
        '',
        '0.19 x 3.75 x 4.5 inches'
    ),
    (
        'OtterBox iPhone 13 (ONLY) Defender Series Case - BLACK, rugged & durable, with port protection, includes holster clip kickstand',
        33.96,
        'Compatible with iPhone 13 (ONLY)
Multi-layer defense from the solid inner shell and resilient outer slipcover with port covers that block dirt, dust and lint from getting into jacks and ports
Tested to survive 4X as many drops as military standard (MIL-STD-810G 516.6) with raised edges protect camera and screen
Made of 50% recycled plastic, the screenless design provides flawless touch response and included holster works as a belt clip and a hands-free kickstand
Includes OtterBox limited lifetime warranty (see website for details)',
        '{71xq1EYmKVL._AC_SL1500_.jpg,711PJguIX8L._AC_SL1500_.jpg,61LOed7SYRL._AC_SL1500_.jpg,71Jus17mcjL._AC_SL1500_.jpg,71u3-I1kDtL._AC_SL1500_.jpg}',
        'OtterBox',
        'Black',
        'Plastic',
        '7.75 x 4.25 x 1.5 inches'
    ),
    (
        'Amazon Basics White Board Eraser, Dry Erase Whiteboard Erasers for Office, Home and Classroom, Black, 4-Pack',
        9.59,
        '4-pack set of dry-erase whiteboard erasers; ideal for home, school, or office
Quickly removes marks made by dry-erase markers; for use with whiteboard, porcelain, and melamine surfaces
Plastic top and non-abrasive polyester pad bottom with a soft pile that won’t scratch board surfaces
Rectangular shape; fits inside a standard whiteboard pen holder for easy access
Measures 4.92 by 1.1 by 1.97 inches each (LxWxH), weighs 1.2ounces; backed by an AmazonBasics limited 1-year warranty',
        '{81kyzI27AnL._AC_SL1500_.jpg,61Ik2gFeDFL._AC_SL1500_.jpg,71s1XEsBopL._AC_SL1500_.jpg,81rX4CAvyXL._AC_SL1500_.jpg,81iwYturANL._AC_SL1500_.jpg,71SBD-xzN7L._AC_SL1500_.jpg}',
        '	Amazon Basics',
        'Black',
        'fabric, Plastic',
        '4.92 x 1.1 x 1.97 inches'
    ),
    (
        'Fellowes ‎Powershred 99Ci 18-Sheet 100% Jam-Proof Crosscut Paper Shredder for Office and Home, Black/Gray 3229901',
        311.89,
        'Crosscut Document Shredder: The perfect paper shredders for home offices and businesses, our heavy-duty paper shredders can accommodate up to 18 sheets of paper at a time and also shred staples, credit cards, paper clips, CDs/DVDs, and junk mail
Ultra-Secure Shredding: Ideal for disposing of highly confidential documents, our heavy-duty shredder tears paper into 397 5/32 x 1-½” cross-cut particles for enhanced security; Level P-4 security grade
SafeSense Protection: Designed to help protect more than just your identity, our shredders for home use and offices come equipped with proprietary technology that automatically disables the shredder when hands or paws touch the paper opening. Select models.
Continuous 30-Minute Run Time: Our ultra-efficient home and office shredder runs for up to 30 minutes before needing to cool down, meaning you''re able to complete multiple shredding jobs in 1 sitting
Perfect for shared workspaces, this portable shredder has ultra-quiet operation and automatically detects and powers through tough jobs to prevent jams; Also includes a 9-gallon pull-out bin with a LED bin-full indicator
100+ Years of Innovation: Driven by a commitment to quality, Fellowes is dedicated to developing solutions to help you be at your best',
        '{61702KRcu9L._AC_SL1500_.jpg,713gCOiHB6L._AC_SL1500_.jpg,61vSnxQtjGL._AC_SL1500_.jpg,71e8CSVODKL._AC_SL1500_.jpg,616T6HWsuqL._AC_SL1500_.jpg,71DVTrOuQSL._AC_SL1500_.jpg}',
        'Fellowes',
        '	Black/gray',
        '',
        '‎17.31 x 11.44 x 25.19 inches'
    ),
    (
        'Amazon Basics 12-Pack Rechargeable AA NiMH High-Capacity Batteries, 2400 mAh, Recharge up to 400x Times, Pre-Charged',
        25.88,
        'RELIABLE PERFORMANCE: 12-pack of pre-charged AA rechargeable NiMH batteries (2,400 mAh) for professional or everyday use
RECHARGEABLE: Can be recharged up to 400 times with minimal power loss; provides consistent discharge performance (requires separate battery charger)
HIGH CAPACITY COMPATIBILITY: Works with any device that uses AA batteries, but best for high power or continuous drain items like game controllers and wireless devices
LOW SELF DISCHARGE: Maintains 50% capacity for 1 year; ideal to power household appliances or to use while traveling
EASY TO USE & STORE: Has a shelf-life up to 5 years for everyday or emergency use; arrives pre-charged and ready to use',
        '{71HBzF0sw2L._AC_SL1437_.jpg,61rWMSmIdCL._AC_SL1500_.jpg,711BYb8K6ML._AC_SL1500_.jpg,71FyBYGalvL._AC_SL1500_.jpg,71RZ8Hj6JOL._AC_SL1500_.jpg,71gfnsDd3-L._AC_SL1500_.jpg}',
        '	Amazon Basics',
        '',
        '',
        '9 x 6 x 0.95 inches'
    ),
    (
        'Amazon Basics Padded Office Desk Chair with Armrests, Adjustable Height/Tilt, 360-Degree Swivel, 275Lb Capacity, 24.2"D x 24"W x 34.8"H, Black',
        98.51,
        'Mid-back office chair; ideal for a home office, computer desk, guest work station, or conference room
Adjustable seat height and seat angle; tilt control; 360 degree swivel for easy multi-tasking
Supports up to 275 pounds; sturdy 5-point base for stability; certified by BIFMA, a nonprofit organization that creates voluntary standards to support safe standards for business and institutional working environments
Durable polyurethane bonded leather (faux leather) upholstery in Black; padded seat and armrests for comfort; caster wheels for smooth-rolling mobility
Assembly instructions included; note: to ensure proper assembly, please follow all steps provided in the user manual (provided in PDF below)
Product Dimensions: 24 x 24.2 x 34.8 - 38.6 inches (LxWxH), seat width: 20.1 inches; seat depth: 16.5 inches; seat back height: 18.7 inches',
        '{71mKwaKglhL._AC_SL1500_.jpg,618h0+1D8CL._AC_SL1500_.jpg,71OyOJ4IMpL._AC_SL1500_.jpg,71otjSvC6FL._AC_SL1500_.jpg,711Y6UAbkKL._AC_SL1500_.jpg,61KkjLkOK2L._AC_SL1500_.jpg}',
        '	Amazon Basics',
        'Black',
        '	Faux Leather',
        '24.2"D x 24"W x 34.8"H'
    ),
    (
        'Marshall Major IV On-Ear Bluetooth Headphone, Black',
        116.83,
        'Major IV delivers the signature Marshall sound that you’ve come to expect. Custom-tuned dynamic drivers deliver roaring bass, smooth mids and brilliant treble for a rich, unrivalled sound that you’ll never want to turn off.. Driver Impedance : 32 Ω. Frequency Range : 20-20,000 Hz.
80+ solid hours of wireless playtime with quick-charge capability – only 15 minutes of charging will give you 15 hours of listening. These are headphones truly built for the long haul.
Improved ergonomic design means that when you’re deep diving into your music, the tenth hour is as comfortable as the first. Major IV’s ear cushions are softer to the touch and more faithfully fit the shape of your ear.
Major IV can be charged wirelessly, so it’s now easier than ever to charge and go. Spend less time looking for your charger in a mess of wires and more time listening to your music. You will receive a USB-C charging cable in the box. Wireless charging pad is not included
With the multi-directional control knob you can play, pause, skip and adjust the volume of your device, as well as power your headphones on or off. Phone functionality is also included so you can answer, reject or end a call with a few simple clicks.
Major IV combines enhanced usability with classic Marshall elements like the multi-directional control knob, textured black vinyl and the Marshall script for a design that is both iconic and innovative. The new fold clip means that Major IV folds away into an even more compact size, and the ear caps are protected from too much wear and tear.
Major IV features a 3.5 mm socket so a friend can plug in and enjoy your music.
Included components: Major IV Headphones, 3.5mm audio cord, User Manual and legal and safety information, USB-C charging cable',
        '{71mTfSKhhTL._AC_SL1500_.jpg,71QuEK+XuML._AC_SL1500_.jpg,71kTbjPQO3L._AC_SL1500_.jpg,71NFV42DkVL._AC_SL1500_.jpg,81DgDEr4A7L._AC_SL1500_.jpg,71TJ0btVDJL._AC_SL1500_.jpg}',
        'Marshall',
        'Black',
        '',
        '	6.3 x 6.3 x 3.4 inches'
    ),
    (
        'Amazon Basics 12 Sheet (new model) Micro Cut Paper and Credit Card CD Shredder With 6 Gallon Bin, Black',
        110.99,
        'Micro cut shredder turns paper into tiny pieces (0.16 x 0.5 inches; 4 x 12 mm), meets security level P-4 standards
Shreds up to 12 sheets of 20-pound bond paper at a time, including staples and small paper clips; 8.7-inch-wide entry
Destroys CDs, DVDs, and credit cards (one at a time). For higher security, the paper slot can be used to destroy credit cards as well.
4 mode control switch (auto/on, off, reverse, forward) and LED indicators (on, overload, overheat, bin full, door open)
20 minute runtime; 20 minute cool down; if runs beyond max run time, it automatically shuts off to prevent overheating
After 30 minutes of idle time, the shredder enters sleep mode to save power
Easy to empty 6-gallon pull out bin and casters for smooth rolling mobility
Quality tested: as part of Amazon Basics quality inspections, we test every shredder before shipping it, which means you may see some paper shreds from the testing
Please refer to the user manual, troubleshooting guide, and instructional video before use
Product dimensions: 14.5 x 10.4 x 20.3 inches (LxWxH), weighs 22 pounds',
        '{619ZnHSGnAL._AC_SL1500_.jpg,61J1V3LRZjL._AC_SL1500_.jpg,71u+VotfPyL._AC_SL1500_.jpg,71SxGZzymgL._AC_SL1500_.jpg,71R9+V5fWGL._AC_SL1500_.jpg,71x3fJ6HoEL._AC_SL1500_.jpg}',
        '	Amazon Basics',
        'Black',
        '',
        '10.3 x 14.5 x 20.5 inches'
    ),
    (
        'Amazon Basics DisplayPort to HDMI Display Cable, Uni-Directional, 4k@60Hz, 1920x1200, 1080p, Gold-Plated Plugs, 3 Foot, Black',
        8.72,
        'IN THE BOX: (1) 3 foot DisplayPort HDMI display cable for transmitting high-def audio and video from DisplayPort enabled computers to HDMI displays
SUPPORTS 4K VIDEO: Supports 4K@60Hz for enhanced gaming or streaming video to a home theater, projector, or monitor with 4K high resolution
EASY TO CONNECT: Connect and configure monitors for dual screen or mirrored display
CRYSTAL CLEAR TRANSMISSION: Gold-plated connectors deliver crystal clear audio and video; durable cable housing for longevity
PLUG & PLAY DESIGN: does not require drivers or software
UNI-DIRECTIONAL: This is a uni-directional cable that supports DisplayPort to HDMI only; does not support HDMI to DisplayPort (not bi-directional)',
        '{61UmdN0+5XL._AC_SL1500_.jpg,71zGBdkjEKL._AC_SL1500_.jpg,61E2aDEX7UL._AC_SL1500_.jpg,619D0rdyY9L._AC_SL1500_.jpg,81DLpzv+fGL._AC_SL1500_.jpg,81-+wmWOalL._AC_SL1500_.jpg}',
        'Amazon Basics',
        'Black',
        '',
        '	‎36 x 0.19 x 0.19 inches'
    ),
    (
        'Razer Anzu Smart Glasses: Blue Light Filtering & Polarized Sunglass Lenses - Low Latency Audio - Built-in Mic & Speakers - Touch & Voice Assistant Compatible - 5hrs Battery - Rectangle/Large',
        43.55,
        '
Blue Light Filtering and Polarized Sunglass Lenses Included: Its blue light filter lessens screen glare to protect your eyes, reducing eyestrain so they feel fresh and focused while enjoying entertainment or working, while the polarized replacement lens shields your eyes from the sun
Low Latency Audio: Its industry-leading 60ms Bluetooth connection delivers smooth, stutter-free sound that allows you to stay immersed without any disruptions from audio delay or skipping
Built-in Mic and Speakers: With the Razer Anzu, you can go hands-free when taking calls thanks to a discreet omnidirectional mic built into its frame
Touch-Enabled and Voice-Assistant Compatible: Change music tracks, play or pause media, manage calls, and activate your smartphone’s voice assistant—all from the glasses’ sleek touch interface
More than 5 hours of battery life: With this much mileage on a single charge, it’ll never run out during long gaming sessions. When folded up and not in use, it conserves power by shutting off automatically',
        '{51oCaTt3reL._AC_SL1500_.jpg,71vSc+ff+lL._AC_SL1500_.jpg,813wt2DbwwL._AC_SL1500_.jpg,71w3t-nlNoL._AC_SL1500_.jpg,81KTYAcwwPL._AC_SL1500_.jpg,71kWcYpZpKL._AC_SL1500_.jpg}',
        'Razer',
        'Black',
        '',
        '6.42 x 1.87 x 6.07 inches'
    ),
    (
        'Amazon Basics USB-A to Lightning Charger Cable, Nylon Braided Cord, MFi Certified Charger for Apple iPhone 14 13 12 11 X Xs Pro, Pro Max, Plus, iPad, 6 Foot, Rose Gold',
        13.11,
        'APPLE MFi CERTIFIED: Ensures complete compatibility with iPhone 14/13/12/11/X/XR/XS/8/7/6/6s/5/5s/5c, iPhone Pro 14/13/12/11, IPhone Pro Max 14/13/12/11/XS, iPhone Plus 14/8/7/6/6s, iPhone SE 1st Gen/2nd Gen/3rd Gen, iPhone mini 13/12, iPad Pro 10.5 in/9.7 in, iPad Air 3/2/1, iPad mini 5/4/3/2/1, iPad 9th Gen and older, iPod Touch 5th Gen and older, iPod nano 7th Gen and Beats Pill+
IN THE BOX: Amazon Basics Lightning to USB-A Cable for charging and syncing devices. Comes with Apple''s original C89 smart chip
FAST CHARGING: Wide-diameter wires and reduced cord resistance maximize charging speed (supports up to 2.4 amps charging current)
HIGH SPEED DATA TRANSFER: Up to 480Mbps for transferring music, movies, and more in seconds
DURABLE DESIGN: An additional layer of protection has been added to the Lightning and USB ends to improve durability and reduce fraying
SECURE FIT & ADDED PROTECTION: Sturdy unibody connectors resist damage while ensuring a secure fit with every insertion',
        '{51Tj661WuwL._AC_SL1302_.jpg,61bTd7tn4LL._AC_SL1500_.jpg,51FsAyjyUnS._AC_SL1500_.jpg,51A4uzPkYKS._AC_SL1500_.jpg,61LEg72jVVS._AC_SL1500_.jpg,81z6hzqsK5S._AC_SL1500_.jpg}',
        '	Amazon Basics',
        'Rose Gold',
        '',
        '5 x 3 x 1.1 inches'
    ),
    (
        'Amazon Basics Rectangle 12-Outlet Power Strip Surge Protector, 4,320 Joule, 8-Foot Cord, Black',
        22.59,
        'IN THE BOX: 12-outlet surge protector power strip with 8-foot cord, a 4320-joule energy rating and 15A/120V/1800W
RELIABLE PROTECTION: Protects sensitive electronic devices such as computers, data lines, TVs, and more from potentially-damaging power surges
LED LIGHT INDICATORS: Built-in lights automatically indicate active surge protection and grounded wiring
ADDITIONAL SAFETY: Fireproof MOV provides additional safety precaution from surges and spikes
RESETTABLE CIRCUIT BREAKER: Power on/off switch integrates with a 15Amp overload resettable circuit breaker
CONVENIENT & DURABLE DESIGN: Heavy-duty power cord with widely-spaced outlets, sliding covers, and a back keyhole wall-mount',
        '{81+ehuAXSbL._AC_SL1500_.jpg,71Gj-tznbzL._AC_SL1500_.jpg,71Xn1J+RDxL._AC_SL1500_.jpg,61OxcOqT5gL._AC_SL1318_.jpg,71Z07Mus7wL._AC_SL1500_.jpg,712lq+HQVXL._AC_SL1500_.jpg}',
        '	Amazon Basics',
        'Black',
        '',
        '	12.2 x 5 x 1.29 inches'
    ),
    (
        'Panasonic Link2Cell Bluetooth Cordless Phone System with Voice Assistant, Call Block and Answering Machine, Expandable Home Phone with 5 Handsets â€“ KX-TGF575S (Black with Silver Trim)',
        144.86,
        'Expandable Panasonic Cordless Phone with Answering Machine: 5-handset home phone system with added features to keep you connected; Digital Answering Machine stores 18-min of messages
Interference-Free, Secure Phone Signal: DECT 6.0 wireless technology for whole home coverage and less interference from other electronics; ideal for homes and apartments with thick walls
Bluetooth Phone Connects to Cell and Voice Assistants: Make and receive calls from your cellular device with Link2Cell pairing up to 2 cell phones; connect handsets to Siri, Google Now and S Voice through Voice Assist feature
Bi-Lingual Talking Caller ID and Smart Call Blocker: Talking caller ID announces caller information in English or Spanish; block unwanted calls with the push of a button on telephone handset or main base unit
More Features to Enjoy: Handset to handset intercom and baby monitor function, battery back-up for up to 12-hr talk time when the power goes out, 3000-entry phone book, and more',
        '{81BAHFVmgEL._AC_SL1500_.jpg,616VgcYisZS._AC_SL1500_.jpg,71uImhvQHOS._AC_SL1500_.jpg,81kh0yWNwxL._AC_SL1500_.jpg,71DXJR2qHZS._AC_SL1500_.jpg,71Vz4H2f0NS._AC_SL1500_.jpg}',
        'Panasonic',
        'Black with Silver Trim',
        'Plastic',
        '8 x 18.5 x 9.5 inches'
    ),
    (
        'OtterBox Galaxy S10+ Defender Series Case - BLACK, rugged & durable, with port protection, includes holster clip kickstand',
        53.96,
        'Compatible with Galaxy S10+
Multi-layer defense: solid inner shell and soft outer cover (NO BUILT IN SCREEN PROTECTOR)
Belt-clip holster included that doubles as a kickstand for hands-free media viewing
Port covers keep out dust and debris
Includes OtterBox limited lifetime warranty (see website for details)',
        '{51dhqnJURdL._AC_SL1000_.jpg,61C7uWrOX-L._AC_SL1000_.jpg,51Ofx4LmwmL._AC_SL1000_.jpg,61qy38eTNyL._AC_SL1000_.jpg,51uCfX0-IlL._AC_SL1000_.jpg,512jEuJZNWL._AC_SL1000_.jpg}',
        'OtterBox',
        'Black',
        'Rubber, Polycarbonate',
        '	3.43 x 0.6 x 6.61 inches'
    ),
    (
        'Amazon Basics 12-Pack Rechargeable AAA NiMH High-Capacity Batteries, 850 mAh, Recharge up to 500x Times, Pre-Charged',
        11.61,
        'IN THE BOX: 12-pack AAA rechargeable high-capacity batteries; 850 mAh
DEVICE COMPATIBILITY: Ideal battery for a wide range of high- and low-drain devices
RECHARGEABLE: Delivered pre-charged and ready to use; can be recharged up to 500 times with minimal power loss
LOW SELF DISCHARGE: Maintains 80% capacity for 24 months
EASY USE & STORAGE: Ships in Certified Frustration-Free Packaging
NOTE: Same product, new look; appearance of batteries received may vary',
        '{71Cr6j-FWkL._AC_SL1178_.jpg,51zfYajmELL._AC_SL1249_.jpg,515IWi83a4L._AC_SL1160_.jpg,616pflTox5L._AC_SL1500_.jpg,71cl7bRnu2S._AC_SL1500_.jpg,71ViUA1kXwL._AC_SL1493_.jpg}',
        'Amazon Basics',
        '',
        '',
        '9 x 6 x 0.95 inches'
    ),
    (
        'GE 6-Outlet Surge Protector, 2 Pack, 10 Ft Extension Cord, Power Strip, 800 Joules, Flat Plug, Twist-to-Close Safety Covers, Protected Indicator Light, UL Listed, White, 46862',
        25.99,
        'Expand Your Power – This set of two GE-branded 6-Outlet White Surge Protectors with 10ft. cords provides power for your home and office electronics.
Extra-Long Cord – Get optimal reach with the 10ft. extra-long power cord with a flat plug at the end, which lets furniture sit closer to the wall.
Protection – Ensure the safety of your electronics with the 800 Joules protection rating and integrated circuit breaker.
Functional – Use the twist-to-close safety covers to seal off outlets when not in use, to avoid shock, and better organize your power by mounting the surge protector, using the keyholes on the back.
Best in Class – GE is the #1 brand in surge protection and extension cords.',
        '{71BAvhMO66L._AC_SL1500_.jpg,71RUbY1zstL._AC_SL1500_.jpg,71QRe8wwMkL._AC_SL1500_.jpg,71eEApGzQQL._AC_SL1500_.jpg,A1zvKxFEfVL._AC_SL1500_.jpg,71vpGqAy2XL._AC_SL1500_.jpg}',
        'GE',
        'White',
        '',
        '3.55 x 5.5 x 11.6 inches'
    ),
    (
        'Amazon Basics 2-Pack XLR Microphone Cable for Speaker or PA System, All Copper Conductors, 6MM PVC Jacket, 25 Foot, Black',
        26.14,
        'FOR LIVE SOUND & RECORDING: XLR male to female microphone cable for studio recording and live sound
3 PIN CONNECTORS: Zinc alloy 3-pin connectors with nickeling
DURABLE & FLEXIBLE: Protective metal housing and flexible 6.0mm PVC jacket
CLEAR TRANSMISSION: All-copper conductors with inner copper spiral shielding to reduce noise interference
PLUG & PLAY DESIGN: Easily use with XLR-compatible PA systems, speakers, and other sound equipment
IN THE BOX: 25 foot cable; 2-pack',
        '{71WM5WKqB+L._AC_SL1500_.jpg,61toGnzI1oL._AC_SL1337_.jpg,713ceeWDn+L._AC_SL1500_.jpg,81ZrANQPbRL._AC_SL1500_.jpg,91v0QlMTQ8L._AC_SL1500_.jpg}',
        'Amazon Basics',
        'Black',
        '',
        '300 x 0.75 x 0.75 inches'
    ),
    (
        'DYMO Label Maker | LabelManager 280 Rechargeable Portable Label Maker, Easy-to-Use, One-Touch Smart Keys, QWERTY Keyboard, PC and Mac Connectivity, for Home & Office Organization',
        53.8,
        'PORTABLE LABEL MAKER: Label on the go with a handheld printer, powered by a longlasting rechargeable battery
POWERFUL CUSTOMIZATION THROUGH PC OR MAC: Included cable lets you access fonts, graphics, and barcodes loaded to your PC and Mac
TYPE QUICKLY AND EASILY: Label maker lets you quickly type text on the familiar computer style QWERTY keyboard, edit with one touch fast formatting keys and print perfect, professional labels every time
PRINTS CUSTOM LABELS: Choose from 20 plus ways to format text and 200 plus symbols and clip art allows for customization
USE WITH AUTHENTIC DYMO LABELS: For best performance, use authentic DYMO D1 label tapes in 1/4 inches, 3/8 inches, and 1/2 inches (6 millimeter, 9 millimeter, 12 millimeter) widths available in a variety of colors',
        '{41Ujtup8YPL._AC_.jpg,81EsmRc65DL._AC_SL1500_.jpg,91OHeKKaCgL._AC_SL1500_.jpg,91ipshbY3hL._AC_SL1500_.jpg,916O32DcDML._AC_SL1500_.jpg,71MqPb9QVqL._AC_SL1500_.jpg}',
        'DYMO',
        'Black',
        '',
        '4 x 8 x 2 inches'
    ),
    (
        'AT&T CL82207 DECT 6.0 2-Handset Cordless Phone for Home with Answering Machine, Call Blocking, Caller ID Announcer, Intercom and Unsurpassed Range, Silver',
        60.4,
        'LONG RANGE & ANSWERING SYSTEM Experience the best in long-range coverage and clarity, provided by a unique antenna design and advances in noise-filtering technology. This reliable cordless system includes a digital answering machine that can record up to 22 minutes of incoming messages, outgoing announcements and memos, and a voice-guide for easier set up.
SMART CALL BLOCKER & CALLER ID ANNOUNCE Say goodbye to unwanted calls. Robocalls on your landline are automatically blocked from ever ringing through - even the first time. You can also permanently blacklist any number you want with one touch on the delicated key on the handset. The call block directory can store up to 1,000 name and number entries. Plus, the handset announces the name of the caller, so you can decide on answer the call or block it - screening call is never easier.
LARGE 2-INCH SCREEN, BIG TEXT, LIGHTED KEY PAD High-contrast text on the extra-large 2 inch screen makes it easy to read incoming caller ID or call history records. Plus, the enlarged font and extra-large and lighted handset keypad allows for easy dialing in low-light conditions. This feature is especially helpful for those who are visually impaired.
HANDSET SPEAKERPHONE & INTERCOM This cordless system has built-in a simulated full-duplex speakerphone on handset allowing both ends to speak - and be heard - at the same time for conversations that are more true to life. Also designed with useful features like handset intercom to help your daily communications enjoyable.
EXPANDABLE TO 12 HANDSET Easily add accessory handsets (use CL80107 or CL80067 models) up to 12 total, with just one phone jack.',
        '{81HwhJzMp0L._AC_SL1500_.jpg,81hK-wuTa-L._AC_SL1500_.jpg,71HB08xlQSL._AC_SL1500_.jpg,71b8ky1X+TL._AC_SL1500_.jpg,91yeZwo39DL._AC_SL1500_.jpg,71BaoZ7SOWL._AC_SL1500_.jpg}',
        'AT&T',
        'Silver',
        '	Plastic, Metal',
        '6.3 x 7.26 x 3.96 inches'
    ),
    (
        'Jabra Evolve 20 UC Wired Headset, Stereo Professional Telephone Headphones for Greater Productivity, Superior Sound for Calls and Music, USB Connection, All Day Comfort Design',
        45.12,
        'PROFESSIONAL HEADSET: With great sound for calls and music; The Evolve 20 Wired Headset is built to greater productivity with amazing sound quality for calls and music
INCREASE AGENT FOCUS: State of the art; Noise cancelling microphone eliminates background noise to help increase focus. The ear cushions are designed to reduce high frequency sounds; so you and your conversation partner won’t struggle to hear each other
EASILY MANAGE CALLS: With this work headset; you can easily access the most used function; Like volume and mute; As well as answer and end calls quickly and easily directly from the control unit
ALL DAY COMFORT: With foam ear cushions and around the ear design; this Jabra headset is built for comfortable all day use. The discreet boom arm easily tucks into the headband when not in use.
COMPATIBILITY: The Jabra Evolve 20 Wired Headset works with all leading UC platforms. Plus; With a USB connection; Installation is simple as plugging it in',
        '{61nv1b5pS2L._AC_SL1400_.jpg,61B59tKmKbL._AC_SL1400_.jpg,71fhjYZdYUL._AC_SL1400_.jpg,71DAN55mvAL._AC_SL1400_.jpg,51lkUipXMmL._AC_SL1400_.jpg}',
        'Jabra',
        'Black',
        '',
        '3.56 x 2.79 x 0.54 inches'
    ),
    (
        'OtterBox iPhone 13 Pro Max and iPhone 12 Pro Max Symmetry Series+ Case - Clear , ultra-sleek, snaps to MagSafe, raised edges protect camera & screen',
        37.99,
        'Compatible with iPhone 13 Pro Max and iPhone 12 Pro Max
Tested to survive 3X as many drops as military standard (MIL-STD-810G 516.6) with lasting antimicrobial technology *Helps protect the case exterior against many common bacteria. It does not protect you or the screen
Compatible with MagSafe charger and wireless charging, made with 50% recycled plastic and raised edges that protect camera and screen
Thin profile slips easily into tight pockets, the one-piece design pops on and off in a flash and durable protection shields against drops, bumps and fumbles
Includes OtterBox limited lifetime warranty (see website for details)',
        '{6173ZpI--QL._AC_SL1500_.jpg,517iBgDr3AL._AC_SL1500_.jpg,61eK40cOhUL._AC_SL1500_.jpg,51K+I6hDYiL._AC_SL1500_.jpg,519sXdVNEqL._AC_SL1500_.jpg,41yCPhulC9L._AC_SL1500_.jpg}',
        'OtterBox',
        'Clear',
        'Polycarbonate',
        '	6.58 x 3.37 x 0.51 inches'
    ),
    (
        'SimpliSafe 12 Piece Wireless Home Security System w/HD Camera - Optional 24/7 Professional Monitoring - No Contract - Compatible with Alexa and Google Assistant',
        399.99,
        'Ready to protect right out of the box. Just plug in the base station, place your sensors, plug in your Simplicam and start protecting your home in minutes - no tools required.
Optional 24/7 professional monitoring and cloud recording with police, fire & medical dispatch starting at 60c/day - No contracts (SimpliSafe products and professional monitoring services are only offered for sale and supported in the US)
Sound the alarm. Pioneering signal burst technology that is powerful enough to cover homes of every size, with up to 1000 ft. range - no extender needed.
The SimpliCam security camera lets you see what’s happening at home anytime from your phone, tablet or computer and comes with a built-in stainless steel shutter for complete control over privacy.
Motion sensors detect motion within 30 feet, has a 90 degree field of vision and gets along great with pets under 50lbs. Perfect for full range coverage when placed in a corner.
Backups for your backups. Up to 24 hour battery and dual Wi-Fi & cellular connections to keep your home secure and protected from the unexpected.
We''ve got you covered - Customize your SimpliSafe security system with additional sensors for whole home protection - up to 100
Pair your SimpliSafe security system with your preferred smart home integration platform - Works with Amazon Alexa & Google Assistant
1 Year Warranty: Purchase of any SimpliSafe products from unauthorized third parties voids the manufacturer warranty',
        '{61KOJkcD1TL._AC_SL1500_.jpg,71qKks9KvwL._AC_SL1500_.jpg,71onLEougGL._AC_SL1500_.jpg,71123TmI+HL._AC_SL1500_.jpg,71yE-WxXKgL._AC_SL1500_.jpg,61sZqR2d-zL._AC_SL1500_.jpg}',
        'SimpliSafe',
        'White',
        '‎Stainless Steel',
        '‎13.3 x 13.2 x 6.8 inches'
    ),
    (
        'Vortex Optics Crossfire HD Binoculars',
        159.06,
        '10x magnification & 50mm objective lenses, these Crossfire HD binos are optimized with select glass elements to deliver exceptional resolution, cut chromatic aberration and provide outstanding color fidelity, edge-to-edge sharpness and light transmission.
Fully multi-coated lenses increase light transmission with multiple anti-reflective coatings on all air-to-glass surfaces. Roof prism design is valued for greater durability and a more compact size.
Adjustable eyecups twist up and down for comfortable viewing with or without eyeglasses. Center focus wheel adjusts the focus of both binocular barrels at the same time. Diopter (located on right eyepiece) adjusts for differences in a user''s eyes.
Rubber armor provides a secure, non-slip grip, and durable external protection. Binoculars are tripod adaptable allowing use on a tripod or car window mount.
Nitrogen purging and o-ring seals provide water and fogproof performance in all environments. Rugged construction withstands recoil and impact.',
        '{71udD59On2L._AC_SL1500_.jpg,71wnb4K8GoL._AC_SL1500_.jpg,81pR5b1idxL._AC_SL1500_.jpg,816cd6BZFqL._AC_SL1500_.jpg,91qe50c4eJL._AC_SL1500_.jpg,71qX-FSCDAL._AC_SL1500_.jpg}',
        'Vortex',
        'Green',
        'Aluminum',
        '‎9.1 x 9.1 x 9.1 inches'
    ),
    (
        'LifeProof iPhone 11 FRĒ Series Case - BLACK, waterproof IP68, built-in screen protector, port cover protection, snaps to MagSafe',
        55.04,
        'Compatible with iPhone 11
FRĒ: Built-in scratch protector is virtually invisible to the eye and touch; full access to buttons and controls - charge and sync through the USB port
Water and Snow Proof: Fully submergible to 66''/2 m for 1 hour; Sealed from snow, ice, dirt & dust particles - meets or exceeds IP-68 Ingress Protection Rating
Shock Proof: Withstands drops from 66''/2 m - meets or exceeds MIL STD 810F-516
Proper installation of a LifeProof product is important to successful use so please review the installation video and check the user manual to ensure correct installation Includes LifeProof 1-year limited warranty (see website for details)',
        '{51prpqfdMOL._AC_SL1000_.jpg,41lOglWXZgL._AC_SL1000_.jpg,41uLCihMLCL._AC_SL1000_.jpg,41Qo9+xJaYL._AC_SL1000_.jpg,41qXJC2+6NL._AC_SL1000_.jpg,51aloQBruUL._AC_SL1000_.jpg}',
        'LifeProof',
        'Black',
        'Polycarbonate',
        '6.36 x 3.5 x 0.48 inches'
    ),
    (
        'Fossil Men''s Gen 6 44mm Touchscreen Smart Watch with Alexa Built-In, Fitness Tracker, Sleep Tracker, Heart Rate Monitor, GPS, Speaker, Music Control, Smartphone Notifications',
        149.99,
        'COMPATIBILITY - Smartwatches with Wear OS by Google are compatible with phones running the latest version of Android or iOS. Qualcomm 4100+ chipset has 30% enhanced performance. Improved power, more reliable connection and up to 4x range with Bluetooth 5..Case Water Resistance: 3 ATM. Memory: 1GB RAM, 8GB Storage.
ALEXA ENABLED - Get a little extra help with Alexa built-in. Easily access the Amazon Alexa app to get quick news and information, check the weather, set timers and alarms, control smart home devices, and more - all through the sound of your voice.
HEALTH - Automatically tracks activity goals, steps, sleep, heart rate, cardio, and SpO2. Activity modes with GPS keep you on track with your distance and path. Advanced sensors provide data to power your health and fitness tracker apps. Swimproof.
PERSONALIZED STYLE - Always-on display now brighter with more colors and higher pixel count. Thousands of watch faces to personalize your look and always see the time. Hundreds of apps from fitness, music, social, news, stop watches and more.
STAY CONNECTED - Notifications for calls, texts, apps. Automatic time zone and calendar syncing. Answer and make calls directly on your watch when your phone is out of reach. This smart watch features a speaker, microphone, and customizable buttons.
BATTERY LIFE - Our new caseback and included magnetic charger cable allow for faster charging than other generations. Charge up to 80% in 30 minutes. Optimize your battery life with simplified Smart Battery Modes.',
        '{71DP0v5VqhL._AC_UX679_.jpg,71mvonp2sjL._AC_UX679_.jpg,61GJeJoWk2L._AC_UX679_.jpg,61RhoIctWzL._AC_UX679_.jpg,71728IuXZ-L._AC_UX679_.jpg,51nYrlGU-8L._AC_UX679_.jpg}',
        'Fossil',
        'Black',
        'Stainless Steel',
        '44 x 22 x 11.5 millimeters'
    ),
    (
        'Amazon Basics 6 Outlet, Wall Mount Surge Protector, Power Strip, 2 USB ports 3.4A, 1080 Joules',
        15.35,
        '6-outlet surge protector power strip with three-prong plugs
Prevents damage to sensitive devices such as computers, media systems, and more due to sudden power surges and outages
Provides power to up to six electronic devices with 3-line AC protection
Space-saving design can be placed strategically behind an entertainment center or desk, or mounted on the wall
LED light surge protection indicator to show active status
Dual built-in USB ports for charging devices such as tablets, phones, and more',
        '{51F5AuXi-EL._AC_SL1500_.jpg,41R8uo84+7L._AC_SL1500_.jpg,512nFrcdHqL._AC_SL1500_.jpg,61b1BVIyDzL._AC_SL1500_.jpg,61b-ArH9PHL._AC_SL1500_.jpg,71ix4jXvhdL._AC_SL1500_.jpg}',
        '	Amazon Basics',
        'White',
        '',
        '5.43 x 3.74 x 2.02 inches'
    ),
    (
        'Polk Audio Atrium 6 Outdoor Speakers with Bass Reflex Enclosure (Pair, Black) - All-Weather Durability | Broad Sound Coverage | Speed-Lock Mounting System',
        339,
        'Install your Atrium 6 Speakers in any large or open space—by a pool, in the patio, the sunroom, halls or office areas. They will deliver EXCEPTIONALLY GREAT SOUND, OUTDOORS OR INDOORS, no matter where you set them up
Equipped with 5 1/4" Dynamic Balance driver 1" dome tweeter provides WIDER SOUND DISPERSION & SURPRISINGLY POWERFUL BASS. At 100W, frequency response is as low as 50 Hz and PowerPort bass venting, CUTS THROUGH LOUD, JARRING BACKGROUND NOISES
These loudspeakers come with a steeply-angled baffle design that fills expansive spaces with full-range sound that is sure to impress! GREAT AESTHETICS COMBINED & BEAUTIFUL LIVELY SOUND makes these speakers a preferred choice among music lovers worldwide
Atrium''s one-click SPEED-LOCK MOUNTING BRACKET offers EASY, ANTI-SLIP ONE-HANDED INSTALLATION - mount speakers vertically or horizontally, to deliver the best sound in a variety of situations. Simply mount the swiveling C-bracket, adjust the angle and fasten the speaker with a click
THE SPEAKER FOR ALL SEASONS – it’s rugged durability, high environmental endurance & superior quality has helped Polk Outdoor Speakers win the all-weather Certification. They EFFORTLESSLY WITHSTAND EXTREME TEMPERATURES AND HEAVY RAIN year after year',
        '{81uO93enuYL._AC_SL1500_.jpg,71q4CrSqTkL._AC_SL1500_.jpg,71MfApTRQxL._AC_SL1500_.jpg,81omssLqt9L._AC_SL1500_.jpg,91Dcq5jbRzL._AC_SL1500_.jpg,81xseeJVE8L._AC_SL1500_.jpg}',
        '	Polk Audio',
        'Black',
        '',
        '	8.8 x 7.8 x 11.8 inches'
    ),
    (
        'OtterBox iPhone 11 Symmetry Series Case - STARDUST (SILVER FLAKE/CLEAR), ultra-sleek, wireless charging compatible, raised edges protect camera & screen',
        44.99,
        'Compatible with iPhone 11
Clear, thin, sleek, stylish, pocket-friendly design, with wraparound colors and graphics add seamless style
Durable protection shields against drops, bumps and fumbles and raised, beveled edge helps protect touchscreen
One-piece design pops on and off in a flash
Includes OtterBox limited lifetime warranty (see website for details)',
        '{71xq1EYmKVL._AC_SL1500_.jpg,711PJguIX8L._AC_SL1500_.jpg,61LOed7SYRL._AC_SL1500_.jpg,71Jus17mcjL._AC_SL1500_.jpg,71u3-I1kDtL._AC_SL1500_.jpg}',
        'OtterBox',
        '	Stardust (Clear Glitter)',
        'Synthetic Rubber',
        '6.19 x 3.27 x 0.47 inches'
    ),
    (
        'OtterBox iPhone 13 Pro Max & iPhone 12 Pro Max Defender Series Case - BLACK/REALTREE (CAMO), rugged & durable, with port protection, includes holster clip kickstand',
        34.95,
        'Compatible with iPhone 13 Pro Max & iPhone 12 Pro Max
Multi-layer defense from the solid inner shell and resilient outer slipcover with port covers that block dirt, dust and lint from getting into jacks and ports
Tested to survive 4X as many drops as military standard (MIL-STD-810G 516.6) with raised edges protect camera and screen
Made of 50% recycled plastic, the screenless design provides flawless touch response and included holster works as a belt clip and a hands-free kickstand
Includes OtterBox limited lifetime warranty (see website for details)',
        '{8149WAc1gPL._AC_SL1500_.jpg,81CLDE7yPxL._AC_SL1500_.jpg,81ySCWZ6VEL._AC_SL1500_.jpg,61CbD6YJOzL._AC_SL1500_.jpg,71DPV2tFQML._AC_SL1500_.jpg,613E+2inwUL._AC_SL1500_.jpg}',
        'OtterBox',
        '	Realtree Camo',
        'Polycarbonate',
        '	7.28 x 4.33 x 1.65 inches'
    ),
    (
        'PYLE-PRO Portable Megaphone Speaker PA Bullhorn - Built-in Siren, 50W Adjustable Volume Control in 1200 Yard Range, Ideal for Any Outdoor Sports, Cheerleading Fans&Coaches or for Safety Drills-PMP50',
        35.6,
        'CLEAR SOUND & LONG RANGE: Be heard up to 1200 feet away with this professional megaphone. Amplify your voice with clarity. This bullhorn speaker produces powerful 50 watt sound. Perfect for crowd control or outdoor events
ERGONOMIC GRIP & LIGHT-WEIGHT: This portable megaphone with siren is amazingly lightweight and has been fitted with an advantageous conveying strap. It comes with handheld mic & works with just 8 C batteries. Bring it with to your next occasion
MULTI FUNCTION: This bullhorn megaphone has 3.5 millimeter aux input has talk, siren and volume control options has been utilized by indoor & outdoor sports activities, police, firefighters, cheerleading, schools or director
SIREN ALARM MODE: Amplifies an emergency tone with adjustable volume control through the megaphone speaker. Pyle PMP50 megaphone bullhorn needs 8 C batteries & features a built in siren so you can get everyone’s attention fast. Be heard loud and clear
DETACHABLE HANDHELD MIC: This compact director megaphone can hold the microphone up to your mouth and point the megaphone at any direction allowing for use both indoors and out. Whether on the athletic field, road or in emergency response situations',
        '{81pUJCSM5BL._AC_SL1500_.jpg,61QkxLDCp6L._AC_SL1000_.jpg,51KqPUOLb4L._AC_SL1000_.jpg,61bQjXeGHiL._AC_SL1000_.jpg,61mvWSPlhrL._AC_SL1000_.jpg,71Bw6FrG7EL._AC_SL1000_.jpg}',
        'Sound Around',
        '',
        '',
        '9.2 x 13.4 x 8.1 inches'
    ),
    (
        'Skullcandy Indy Evo In-Ear Wireless Earbuds, 30 Hr Battery, Microphone, Works with iPhone Android and Bluetooth Devices - Mint',
        39.89,
        'Note : If the size of the earbud tips does not match the size of your ear canals or the headset is not worn properly in your ears, you may not obtain the correct sound qualities or call performance. Change the earbud tips to ones that fit more snugly in your ear.Specific uses for product : Gym, Personal, iPhone, Android, Sports, Gaming, School, Travel, Workouts
Skullcandy Supreme Sound - Relax, workout or skate listening to your favorite tunes. The Indy Evo ensures supreme sound through awesome bass, powerful treble, high highs and much more. stability ear gels the Indy Evo is designed to stay
Hours of Power - The Indy Evo holds a total of 30 hours charge, the case holds 24 hours and the buds hold 6 as well either bud can take calls or activate your assistant. Use rapid charge and get 2 hours of play from only 10 minutes charge
Never lost with Tile - With Tile tech, Skullcandy makes it super easy to track down either earbud and keep your gadgets safe! Download the Tile app and follow the instructions to activate
Leave your phone in your pocket - you spend too much time on it anyway, control your music, answer calls, activate an assistant, switch EQ modes and more from the Indy Evo
Buy With Confidence - 1 Year warranty included with the Indy Evo, whether you''re an adult or child be sure to wear your earbuds in full confidence',
        '{61zRSnjH-xL._AC_SL1500_.jpg,71fcqmfHt3L._AC_SL1500_.jpg,71y30u6pqtL._AC_SL1500_.jpg,71hVRn3OOOL._AC_SL1500_.jpg,71oY4ShDsoL._AC_SL1500_.jpg,71WUnceT2RL._AC_SL1500_.jpg}',
        'Skullcandy',
        '	Pure Mint',
        '',
        '7.28 x 4.61 x 1.38 inches'
    ),
    (
        'OtterBox iPhone 14 Pro Commuter Series Case - BLACK , slim & tough, pocket-friendly, with port protection',
        29.08,
        'Compatible with iPhone 14 Pro
DROP+ 3X as many drops as military standard (MIL-STD-810G 516.6) works with wireless and MagSafe charging pads (no magnets in case)
Dual-layer thin phone case is made with 35% recycled plastic
Pocket-friendly design with a secure grip.
Includes OtterBox limited lifetime warranty (see website for details)',
        '{61HLnRoy6YL._AC_SL1500_.jpg,51RZvMXZLwL._AC_SL1000_.jpg,61Vw5BqVmhL._AC_SL1500_.jpg,81klqffCIBL._AC_SL1500_.jpg,71mUhoOl+LL._AC_SL1500_.jpg,81IinICUPrL._AC_SL1500_.jpg}',
        'OtterBox',
        'Black',
        '	Syntheic Rubber, Polycarbonate',
        '6.06 x 3.11 x 0.58 inches'
    ),
    (
        'SAMSUNG 15W Wall Charger Type C (USB-C Cable Included), Black',
        14.61,
        'USB PD TYPE C FLEXIBILITY: Enjoy the flexibility of the latest standard USB PD Type-C Ports; Alternate cable types to charge various mobile devices and, with USB Type-C on both ends, never worry about the cable direction; And there''s no need to change the adapter plugged into your wall outlet; Just plug in!*
15W FAST CHARGING: Give your devices the powerful charging support they deserve; Enjoy 15W Fast Charging for a wide range of tech essentials with any USB-C enabled device**
POWER SAFELY: Keep your devices safe from overcurrent, short circuits and high temperature; Charge safely and securely even in unstable electric environments and without worrying about noise and current leakage***
COMPATIBLE PHONE MODELS: All Samsung Galaxy Smart Phones (S8 and higher), Galaxy Fold and Z Flip, Fold2, Z Flip2, Z Fold3, Z Flip3, Galaxy S8, S8+, S9, S9+, S10e, S10, S10+, S10 5G, S20 5G, S20+ 5G, S20 Ultra 5G, S21 5G, S21+ 5G, S21 Ultra 5G, S20 FE 5G and S21 FE 5G; Galaxy Note8, Note9, Note10, Note10+, Note10+ 5G, Note20 5G, and Note20 Ultra 5G; Galaxy A10e, A20, A50, A02s, A12, A32 5G, A42 5G, and A52 5G
*Compatible with standard USB Type-C cables; For optimum results, please use with authentic Samsung cables which can be purchased separately; **Actual charging speed may also vary depending on the actual usage, charging conditions, connected devices and other factors; Depending on factors such as connected device, cable, and charging environment, device may not charge properly; ***Based on internal testing.',
        '{71r3o-BIYHL._AC_SL1500_.jpg,71p1OOpiXSL._AC_SL1500_.jpg,71wfg+hGf+L._AC_SL1500_.jpg,811QD1fH5fL._AC_SL1500_.jpg,71VAGzOUD+L._AC_SL1500_.jpg}',
        'SAMSUNG',
        'Black',
        '',
        '2.81 x 1.46 x 0.89 inches'
    ),
    (
        'OtterBox iPhone 14 Pro Max Commuter Series Case - BLACK, Slim & Tough, Pocket-Friendly, with Port Protection',
        31.99,
        'Compatible with iPhone 14 Pro Max
DROP+ 3X as many drops as military standard (MIL-STD-810G 516.6) works with wireless and MagSafe charging pads (no magnets in case)
Dual-layer thin phone case is made with 35% recycled plastic
Pocket-friendly design with a secure grip
Includes OtterBox limited lifetime warranty (see website for details)',
        '{61WdzD0MyuL._AC_SL1500_.jpg,516imjlnvOL._AC_SL1000_.jpg,61Eb8+KE8GL._AC_SL1500_.jpg,81-sPME92sL._AC_SL1500_.jpg,712z8OCkqnL._AC_SL1500_.jpg,810GNlVtKuL._AC_SL1500_.jpg}',
        'OtterBox',
        'Black',
        'Polycarbonate',
        '6.58 x 3.35 x 0.58 inches'
    ),
    (
        'Pyle PDU Power Strip Surge Protector - 150 Joules,9 Outlet Strips Surge Protector z - Heavy-Duty Electric Extension Cord Strip - 1U Rack Mount Protection Power Outlet Strip - 9 Front Switch - PDBC70',
        55.92,
        'RELIABLE SURGE PROTECTION: The power supply PDU surge protector strip features 150 joules energy dissipation and 1200 amp peak impulse current to protect your equipment when voltage fluctuates, swell, or spike during storms and power outages
9 OUTLET: Equipped w/ 9 total rear outlets so you can turn one outlet into nine w/ the surge-protector power strip. Has a front power switch that you can use to completely shut off electronics when not in use for power/energy saving
ELIMINATES RFI AND EMI: The built-in ac noise filters get rid of unwanted radio frequency (RFI) and electromagnetic interference (EMI) to improve the stability of the equipment and prolong the service life of your electronics at home or office
9 INDIVIDUAL SWITCH: The 9 front panel power switches are the perfect solution for controlling the power flow to any of your equipment. This power strip surge protector is designed for 1U rack mount installation for hassle-free cable management
BUILT TO LAST: Made with sturdy steel chassis and front panel and 6ft long power cord (3x14 AWG) that can withstand light tugging so you can convert any standard AC outlet into a mini-charging station for smartphone/laptops w/ bulky charger',
        '{81CS1dIWGrL._AC_SL1500_.jpg,71sI+crQJQL._AC_SL1500_.jpg,81ABifvsmBL._AC_SL1500_.jpg,71gjiiJhUgL._AC_SL1500_.jpg,81sIrvil0-L._AC_SL1500_.jpg,71pUXwTL2OL._AC_SL1500_.jpg}',
        'Pyle',
        '',
        '',
        '19 x 6.5 x 1.75 inches'
    ),
    (
        'OtterBox Samsung Galaxy A12 Commuter Series Lite Case - BLACK, slim & tough, pocket-friendly, with open access to ports and speakers (no port covers),',
        10.17,
        'Compatible with Samsung Galaxy A12
DOES NOT come with a screen protector
Soft inner and hard outer layers absorb and deflect impacts, open access to ports and speakers (no port covers)
Thin profile slips in and out of pockets
Includes OtterBox limited lifetime warranty (see website for details)',
        '{61rHWSniT+L._AC_SL1000_.jpg,61t8XyKnlbL._AC_SL1000_.jpg,611P39oEvlL._AC_SL1000_.jpg}',
        'OtterBox',
        'Black',
        '	Synthetic Rubber',
        '6.72 x 3.28 x 0.57 inches'
    ),
    (
        'Thrustmaster TCA Yoke PACK Boeing Edition (Xbox One and Xbox Series X|S), and compatible with PC',
        375.99,
        'Officially-licensed Boeing yoke and throttle quadrant inspired by the iconic Boeing 787 airliner (1:1 scale ergonomic replicas)
Suspended PENDUL_R mechanism replicating the pendular sensation experienced in genuine Boeing Dreamliner airliners (8.3-inch / 21-cm range of travel)
Adjustable yoke springs for smooth motion and flexible linear resistance, allowing for an outstanding level of control
Innovative, 100% metal internal yoke structure for excellent sturdiness and balanced weight distribution of controls, as well as an extended product lifespan
Iconic Boeing autopilot feature included in throttle quadrant: control of the aircraft’s altitude, airspeed and heading
Throttle levers can be swapped with the speed brake and flaps levers (4 levers included in total)
35 action buttons, and magnetic technology for each of the flight controllers’ main axes (yoke and throttle quadrant)
Flight controllers automatically integrated into the game Microsoft Flight Simulator (sold separately) on Xbox Series X|S and PC
Attachment systems included for both TCA Yoke Pack Boeing Edition flight controllers
Officially licensed for Xbox (Xbox One and Xbox Series X|S), and compatible with PC',
        '{71ukjui68FL._SL1500_.jpg,71wAuV2GkWL._SL1500_.jpg,71Fdc3g69YL._SL1500_.jpg,71hzUO6qLGL._SL1500_.jpg,71TQ9ENGAvL._SL1500_.jpg,71ubkDbp3AL._SL1500_.jpg,71GPIlt40DL._SL1500_.jpg}',
        'Thrustmaster Flight SIM',
        '',
        '',
        '	19 x 15 x 19 inches'
    ),
    (
        'Amazon Basics Clear Thermal Laminating Plastic Paper Laminator Sheets - 9 x 11.5-Inch, 200-Pack, 3mil',
        15.56,
        'Compatible with leading laminators; simply place document in pouch and insert into laminator
Quality material provides excellent clarity and durability; 3mil thickness; photo-safe
Helps to seal and protect your documents',
        '{51rcE1Sw6yL._AC_SL1500_.jpg,41YCgP4z-OL._AC_SL1500_.jpg,71FweGkZv+L._AC_SL1500_.jpg,51RA5Iog1UL._AC_SL1500_.jpg,81g3yFhRhtL._AC_SL1500_.jpg}',
        '	Amazon Basics',
        '',
        '',
        '9 x 1.3 x 11.5 inches'
    ),
    (
        'Scotch Thermal Laminating Pouches, 100 Pack Laminating Sheets, 3 Mil, 8.9 x 11.4 Inches, Education Supplies & Craft Supplies, For Use With Thermal Laminators, Letter Size Sheets (TP3854-100)',
        15.98,
        'Safe for use with most household cleaners*
Thermal Pouches up to 8.5"x11"
Ideal for protecting items from damage Delivers a clear, professional and photo-safe finish
100 per package
Great for children''s artwork, signs, flyers, schedules, certificates, and other frequently used documents in the home, office or classroom
Protects and adds professionalism to business documents
Ultra clear finish to let important information show through
Ideal for marker-proof, tear-proof and spill-proof paper items that you want to last
Recommended to use with Scotch Thermal Laminators',
        '{71GknZiaKXL._AC_SL1500_.jpg,71QgnBNwBAL._AC_SL1500_.jpg,716dN4lYdSL._AC_SL1500_.jpg,81r6jA5erbL._AC_SL1500_.jpg,81-zFh9JhvL._AC_SL1500_.jpg,71La9dV3V-L._AC_SL1500_.jpg}',
        'Scotch',
        'Clear',
        'Laminate',
        '0.75 x 8.9 x 11.4 inches'
    ),
    (
        'Apple MagSafe Charger - Wireless Charger with Fast Charging Capability, Type C Wall Charger, Compatible with iPhone and AirPods',
        36.99,
        'The MagSafe Charger makes wireless charging a snap. The perfectly aligned magnets attach to your iPhone 14, iPhone 14 Pro, iPhone 13, iPhone 13 Pro, iPhone 12, and iPhone 12 Pro and provide faster wireless charging up to 15W.
The MagSafe Charger maintains compatibility with Qi charging, so it can be used to wirelessly charge your iPhone 8 or later, as well as AirPods models with a wireless charging case, as you would with any Qi-certified charger.
The magnetic alignment experience only applies to iPhone 14, iPhone 14 Pro, iPhone 13, iPhone 13 Pro, iPhone 12, and iPhone 12 Pro models.
This wireless charger has a USB-C integrated cable (1 m)
Recommended to be used with Apple 20W USB-C Power Adapter (sold separately)',
        '{71f792LZY2L._AC_SL1500_.jpg,91ghhfky4LL._AC_SL1500_.jpg,71sufjjlyTL._AC_SL1500_.jpg,71zNVcjJlVL._AC_SL1500_.jpg}',
        'Apple',
        'White',
        '',
        ''
    ),
    (
        'Scotch Thermal Laminating Pouches, 200 Pack Laminating Sheets, 3 Mil, 8.9 x 11.4 Inches, Education Supplies & Craft Supplies, For Use With Thermal Laminators, Letter Size Sheets (TP3854-200)',
        26.59,
        'Safe for use with most household cleaners*
8.9 in x 11.4 in, Letter Size 200 per package
Ideal for protecting items from damage Delivers a clear, professional and photo-safe finish
Protects and adds professionalism to business documents
Great for children''s artwork, signs, flyers, schedules, certificates, and other frequently used documents in the home, office or classroom
Ultra clear finish to let important information show through
Ideal for marker-proof, tear-proof and spill-proof paper items that you want to last
Recommended to use with Scotch Thermal Laminators
*Do not sanitize pouches before the lamination. Test a small amount in a corner before use, especially on important documents. Do not use acetone',
        '{71H4beBDKKL._AC_SL1500_.jpg,71PtqW+AZAL._AC_SL1500_.jpg,716dN4lYdSL._AC_SL1500_.jpg,81r6jA5erbL._AC_SL1500_.jpg,81-zFh9JhvL._AC_SL1500_.jpg,71dENvZ4KiL._AC_SL1500_.jpg}',
        'Scotch',
        '',
        'Polyester',
        '‎1.3 x 8.5 x 11 inches'
    ),
    (
        'Sony ZX Series Wired On-Ear Headphones, Black MDR-ZX110',
        16.99,
        'Lightweight 1.38 in neodymium dynamic drivers deliver a punchy, rhythmic response to even the most demanding tracks. Driver Unit: Dome type.Specific uses for product : Travel
The swiveling earcup design allows easy storage when you’re not using them, and enhances portability when you’re traveling
Cushioned earpads for total comfort and enfolding closed-back design seals in sound
The wide frequency range—spanning 12 Hz to 22 kHz—delivers deep bass, rich midrange, and soaring highs
Plug: L-shaped stereo mini plug 3.5mm. Impedance (Ohm) 24 ohm (1KHz). Cord Length 3.94 ft',
        '{71ZC0hq5mGL._AC_SL1500_.jpg,61Qb9N6wq-L._AC_SL1500_.jpg,61+Al0YynpL._AC_SL1500_.jpg,71BmfOgF47L._AC_SL1500_.jpg}',
        'Sony',
        'Black',
        '',
        '5.87 x 1.81 x 7.87 inches'
    ),
    (
        'Amazon Basics microSDXC Memory Card with Full Size Adapter, A2, U3, Read Speed up to 100 MB/s, 128 GB, Black',
        10.09,
        'WIDE COMPATIBILITY: Compatible with smartphones, tablets, cameras, GoPro/action cameras, laptops, desktop computers, DSLRs, drones, Nintendo Switch/other portable consoles and much more. Includes SD adapter. Note: Please refer to compatible devices list (keep update) in below Product guides for more detail.
HIGH QUALITY STORAGE: Perfect for high resolution photos, for recording and storing Full HD/4K videos and any other data type
ULTRA FAST: Read speed up to 100mb/s. Write speed up to 60mb/s (varies according to memory size). UHS, U3, Class 10 and A2 speed classes for an optimal smartphone experience
LASTING RELIABILITY: Shockproof, IPX6 waterproof, temperature-proof (-10° to 80°), X-Ray-proof and magnetic-proof
Note: Actual storage capacity shown by a device''s OS may be less than the capacity indicated on the product label due to different measurement standards. The available storage capacity is higher than 116GB.
Read and write speeds are based on internal tests conducted under controlled conditions. Actual speeds may vary depending on device used, interface, conditions of use, and other factors
Note: Please note that we are changing the product''s printing and packaging; both 2 versions are the same. (Old version does not show the A2 logo, but its performance is A2 level.)
Note: Check whether your device is compatible with the MicroSD capacity, for example, if the device only supports a maximum capacity of 64GB, it may not recognize 128GB MicroSDs above',
        '{61DwejyTGkL._AC_SL1500_.jpg,71swf31eHtL._AC_SL1500_.jpg,81odhbhx3BL._AC_SL1500_.jpg,818qMd1TCDL._AC_SL1500_.jpg,81E2vgO9vmL._AC_SL1500_.jpg,815qkPHsGZL._AC_SL1500_.jpg}',
        'Amazon Basics',
        'Black',
        '',
        '	‎0.59 x 0.43 x 0.04 inches'
    ),
    (
        'SAMSUNG EVO Select Micro SD-Memory-Card + Adapter, 256GB microSDXC 130MB/s Full HD & 4K UHD, UHS-I, U3, A2, V30, Expanded Storage for Android Smartphones, Tablets, Nintendo-Switch (MB-ME256KA/AM)',
        19.99,
        'ALL THE SPACE YOU NEED: Store tons of media on your phone, load games or download more apps on your tablet at top-notch speed, making transfers seamless and reliable
FAST AND SMOOTH: With superfast U3, class 10 rated transfer speeds of up to 130MB/s¹,²and UHS-I Interface³ big apps load and run smoothly, while 4K video remains sharp with A2, V30, and USH-I Interface
EXPAND AND STORE BIG: Find your perfect fit from 64GB, 128GB, 256GB and 512GB; Select the best capacity for all your memories. Speed class: U3
YOU''RE FULLY PROTECTED: EVO Select Plus provides reliable storage and takes on life’s adventures with water⁴, temperature⁵, X-ray⁶, ⁷magnet, drop⁸, and wears⁹ out protection; Backed by a 10-year limited warranty; Proofs are for the microSD card and do not include the adaptor
FLASH MEMORY CARD: Performance and reliability you can count on from the flash memory brand; All firmware and components are produced in-house',
        '{71tK21fYkDL._AC_SL1500_.jpg,71i-yU0uG3L._AC_SL1500_.jpg,71OHHkhWcUL._AC_SL1500_.jpg,71XPRWiL8EL._AC_SL1500_.jpg,71W5fI54mzL._AC_SL1500_.jpg,71RdhqxBBNL._AC_SL1500_.jpg}',
        'SAMSUNG',
        'Blue',
        '',
        '‎0.59 x 0.43 x 0.03 inches'
    ),
    (
        'SanDisk 128GB Extreme PRO SDXC UHS-I Memory Card - C10, U3, V30, 4K UHD, SD Card - SDSDXXD-128G-GN4IN',
        22.88,
        'Save time with card offload speeds of up to 200MB/s powered by SanDisk QuickFlow Technology (Up to 200MB/s read speeds, engineered with proprietary technology to reach speeds beyond UHS-I 104MB/s, require compatible devices capable of reaching such speeds. Based on internal testing; performance may be lower depending upon host device, interface, usage conditions and other factors. 1MB=1,000,000 bytes. X = 150KB/sec. SanDisk QuickFlow Technology is only available for 64GB, 128GB, 256GB, 512GB and 1TB capacities. 1GB=1,000,000,000 bytes. 1TB=1,000,000,000,000 bytes. Actual user storage less.)
Pair with the SanDisk Professional PRO-READER SD and microSD to achieve maximum speeds (sold separately)
Shot speeds up to 90MB/s (Write speed up to 90MB/s. Based on internal testing; performance may be lower depending upon host device. 1MB=1,000,000 bytes. X = 150KB/sec.)
Perfect for shooting 4K UHD video and sequential burst mode photography (Full HD (1920x1080) and 4K UHD (3840 x 2160) video support may vary based upon host device, file attributes and other factors. See HD page on SanDisk site.) Sequential Write Performance: Up to 90MB/s
UHS Speed Class 3 (U3) and Video Speed Class 30 (V30) (UHS Speed Class 3 designates a performance option designed to support 4K UHD video recording with enabled UHS host devices. UHS Video Speed Class 30 (V30), sustained video capture rate of 30MB/s, designates a performance option designed to support real-time video recording with UHS enabled host devices. See the SD Association’s official website.)',
        '{81wwLOgkLgL._AC_SL1500_.jpg,811SwFsGiFL._AC_SL1500_.jpg,91mlqzCSaJL._AC_SL1500_.jpg,914qgzBVciL._AC_SL1500_.jpg,81tF17771KL._AC_SL1500_.jpg,81h7MHVbUaL._AC_SL1500_.jpg}',
        'SanDisk',
        '‎Dark gray/Black',
        '',
        '	‎0.09 x 0.94 x 1.26 inches'
    ),
    (
        'Upgraded, Anker Soundcore Bluetooth Speaker with IPX5 Waterproof, Stereo Sound, 24H Playtime, Portable Wireless Speaker for iPhone, Samsung and More',
        27.99,
        'ASTONISHING SOUND: Breathtaking stereo sound with deep bass is delivered with exceptional clarity and zero distortion by two high-sensitivity drivers and a patented bass port.
24H WORRY-FREE BATTERY LIFE: Anker''s exclusive, long-life battery technology provides the Bluetooth speaker 24 hours of sublime music.
WATERPROOF BUILD: IPX5-rated casing offers complete protection against liquids.
EFFORTLESS CONNECTIVITY: Bluetooth 5.0 ensures instant pairing and maintains a strong connection up to 66 ft.
Powerful Bass: This Bluetooth speaker has an in-house tuned digital signal processor that analyzes low frequencies to intensify the song’s bass in real-time.
GRAB, GO, LISTEN: Lightweight, yet robust unibody design provides the perfect soundtrack for the park, yard, or anywhere else at home or away.',
        '{61iJoQoiVnL._AC_SL1200_.jpg,41Jv9pt0-aL._AC_.jpg,71j39eytenL._AC_SL1500_.jpg,71Z-IJK5drL._AC_SL1500_.jpg,81h0Cj-k5sL._AC_SL1500_.jpg,61VD3X-9nOL._AC_SL1500_.jpg}',
        'Anker',
        'Black',
        '',
        '6.5 x 2.1 x 1.9 inches'
    ),
    (
        'Neenah Index Cardstock, 8.5" x 11", 90 lb/163 gsm, White, Lightweight, 94 Brightness, 300 Sheets (91437)',
        12.99,
        'BRIGHT WHITE CARDSTOCK: The smooth texture and crisp bright white color of our 90 lb cardstock produces high resolution images and prints for attention-getting and professional documents
LIGHTWEIGHT CARDSTOCK: This is 90 lb. INDEX cardstock, which is measured differently than COVER cardstock. For a weight comparison, it’s heavier than 67 lb. Bristol cardstock, yet lighter than 65 lb. COVER cardstock
LETTER SIZE CARDSTOCK: This 8.5" x 11" white cardstock comes in a pack of 300, so you always have enough on hand
IDEAL FOR EVERYDAY PROJECTS This smooth cardstock is ideal for documents, flyers, brochures, calligraphy hand lettering, and crafting!
PRINTER COMPATIBLE: Works well with printers including inkjet and laser for jam-free every day printing Plus, it''s crafted to be lignin and acid-free for long-lasting results
UNIVERSAL USES: You will be amazed at everything you can do with this cardstock featuring a clean, bright white smooth finish that makes text, photos, and graphics pop
WORKS GREAT WITH OTHER NEENAH PRODUCTS: Mix and match Neenah Cardstocks or pair it with Astrobrights Color Paper or Astrobrights Colored Cardstock for bold and vibrant impact',
        '{41jIzwx4RXL._AC_.jpg,417d8yL440L._AC_.jpg}',
        'Neenah',
        'white',
        'Paper',
        '‎11 x 8.5 x 2 inches'
    ),
    (
        'Techni Mobili Kid''s Gaming and Student Racer Chair with Wheels, Resemblance of a sport''s car interior, Polypropylene, Blue',
        77.86,
        'Pneumatic Height adjustable Seat
Non-marking nylon casters
Techni Flex upholstery
Racer style design
1 year limited warranty',
        '{61uh3ykyY4L._AC_SL1500_.jpg,81t3XQD7-6L._AC_SL1500_.jpg,71Y-xMHF2CL._AC_SL1500_.jpg,71WvCMpZgaL._AC_SL1500_.jpg,517vcaZHLVL._AC_SL1500_.jpg,517-Ay7gyzL._AC_SL1500_.jpg}',
        'Techni Mobili',
        'Blue',
        '	Polyurethane, Plastic',
        '22"D x 21.25"W x 35.25"H'
    ),
    (
        'Brother Genuine Cartridge TN760 High Yield Black Toner',
        119.49,
        'Brother genuine cartridge: Brother TN 760 is a Brother genuine cartridge: that produces mono laser prints in high quality you can depend on
Yields up to 3,000 Pages: This replacement high yield black toner cartridge can print approximately 3,000 pages(1)
Seamless integration: This professional replacement black toner cartridge creates rich blacks and is engineered to work in seamless unison with your Brother laser printer
Amazon dash replenishment cartridge: Upon activation with your Dash eligible Brother printer, TN 760 replacement cartridges can be automatically ordered through Amazon Dash Replenishment and sent directly to your door
For use with brother laser printers and all in ones DCP L2550DW, HL L2350DW, HL L2370DW, HL L2370DWXL, HL L2390DW, HL L2395DW, MFC L2710DW, MFC L2750DW, MFC L2750DWXL',
        '{71+JaPq0eaL._AC_SL1500_.jpg,71hMWMMyh8L._AC_SL1500_.jpg,71nQQPPqjRL._AC_SL1500_.jpg}',
        'Brother',
        'Black',
        'plastic',
        '‎14 x 6.9 x 4.9 inches'
    ),
    (
        'Brother Genuine Standard Yield Toner Cartridge, TN730, Replacement Black Toner, Page Yield Up To 1,200 Pages, Amazon Dash Replenishment Cartridge',
        45.48,
        'Brother genuine cartridge: Brother TN-730 is a Brother genuine cartridge: that produces mono laser prints in high quality you can depend on. ; Brother Genuine toner produces crisp, sharp prints that withstand the test of time
Yields up to 1,200 Pages: This replacement standard-yield black toner cartridge can print approximately 1,200 pages(1). ; Intelligently engineered to work in seamless unison with your Brother printer
Seamless integration: This professional replacement black toner cartridge creates rich blacks and is engineered to work in seamless unison with your Brother laser printer
Amazon dash replenishment cartridge: Upon activation with your Dash-eligible Brother printer, TN-730 replacement cartridges can be automatically ordered through Amazon Dash Replenishment and sent directly to your door
For use with brother laser printers and all in ones DCP-L2550DW, HL-L2350DW, HL-L2370DW, HL-L2370DW XL, HL-L2390DW, HL-L2395DW, MFC-L2710DW, MFC-L2750DW, MFC-L2750DW XL',
        '{7197bPYLO4L._AC_SL1500_.jpg,81DdIy-2NYL._AC_SL1500_.jpg,81xgHxCaqzL._AC_SL1500_.jpg,71nSrkheQKL._AC_SL1500_.jpg,81qPJzUfY+L._AC_SL1500_.jpg,717RdSIlI+L._AC_SL1500_.jpg}',
        'Brother',
        'TN730',
        'plastic',
        '‎14 x 4.9 x 6.9 inches'
    ),
    (
        'SOAR NCAA Wireless Charger and Desktop Organizer',
        20.73,
        'CHARGE WIRELESSLY / 10 WATTS - Quit worrying about lost, broken or disconnected cables with wireless charging! Simply place your phone on the dock and power up
Qi Compatible - Works with all Devices with Wireless Charging Capability
Charge your phone and organize your desktop - Large enough to hold Pens, Pencils, Knives, Scissors, Glasses Etc.
Officially Licensed NCAA Product - Great gift for the ultimate fan! Place it on your desk or in your office & support your team to victory!
CASE FRIENDLY - Charges your phone through your case / (Includes Micro USB Cable - compatible with all USB Chargers)
Included Components: Desktop Organizer;Micro Usb Cabke',
        '{712EQFQ9nKL._AC_UX342_.jpg,81s+OIuO+5L._AC_UX385_.jpg,71tqnFcz2IL._AC_UX385_.jpg,81H3tnGZ2fL._AC_UX466_.jpg,71hRJQDf5bL._AC_UX385_.jpg}',
        'SOAR',
        'Team Color',
        '',
        ''
    ),
    (
        'Hospitality Consumer HG90241-006 Hawthorne 12.75 oz. Hi-Ball (Set of 6), Clear',
        59.99,
        'The Hawthorne collection is achingly glamorous and this comprehensive Cocktail collection is the ideal showstopper at the bar
Manufacturer: Hospitality Consumer
Dishwasher Safe
Country Of Origin: CN',
        '{41zjtBxyyoL._SL1282_.jpg,41-Ose1rICL.jpg,410Ab9SlDTL.jpg,41ZnqoZJtTL.jpg}',
        '	Hospitality Consumer',
        'Clear',
        'Glass',
        '2.5 x 2.5 x 6.25 inches'
    ),
    (
        'SanDisk 256GB Extreme microSDXC UHS-I Memory Card with Adapter - Up to 190MB/s, C10, U3, V30, 4K, 5K, A2, Micro SD Card - SDSQXAV-256G-GN6MA',
        24.81,
        'Save time with card offload speeds of up to 190MB/s powered by SanDisk QuickFlow Technology (Up to 190MB/s read speeds, engineered with proprietary technology to reach speeds beyond UHS-I 104MB/s, requires compatible devices capable of reaching such speeds. Based on internal testing; performance may be lower depending upon host device interface, usage conditions and other factors. 1MB=1,000,000 bytes. SanDisk QuickFlow Technology is only available for 64GB, 128GB, 256GB, 400GB, 512GB, and 1TB capacities. 1GB=1,000,000,000 bytes and 1TB=1,000,000,000,000 bytes. Actual user storage less.)
Pair with the SanDisk Professional PRO-READER SD and microSD to achieve maximum speeds (sold separately), Compatible with microSDHC, microSDXC, microSDHC UHS-I, and microSDXC UHS-I supporting host devices
Up to 130MB/s write speeds for fast shooting (Based on internal testing; performance may be lower depending upon host device interface, usage conditions and other factors. 1MB=1,000,000 bytes.)
4K and 5K UHD-ready with UHS Speed Class 3 (U3) and Video Speed Class 30 (V30) (Compatible device required. Full HD (1920x1080), 4K UHD (3840 x 2160), and 5K UHD (5120 X 2880) support may vary based upon host device, file attributes and other factors. See HD page on SanDisk site. UHS Speed Class 3 (U3) designates a performance option designed to support real-time video recording with UHS-enabled host devices. Video Speed Class 30 (V30), sustained video capture rate of 30MB/s, designates a performance option designed to support real-time video recording with UHS-enabled host devices. See the SD Association’s official website.)
Rated A2 for faster loading and in-app performance (A2 performance is 4000 read IOPS, 2000 write IOPS. Results may vary based on host device, app type and other factors)',
        '{719ZXZP+5LL._AC_SL1500_.jpg,71sXK8lfQwL._AC_SL1500_.jpg,81JdU5CVySL._AC_SL1500_.jpg,81UDwWaka2L._AC_SL1500_.jpg,7125Gn7LbWL._AC_SL1500_.jpg,81dOA8U3ROL._AC_SL1500_.jpg}',
        'SanDisk',
        'Gold/Red',
        '',
        '‎0.04 x 0.59 x 0.43 inches'
    ),
    (
        'Amazon Basics HDMI Cable, 18Gbps High-Speed, 4K@60Hz, 2160p, Ethernet Ready, 6 Foot, Black',
        8.65,
        'IN THE BOX: HDMI cable (A Male to A Male) for connecting 2 HDMI-enabled devices; 6 feet long in Black
DEVICE COMPATIBLE: Connects Blu-ray players, Fire TV, Apple TV, PS4, PS3, Xbox One, Xbox 360, and computers to TVs, displays, A/V receivers, and more
SUPPORTS 4K VIDEO: Supports 4K video at 60 Hz, 2160p, 48-bit/px color depth, as well as bandwidth up to 18Gbps, Ethernet, 3D, and Audio Return Channel (ARC)
EASY CONNECTION: Share an Internet connection among multiple devices (no need for a separate Ethernet cable)
BACKWARDS COMPATIBLE: Works with earlier versions to allow for use with a wide range of HDMI-enabled devices
NOTE: This cable supports up to 4K@60Hz, so if a connected device''s output is higher than that standard, the cable won''t work properly',
        '{61ntykhzGVL._AC_SL1475_.jpg,918ljugUZcL._AC_SL1500_.jpg,71auCvECS+L._AC_SL1500_.jpg,81QoT9-u5AL._AC_SL1500_.jpg,81id8B1hMxL._AC_SL1500_.jpg,714H1yW3PdL._AC_SL1500_.jpg}',
        'Amazon Basics',
        'Black',
        '',
        '72 x 0.8 x 0.43 inches'
    ),
    (
        'Amazon Basics In Ear Wired Headphones, Earbuds with Microphone No Wireless Technology, Black, 0.96 x 0.56 x 0.64in',
        6.26,
        'Note : If the size of the earbud tips does not match the size of your ear canals or the headset is not worn properly in your ears, you may not obtain the correct sound qualities or call performance. Change the earbud tips to ones that fit more snugly in your ear
Black headphones with comfortable in-ear design and 3.5mm gold-plated plug
Built-in microphone with controller (answer or hang up calls; pause or skip tracks)
Compatible with any device with a 3.5mm jack, including Android and IOS smartphones; devices without a 3.5mm jack, like the iPhone 7, 8, 10, and Pixel 2, require an adapter
3.9-foot cable can be threaded through clothing or bag; 20-20KHz frequency range; 94±3dB; 10mW max input
Backed by an Amazon Basics limited 1-year warranty
Upgraded internal circuit to address durability issues in the previous version',
        '{51xZdrJfCzL._AC_SL1500_.jpg,615ksXZ-GhL._AC_SL1500_.jpg,712qRWQJ2SL._AC_SL1500_.jpg,31x1eIrrUeL._AC_SL1222_.jpg,71u7kc30epL._AC_SL1500_.jpg,81W0sfvFgRS._AC_SL1500_.jpg}',
        'Amazon Basics',
        'Black',
        '',
        '3.9 Feet'
    ),
    (
        'GE 6-Outlet Surge Protector, 10 Ft Extension Cord, Power Strip, 800 Joules, Flat Plug, Twist-to-Close Safety Covers, UL Listed, White, 14092',
        13.99,
        'Expand Your Power – 6 grounded and protected 3-prong outlets provide power from a distance — perfect for creating a centralized hub for your electronics at your home, office, workshop or garage
Versatile Cord – Extra-long 10ft. power cord comprised of 14-gauge SJT cable housed in a durable PVC insulation and jacket with a space-saving flat plug to allow unit to fit closely to the wall
Protection – 800 Joules protection rating safeguards your electronics from harmful voltage spikes, integrated circuit breaker and automatic shutdown technology offer protection from overvoltage or overheating
Functionality – Twist-to-close safety outlets ensure that dust and foreign objects are kept out of unused outlets — integrated keyhole slots provide easy mounting to a desk, table or counter
Trusted Brand – GE is the #1 Brand in surge protection and extension cords',
        '{61aztsmIcGL._AC_SL1500_.jpg,71TORGMuxpL._AC_SL1500_.jpg,916Cnn9kgkL._AC_SL1500_.jpg,71j-tPNeYdL._AC_SL1500_.jpg,71MPb--dg7L._AC_SL1500_.jpg,71pzwJsTD4L._AC_SL1500_.jpg,71vteYCAMcL._AC_SL1500_.jpg}',
        'GE',
        'White',
        '',
        '9.98 x 2.01 x 1.34 inches'
    ),
    (
        'SAMSUNG Galaxy Buds 2 Pro True Wireless Bluetooth Earbuds w/ Noise Cancelling, Hi-Fi Sound, 360 Audio, Comfort Ear Fit, HD Voice, Conversation Mode, IPX7 Water Resistant, US Version, Graphite',
        179.99,
        'ACTIVE NOISE CANCELLATION: Reduce unwanted noise with Galaxy Buds2 Pro; They use Intelligent Active Noise Cancellation* to quiet even the loudest outside sounds; Tune in to what matters most without being bothered by distracting sounds around you.Note : If the size of the earbud tips does not match the size of your ear canals or the headset is not worn properly in your ears, you may not obtain the correct sound qualities or call performance. Change the earbud tips to ones that fit more snugly in your ear.Specific uses for product : Music
HI-FI SOUND QUALITY: Studio quality sound isn’t just for the pros; Feel every note like you’re there with Galaxy Buds2 Pro** and get a next-level listening experience, whether you’re rocking out to your playlist or staying informed with a podcast
ENHANCED 360-DEGREE AUDIO: Amplify what you like; Minimize what you don’t; Enhanced 360-degree audio** brings out the tones you love from every angle for a personalized surround sound experience every time you pop them in
EXCELLENT FIT: Pop ‘em in and forget they’re there; Galaxy Buds2 Pro are earbuds designed to be even more comfortable than before and fit securely no matter what you’re doing; Whether for your work or workout, make all your moves comfortably
HD VOICE TECHNOLOGY: Turn every call into a high definition chat; HD Voice Technology separates your voice from surrounding noise, so you come in crystal clear even with the hustle and bustle around you
INTELLIGENT CONVERSATION MODE: Keep the conversation going without taking out your earbuds; When your voice is detected, Intelligent Conversation Mode turns off Active Noise Cancellation, turns down the volume and puts your Buds in Ambient Mode***
WATER RESISTANT: Water won’t ruin your workout; Your IPX7 water-resistant Galaxy Buds2 Pro can keep the beat going even with a little rain; They’re protected for immersion up to 3 feet deep for a half-hour. Battery capacity play Time 5/20Hr (ANC On), 8/30Hr (ANC Off)',
        '{51146mqL2nL._AC_SL1500_.jpg,61nxlP+44hL._AC_SL1500_.jpg,61BM6-Cd6lL._AC_SL1500_.jpg,616++9HBUML._AC_SL1500_.jpg,415MVKW5fsL._AC_SL1200_.jpg,51h-NRtweIL._AC_SL1500_.jpg}',
        'SAMSUNG',
        'Graphite',
        '',
        '	1.97 x 1.98 x 1.09 inches'
    ),
    (
        'iOttie Easy One Touch 5 Dashboard & Windshield Universal Car Mount Phone Holder Desk Stand with Suction Cup Base and Telescopic Arm for iPhone, Samsung, Google, Huawei, Nokia, other Smartphones',
        24.99,
        'EASY ONE TOUCH MECHANISM: Press the locking side arms with a quick one-handed motion, and place your phone against the trigger button. The mount’s arms will close automatically, holding your device securely while you drive. Mount or remove your phone in seconds with the patented Easy One Touch Mechanism.
WIDE COMPATIBILITY: New larger Easy One Touch button, with a universal cradle that fits smartphones and cases of any size.
MAGNETIC CORD ORGANIZER: Keep charging cables neatly organized with the magnetic tab located near the bottom foot
TELESCOPIC ARM: The improved telescopic arm now extends from 5 inches to 8 inches (as opposed to the Easy One Touch 4 which only extended to 6.5inch) and pivots 260 degrees. This enables a myriad of customized viewing angles while you’re on the road.
ADJUSTABLE BOTTOM FOOT: You can easily and securely adjust the bottom foot by squeezing the spring button.',
        '{61XzOG9rAwL._AC_SL1500_.jpg,71mSAFWaBtL._AC_SL1500_.jpg,61qDY72wD5L._AC_SL1500_.jpg,61BVfrFp2pL._AC_SL1500_.jpg,71+d+e6aTPL._AC_SL1500_.jpg,71p6pZ6GMAL._AC_SL1500_.jpg}',
        'iOttie',
        'Black',
        '',
        '6.5 x 4.2 x 4 inches'
    ),
    (
        'Twelve South AirFly SE, Bluetooth Wireless Audio Transmitter for AirPods/Wireless or Noise-Cancelling Headphones Use with Any 3.5 mm Audio Jack on Airplanes, Gym Equipment or iPad/Tablets',
        34.99,
        'NO MORE CORDS: Wirelessly transmit audio from in-flight entertainment, gym equipment, gaming devices, TV''s or any 3.5 audio jack. Use your AirPods, earbuds or wireless headphones anywhere with no more cords in the way. Now you don''t have to sacrifice audio quality/comfort in flight.
NEVER RUN OUT OF BATTERY LIFE : Unlike other adaptors, AirFly has a battery life of 20+ hours to cover even the longest flight. If you forget to charge before takeoff, AirFly can be used while charging with the included cable.
FREEDOM TO MOVE: AirFly has a 10m/33ft reach so you can relax with plenty of space to enjoy your content.
EASE OF USE: AirFly automatically goes into pairing mode when turned on to make pairing simple. There is an on/off switch to conserve battery and a reset button if you ever need to pair with different devices. We recommend you turn off any nearby bluetooth (such as your phone) when pairing
Tech Specs - Bluetooth 5.2, Audio Codecs: aptX and SBC audio. Battery Life: 20+ hours. Included in Box- AirFly, USB-C charging cable, quick start guide, manual. NOTES: AirPods must be INSIDE AirPod Case to enter pairing mode (#1 pairing mistake). AirFly features industry leading Bluetooth with aptX Low Latency Codecs. If you are experiencing anything less than high quality audio, first check the audio source (audio will only be as good as the source allows). Regarding latency, ensure your device supports Bluetooth 5.2.',
        '{51HhyUqXImL._AC_SL1500_.jpg,71eT37P7zLL._AC_SL1500_.jpg,61jQJ1ah8AL._AC_SL1500_.jpg,71wyba5lkKL._AC_SL1500_.jpg,61mc0gMDDBL._AC_SL1500_.jpg,71Qj+eYikXL._AC_SL1500_.jpg}',
        '	Twelve South',
        'White',
        '',
        '0.38 x 1.25 x 1.75 inches'
    ),
    (
        'DJI Osmo Mobile 6 Gimbal Stabilizer for Smartphones, 3-Axis Phone Gimbal, Built-In Extension Rod, Object Tracking, Portable and Foldable, Vlogging Stabilizer, YouTube TikTok, Slate Gray',
        149,
        'Stay on Point with ActiveTrack 6.0 - With upgraded tracking tech, OM 6 sticks to your energetic kids or playful pets like glue. You can even make it track yourself! Become the star of your own film without needing anyone''s help.
Silky Smooth Shots with 3-Axis Stabilization - You know what ruins videos? Shaky footage! DJI OM 6 is here to help. This phone gimbal ensures super steady shots, even when you''re on the move. Say hello to buttery-smooth videos!
So quick, So easy - This smartphone stabilizer powers on as soon as you unfold it. Just attach your phone, and you are ready to shoot! Catch that breathtaking sunset or your child''s smile without missing a beat.
Lightweight, Compact, and Extendable - With a foldable design and weighing only 309g, this cell phone gimbal stabilizer is easy to take anywhere. Extend the built-in extension rod to get creative angles or the perfect selfie.
Shoot Like a Pro, Even If You''re a Newbie - OM 6''s ShotGuides recognizes your scene and suggests a shot sequence. From romantic outings to picnics, follow the steps to easily create stunning films, even if it''s your first time.
Use Side Wheel to Get Cinematic Effects - The side wheel gives you power over focus and zoom. Nail that cinematic blur or try a Hitchcock zoom for some dramatic flair. Up your video game and impress your friends with high-quality videos.
The gimbal is stain resistant and coated in a non-slip texture, with an ergonomic grip that will keep it secure in your hands. It''s compatible with most iPhone, Samsung Galaxy, and Huawei series. Please check the compatibility list before purchasing.',
        '{51Q0I+lvW9L._AC_SL1500_.jpg,61NSRlYbMVL._AC_SL1500_.jpg,711g60IAoAL._AC_SL1500_.jpg,71C3oEL-H-L._AC_SL1500_.jpg,51pBY0EzcPL._AC_SL1500_.jpg,51ODRI5OKdL._AC_SL1500_.jpg}',
        'DJI',
        '	Slate Gray',
        '',
        '10.87 x 3.9 x 4.37 inches'
    ),
    (
        'SanDisk 256GB Ultra microSDXC UHS-I Memory Card with Adapter - Up to 150MB/s, C10, U1, Full HD, A1, MicroSD Card - SDSQUAC-256G-GN6MA',
        17.99,
        'Ideal storage for Android smartphones and tablets
Up to 256GB to store even more hours of Full HD video (1GB=1,000,000,000 bytes. Actual user storage less. Full HD (1920x1080) video support may vary based upon host device, file attributes, and other factors. See official SanDisk website.)
Up to 150MB/s transfer speeds to move up to 1000 photos per minute (Up to 150MB/s read speed, engineered with proprietary technology to reach speeds beyond UHS-I 104MB/s, require compatible devices capable of reaching such speed. Based on internal testing; performance may be lower depending on host device, interface, usage conditions, and other factors. 1MB=1,000,000 bytes. Based on internal testing on images with an average file size of 3.55MB (up to 3.7GB total) with USB 3.0 reader. Your results will vary based on host device, file attributes, and other factors.)
Load apps faster with A1-rated performance (A1 performance is 1500 read IOPS, 500 write IOPS. Based on internal testing. Results may vary based on host device, app type, and other factors.)
Class 10 for Full HD video recording and playback (Full HD (1920x1080) video support may vary based upon host device, file attributes, and other factors. See official SanDisk website.)',
        '{51G0OYpkCYL._AC_SL1000_.jpg,816z60+J2TL._AC_SL1500_.jpg,81FcxPFWIgL._AC_SL1500_.jpg,81BnwRx4WDL._AC_SL1500_.jpg,81vn5jrZQLL._AC_SL1500_.jpg,81KHLcEZV4L._AC_SL1500_.jpg}',
        'SanDisk',
        'Black',
        '',
        '‎0.04 x 0.59 x 0.43 inches'
    ),
    (
        'PopSockets Phone Grip with Expanding Kickstand, PopSockets for Phone - Black',
        9.97,
        'Our durable Pop Socket compatible with iPhone, Samsung, and any other devices, we call a “PopGrip” is anti-drop, allows for one-handed use of your device, and the ability to prop up your phone wherever you go
A little life-changer people like to call: a cell phone holder, phone gripper for back of phone, phone holder for hand, or whichever you name you decide
PopSockets are compatible with all Popsocket phone accessories including wallets, cases, mounts, slides and non-Popsocket cases for phones
Change up your PopGrip style without replacing the whole grip and swap out the top for one of our PopTops. Just press flat, turn 90 degrees until you hear a click and swap
Stick on with the adhesive and reposition as needed. Pop Sockets stick best to smooth hard plastic cases (may not stick to silicone, soft, or waterproof cases)',
        '{41MgkMLaYbL._AC_SL1000_.jpg,31eY9l-IJNL._AC_SL1000_.jpg,31JPPvfj+lL._AC_SL1000_.jpg,412YlmbewpL._AC_SL1000_.jpg,415tpa0wxDL._AC_SL1000_.jpg,41Lzr7GhlWL._AC_SL1000_.jpg}',
        'PopSockets',
        'Black',
        'Polycarbonate (PC)',
        '1.56 x 0.28 x 1.56 inches'
    ),
    (
        'Sensyne 10'''' Ring Light with 50'''' Extendable Tripod Stand, LED Circle Lights with Phone Holder for Live Stream/Makeup/YouTube Video/TikTok, Compatible with All Phones',
        46.15,
        '【High Brightness & Clever Touch Control】Sensyne selfie ring light features a high sensitivity touch panel design that has a longer life than traditional mechanical buttons. It provides full control to easily adjust the 3 color modes (cool white, warm yellow and daylight) and 10 brightness levels to meet your different needs. Perfect for Photographers, YouTubers, Vloggers, TikTokers, etc.
【Versatile Accessories】 The USB-powered control helps protect your safety while improving the ring light’s brightness. The phone holder is spring-loaded and extends up to 5.3" wide, it is compatible with almost ALL smartphones with or without a case.
【Fully customizable portable tripod Stand】 Extending from 15.7 inches to 50 inches, our tripod can be adjusted to any height within seconds as needed, short enough to stand on tabletop, tall enough to fit your height. This compact circle light set comes handy when you do makeup, artworks, beauty & fashion live streaming, video calls and more.
【Wireless remote shutter】- the pocket-sized Bluetooth remote allows you to take selfies or group photos easily from a distance up to 30 feet. Compatible with most Apple/Android smart phones like iPhone 8/7/6 Series, Samsung Galaxy Series, etc. No app download necessary.
【After-sale service】We will provide you with a high quality after-sales, 12 months After-sale service. Please contact us anytime if any question.',
        '{51I+Ykd4iGL._AC_SL1000_.jpg,612IXFaJTsL._AC_SL1000_.jpg,71VB2AEm97L._AC_SL1000_.jpg,61VFYKyv+jL._AC_SL1000_.jpg,613fA2Luv6L._AC_SL1000_.jpg,618uYifiNfL._AC_SL1000_.jpg}',
        'SENSYNE',
        '',
        '',
        '14.17 x 11.42 x 3.99 inches'
    ),
    (
        'SanDisk 128GB microSDXC-Card, Licensed for Nintendo-Switch - SDSQXAO-128G-GNCZN',
        15.29,
        'Incredible speeds in a microSD card officially licensed for the Nintendo Switch and Nintendo Switch Lite systems
Spend less time waiting and more time playing with read speeds up to 100MB/s(1) and write speeds up to 90MB/s(1).
Instantly add up to 128GB (1GB=1,000,000,000 bytes. Actual user storage less.)
Store your downloaded games, screenshots and video captures in 1 place so you can travel light.
Nintendo trademarks are properties of Nintendo.',
        '{61ysEjw8BML._AC_SL1392_.jpg,51PKeO4rrpL._AC_.jpg}',
        'SanDisk',
        'Red',
        '',
        '‎0.4 x 0.6 x 0.5 inches'
    ),
    (
        'PopSockets Translucent Phone Grip with Expanding Kickstand, PopSockets for Phone - Clear',
        9.49,
        'Our durable translucent PopSockets compatible with iPhone, Samsung and any other devices, we call a “PopGrip” is anti-drop, allows for one-handed use of your device, and the ability to prop up your phone wherever you go.
A little life-changer people like to call a cell phone holder, phone gripper for back of phone, phone holder for hand, or whichever you name you decide.
PopSockets are compatible with all PopSockets phone accessories including wallets, cases, mounts, slides and non-PopSockets cases for phones.
Change up your PopGrip style without replacing the whole grip and swap out the top for one of our PopTops. Just press flat, turn 90 degrees until you hear a click and swap!
Stick on with the adhesive and reposition as needed. PopSockets s stick best to smooth hard plastic cases (may not stick to silicone, soft, or waterproof cases).',
        '{61y9fC2tzgL._AC_SL1000_.jpg,51tm-lQTuLL._AC_SL1000_.jpg,51gGHz5WK+L._AC_SL1000_.jpg,41kOkRePpbL._AC_SL1000_.jpg,41DIJwAIm+L._AC_SL1000_.jpg,51Ijri8ziFL._AC_SL1000_.jpg}',
        'PopSockets',
        'Clear',
        'Plastic',
        '1.52 x 1.52 x 0.3 inches'
    ),
    (
        'Tile Slim 1-Pack. Thin Bluetooth Tracker, Wallet Finder and Item Locator for Wallet, Luggage Tags and More; Up to 250 ft. Range. Water-Resistant. Phone Finder. iOS and Android Compatible.',
        27.99,
        'THE THIN TRACKER - Tile helps you keep track of your things. Slide the Tile Slim into wallets and luggage tags or attach to notebooks. Use our free app to find them
FIND NEARBY -- Use the Tile app to ring your Tile when it’s within Bluetooth range, or ask your Smart Home device to find it for you.
FIND FAR AWAY -- When outside of Bluetooth range, use the Tile app to view your Tile’s most recent location on a map.
FIND YOUR PHONE- Double press the button on your Tile to make your phone ring, even when it’s on silent.
NOTIFY WHEN FOUND -- Enlist the secure and anonymous help of the Tile Network to help find your things. If your lost Tile is found, If your Tile is lost, add your contact information so you can be reached when someone scans the QR code on your lost Tile.
ANDROID, IOS & SMART HOME COMPATIBLE - Find your things with the free Tile app on both iOS and Android devices. Tile also works with Amazon Alexa, Hey Google and Siri
TECH SPECS: Water-Resistant (IP67 rated), Up to 3-year non-replaceable battery, Up to 250 ft / 76 m Bluetooth range
UPGRADE TO A PREMIUM PLAN: Get proactive Smart Alert notifications when you leave something behind, and with Item Reimbursement, if we can’t find your Tiled item, we reimburse you.
In general, GPS trackers maintain a constant connection via satellite and provide real-time tracking. Bluetooth trackers work within a shorter range and are dependent on a connection to a Bluetooth enabled device. Bluetooth trackers typically cost less, are lighter and use less power.',
        '{418frxLAtoL._AC_SL1200_.jpg,61yaPbDRLoL._AC_SL1200_.jpg,61w6cKA54ZL._AC_SL1200_.jpg,71zXF1s1OOL._AC_SL1200_.jpg,617P0-ckX9L._AC_SL1200_.jpg,51htwQK5V0L._AC_SL1200_.jpg}',
        'Tile',
        'Black',
        'Plastic',
        '3.36 x 2.12 x 0.1 inches'
    ),
    (
        'Poly Voyager 5200 Wireless Headset (Plantronics) - Single-Ear Bluetooth Headset w/Noise-Canceling Mic - Ergonomic Design - Voice Controls - Lightweight - Connect to Mobile/Tablet via Bluetooth,Black',
        93.99,
        'CLEAR AUDIO QUALITY: Take conversations on the go or on the road with confidence, thanks to your headset’s six layers of exclusive WindSmart technology and four noise-canceling, omnidirectional microphones. APPS-Plantronics Hub Mobile for Android and iOS, Amazon Alexa (easy access), Tile (lost headset location) .Note : If the size of the earbud tips does not match the size of your ear canals or the headset is not worn properly in your ears, you may not obtain the correct sound qualities or call performance. Change the earbud tips to ones that fit more snugly in your ear
CONNECTIVITY & MOBILITY: Connect your mobile device or tablet through Bluetooth 5.0 and move freely with up to a 98 ft (30 m) range and up to 7 hours of talk time; and with multipoint technology, you’ll enjoy the convenience of having up to two phones connected at once.
PORTABLE & COMFORTABLE: The ergonomic design means you’ll feel just as comfortable during your first call as your last call; plus, it’s both pocket-sized and sports a moisture-resistant P2i coating—the ideal combo for taking calls outdoors.
HANDS-FREE: Limit distractions with such features as caller ID and talk-time alerts, voice controls like Answer or Ignore, and a dedicated button for Siri, Google Assistant, or Cortana.
COMPATIBILITY: Works with iPhone, Android, and other leading smartphones.',
        '{81ppmI5q9iL._AC_SL1500_.jpg,81eaBN5H-rL._AC_SL1500_.jpg,81vSYT57JVL._AC_SL1500_.jpg,91+8oVOEGIL._AC_SL1500_.jpg,81IxJYuA6jL._AC_SL1500_.jpg,51zvkCy7KTL._AC_SL1500_.jpg}',
        'Plantronics',
        'Black',
        '',
        '1 x 1 x 1 inches'
    ),
    (
        'Brother Genuine High-Yield Black Toner Cartridge Twin Pack TN760 2Pk, TN7602PK',
        144.98,
        'Brother Genuine high-yield Black toner cartridge Twin pack TN760 2pk: contains two TN760 Black laser toner cartridges that deliver Professional laser Print quality for up to 3, 000 pages per cartridge) and up to 6, 000 total pages.(1)
Print twice as many pages: using Brother Genuine laser toner 2-packs delivers twice as many pages as single-pack toner.(2) multi-pack laser toner helps minimize the number of toner orders you need to place.
Intelligently engineered to work in seamless unison with your Brother printer. Produces professional, crisp, sharp, Black and white laser-quality prints that withstand the test of time.
Brother offers a toner cartridge collection and recycling program. Brother offers an environmentally responsible way to dispose of used Brother Genuine cartridges. Visit manufacturer’s website for additional information.
Brother Genuine high-yield Black toner cartridge Twin pack TN760 2pk is for use with: DCP-L2550DW, HL-L2350DW, HL-L2370DW, HL-L2370DW XL, HL-L2390DW, HL-L2395DW, MFC-L2710DW, mfc-l2717dw, MFC-L2750DW, MFC-L2750DW XL.',
        '{51qcXV5b3gL._AC_.jpg,61OTsXmPXuL._AC_.jpg,61E1dF3sLWL._AC_.jpg,61+71yQlV4L._AC_.jpg,61dA957Ga3L._AC_.jpg,61kOeTiGS6L._AC_.jpg}',
        'Brother',
        'Black',
        '',
        '14 x 7.45 x 6.8 inches'
    ),
    (
        'PopSockets Phone Grip Compatible with MagSafe, Phone Holder, Wireless Charging Compatible - Clear',
        26.99,
        'Our phone grip compatible with MagSafe we call a "PopGrip" securely attaches to your MagSafe-compatible case for maximum grip and kickstand capabilities
Wirelessly charge your phone by simply sliding off the magnetic PopSocket and setting on a wireless charging pad
Offers a secure grip so you can text with one hand, avoid phone drops, and use as a phone stand on-the-go
Pop Grip compatible with MagSafe is compatible with PopSocket cases and mounts for MagSafe and non-PopSocket cases for MagSafe
Strong built-in magnets securely attach the cell phone holder grip to MagSafe-compatible cases',
        '{61vnoHP4AcL._AC_SL1500_.jpg,71prVN6nZFL._AC_SL1500_.jpg,61DmcRl6Q2L._AC_SL1500_.jpg,71i-eixKO0L._AC_SL1500_.jpg,71kgd7acNcL._AC_SL1500_.jpg,71KdUiZBWYL._AC_SL1500_.jpg}',
        'PopSockets',
        'Clear',
        'Polycarbonate (PC)',
        '0.79 x 3.15 x 5.91 inches'
    ),
    (
        'Tile Mate 1-Pack. Black. Bluetooth Tracker, Keys Finder and Item Locator for Keys, Bags and More; Up to 250 ft. Range. Water-Resistant. Phone Finder. iOS and Android Compatible.',
        19.99,
        'VERSATILE TRACKER - Tile helps you keep track of your things. Attach the Tile Mate to everyday things like keys, backpacks or purses. Use our free app to find them.
FIND NEARBY - Use the Tile app to ring your Tile when it’s within Bluetooth range, or ask your Smart Home device to find it for you.
FIND FAR AWAY - When outside of Bluetooth range, use the Tile app to view your Tile’s most recent location on a map.
FIND YOUR PHONE - Double press the button on your Tile to make your phone ring, even when it’s on silent.
NOTIFY WHEN FOUND - Enlist the secure and anonymous help of the Tile Network to help find your things. If your lost Tile is found, If your Tile is lost, add your contact information so you can be reached when someone scans the QR code on your lost Tile.
ANDROID, IOS & SMART HOME COMPATIBLE - Find your things with the free Tile app on both iOS and Android devices. Tile also works with Amazon Alexa, Hey Google and Siri
TECH SPECS - Water-Resistant (IP67 rated), Up to 3-year non-replaceable battery, Up to 250 ft / 76 m Bluetooth range
UPGRADE TO A PREMIUM PLAN: Get proactive Smart Alert notifications when you leave something behind, and with Item Reimbursement, if we can’t find your Tiled item, we reimburse you.',
        '{4161BoDqu3L._AC_SL1200_.jpg,61Mj2ACmEvL._AC_SL1200_.jpg,614U02xcL2L._AC_SL1200_.jpg,61cq7waPW7L._AC_SL1200_.jpg,61dfxUXno8L._AC_SL1200_.jpg,51v0WojYNjL._AC_SL1200_.jpg}',
        'Tile',
        'Black',
        'Plastic',
        '1.49 x 1.49 x 0.28 inches'
    ),
    (
        'Post-it Super Sticky Easel Pad, 25 in x 30 in, White, 30 Sheets/Pad, 4 Pads/Pack, Great for Virtual Teachers and Students (559 VAD 4PK)',
        74.49,
        'STICKS SECURELY AND HOLDS UP TO 2X LONGER - Easel paper can be repositioned without surface damage. No tape or tacks needed unlike standard flip chart paper. Keep agenda and ideas where everyone can see.
INK BLEED-THROUGH RESISTANT PAPER - Large white premium self-stick flip chart paper that resists marker bleed-through to keep great ideas on the page, not on what''s under the page.
IDEAL FOR BRAINSTORMING AND MANAGING PROJECTS - Perfect for training or teaching sessions, brainstorming sessions, planning sessions, project management and agile processes, meetings and presentations.
DOWNLOAD THE FREE POST-IT APP - Stop spending hours transcribing notes after a brainstorm; download the free Post-it App. Now you can instantly capture and save your work so you can share notes with your team without recaps or delays.
LARGE WHITE PREMIUM PAPER - 25 in. x 30 in., 30 Sheets/Pad, 4 Pad/Pack
DESIGNED TO FIT MANY EASEL STANDS - Sturdy backcard has a handle to make the easel pad portable and slots to fit most easel stands. Perfect for student activities and training sessions.
USE WITH POST-IT SUPER STICKY NOTES - The large, stickable paper to capture thoughts with Post-it Super Sticky Notes. Give ideas a place to grow.
EXPLORE OPTIONS - Post-it Super Sticky Easel Pads are also available with Grid Lines, Lines, Bright Yellow, and White Recycled Paper.
EXPLORE SIZES - Post-it Super Sticky Easel Pads also available in more sizes - Mini Easel Pad, Tabletop Pad and Wall Pad.
USA - Made in the USA with globally sourced materials.',
        '{61-Q7ZkSIUS._AC_SL1500_.jpg,71gZPi4h+KS._AC_SL1500_.jpg,81luHfYwjQL._AC_SL1500_.jpg,81tpv41hFbL._AC_SL1500_.jpg,81siX+Yd0sS._AC_SL1500_.jpg,61rALPnxY8L._AC_SL1500_.jpg}',
        'Post-it',
        '	White',
        '',
        '30 x 25 x 0.35 inches'
    ),
    (
        'Amazon Basics Rectangular 6-Outlet Surge Protector Power Strip, 6-Foot Long Cord, 790 Joule - Black',
        11.4,
        'IN THE BOX: 6-outlet surge protector power strip with 1 transformer outlet and 790 joule energy rating
SURGE PROTECTION: 3-line surge protection rating to protect small appliances, phones, and lamps
LED INDICATOR: Red "protected" LED indicator light to signify active protection
SAFETY FEATURE: 15 amp circuit breaker
SPECIFICATIONS: AC 15A, 125V, 60Hz, 1875W
CORD LENGTH: 6 foot 14 AWG power cord',
        '{71+kTOfLD2L._AC_SL1500_.jpg,71d9PAuWq9L._AC_SL1500_.jpg,81rv7VpQTpL._AC_SL1500_.jpg,71HgiuyqGgL._AC_SL1500_.jpg,51qykvcK-IL._AC_SL1000_.jpg,711DZNIsrZL._AC_SL1500_.jpg}',
        'Amazon Basics',
        'Black',
        '',
        '11.5 x 1.7 x 1.1 inches'
    ),
    (
        'Amazon Basics HDMI Cable, 18Gbps High-Speed, 4K@60Hz, 2160p, Nylon-Braided Cord, Ethernet Ready, 3 Foot, Nylon',
        6.86,
        'IN THE BOX: Nylon braided HDMI cable (A Male to A Male) for connecting 2 HDMI-enabled devices; 3 feet long
DEVICE COMPATIBLE: Connects Blu-ray players, Fire TV, Apple TV, PS4, PS3, Xbox One, Xbox 360, and computers to TVs, displays, A/V receivers, and more
SUPPORTS 4K VIDEO: Supports 4K video at 60 Hz, 2160p, 48-bit/px color depth, as well as bandwidth up to 18Gbps, Ethernet, 3D, and Audio Return Channel (ARC)
EASY CONNECTION: Share an Internet connection among multiple devices (no need for a separate Ethernet cable)
BACKWARDS COMPATIBLE: Works with earlier versions to allow for use with a wide range of HDMI-enabled devices
NOTE: This cable supports up to 4K@60Hz, so if a connected device''s output is higher than that standard, the cable won''t work properly',
        '{61YaqGbQvjL._AC_SL1121_.jpg,71TKmeskUjL._AC_SL1500_.jpg,71STfXuT+KL._AC_SL1500_.jpg,71tv20z9KZL._AC_SL1500_.jpg,81Vl-DAd8BL._AC_SL1500_.jpg}',
        '
Brand	Amazon Basics',
        '	Black, Blue',
        '',
        '36 x 0.78 x 0.4 inches'
    ),
    (
        'Brother Genuine P-Touch, TZe-231 2 Pack Tape (TZE2312PK) ½”(0.47”) x 26.2 ft. (8m) 2-Pack Laminated P-Touch Tape, Black on White, Perfect for Indoor or Outdoor Use, Water Resistant, TZE2312PK, TZE231',
        23.56,
        'DURABLE INDOOR OR OUTDOOR LABELS: Brother Genuine TZE2312PK half inch (0.47 inch) standard laminated P touch Tape is durable, resistant to fading and water damage, and won’t smudge or smear. It is suitable for indoor or outdoor use, even in harsh weather conditions. The TZE2312PK measures 12 millimeter (0.47 inch) x 26.2 feet (8 meter) and is Black on White tape that is sold in as a 2 Pack
EASY TO APPLY: The split back of the P touch tape is easy to remove, which makes Brother Genuine TZe replacement label tape easy to peel and apply to multiple surfaces
HOME OR INDUSTRIAL USE: Brother Genuine P touch tape can be used for home, business, or industrial applications. It is perfect for labeling kitchen, shelving, and supply cabinets and can be used in freezers, microwaves, and dishwashers. It will not fade or smudge
COMPATIBLE WITH BROTHER LABEL MAKERS: PT 1190, PT 1230PC, PT 1880C, PT 1880SC, PT 1880W, PT 1890C, PT 1890SC, PT 1890W, PT 2430PC, PT 6100, PT D200, PT D200G, PT D210, P Touch Embellish, PT D400, PT D400AD, PT D400VP, PT D450, PT D600, PT D600VP, PT D800W, PT H100, PT H110, PT H300, PT H300LI, PT H500LI, P Touch CUBE (White), P Touch CUBE (Blue), PT P700, and PT P750W
FEATURES: Laminated, Water Resistant, Grease Resistant, Grime Resistant, Temperature Resistant',
        '{61T9TLUAXCL._AC_SL1000_.jpg,71bkmyOpuML._AC_SL1500_.jpg,713cPCZ7vwL._AC_SL1500_.jpg,71rHVHlqvgL._AC_SL1500_.jpg,71RDd6iHdmL._AC_SL1500_.jpg,61uemglu6VL._AC_SL1500_.jpg}',
        'Brother',
        '	Black on White',
        '‎Paper',
        '‎5.6 x 1.4 x 5.8 inches'
    ),
    (
        'Brother Genuine High Yield Toner Cartridge, TN660, Replacement Black Toner, Page Yield Up to 2,600 Pages, Amazon Dash Replenishment Cartridge',
        58.48,
        'Brother genuine cartridge: Brother TN 660 is a Brother genuine cartridge: that produces mono laser prints in high quality you can depend on
Yields up to 2,600 Pages: This replacement high yield black toner cartridge can print approximately 2,600 pages(1)
Seamless integration: This professional replacement black toner cartridge creates rich blacks and is engineered to work in seamless unison with your Brother laser printer
Amazon dash replenishment cartridge: Upon activation with your Dash eligible Brother printer, TN 660 replacement cartridges can be automatically ordered through Amazon Dash Replenishment and sent directly to your door
For use with brother laser printers and all in ones DCP L2520DW, DCP L2540DW, HL L2300D, HL L2305W, HL L2315DW, HL L2320D, HL L2340DW, HL L2360DW, HL L2380DW, MFC L2680W, MFC L2685DW, MFC L2700DW, MFC L2705DW, MFC L2707DW, MFC L2720DW, MFC L2740DW',
        '{71xkxHWNTIL._SL1500_.jpg,81DdIy-2NYL._SL1500_.jpg,81pLJmLGr+L._SL1500_.jpg,71sIC9FG--L._SL1500_.jpg,813VX84k5ZL._SL1500_.jpg,71hKrpNmlQL._SL1500_.jpg,7108xcNQYfL._SL1500_.jpg}',
        'Brother',
        '	Black Toner',
        '',
        '14.2 x 4.3 x 6.9 inches'
    ),
    (
        'Made for Amazon SanDisk 128GB microSD Memory Card for Fire Tablets and Fire -TV',
        12.99,
        'Exclusive “Made for Amazon” SD memory card - The only one tested and certified to work with your Fire Tablet and Fire TV
Load your Fire Tablet with more fun - By adding space for additional photos, music and movies
Download your apps and games directly to the SD card
Class 10 performance for Full HD (1080p) video recording and playback
Designed to perform multiple simultaneous activities with no lag or delay',
        '{81dQGd03YHL._AC_SL1500_.jpg,71XLnYgxHoL._AC_SL1500_.jpg}',
        'SanDisk',
        '	‎White/Gray',
        '',
        '‎0.08 x 0.94 x 1.26 inches'
    ),
    (
        'INIU Wireless Charger, 15W Fast Wireless Charging Station with Sleep-Friendly Adaptive Light Compatible with iPhone 14 13 12 Pro XR XS 8 Plus Samsung Galaxy S23 S22 S21 S20 Note 20 10 Google LG etc',
        17.76,
        '✅【From INIU--the SAFE Fast Charge Pro】 Experience the safest charging with over 38 million global users. At INIU, we use only the highest-grade materials, so we do have the confidence to provide an industry-leading 3 years warranty.
✅【Save Up to 45 mins via Next-Gen 15W】 Embrace INIU 15W speed-boosting charging with our all-new AirFuel tech - incredibly knocks off at least 45 minutes of your waiting time.
✅【No More Annoying Lights】 Features the first-seen self-adaptive LED indicator to bright in the day and dim in the dark. So you’ll stay in the know yet without undesirable lights to disturb your sleep.
✅【4 Upgraded Charging Modes】 A high-efficiency chip provides 15W fast charge for LG, 10W fast charge for Samsung Galaxy, 7.5W fast charge for iPhone, and 5W standard charge for any other devices.
✅【Exclusive NTC Temp°Guard Battery Protection】 It controls temp in real-time smartly and silently via the exceptional cutting-edge NTC Temp°Guard, to protect your phone battery against overheating and damage.
✅【Certified Super-Conductor Dual Coils, Wider Charging Area】 The Dual Super Conductivity coils let you watch videos in landscape orientation, or stand in portrait mode for FaceTime call and facial recognition—all without ever cutting power.
✅【What You Get】 INIU wireless charging station*1, USB C cable*1, welcome guide*1, 30 days money back guarantee, industry-leading 3-year warranty, plus lifetime technical support.',
        '{71B+4V5YhnL._AC_SL1251_.jpg,61b5jWHppnL._AC_SL1500_.jpg,619+x8Z6QLL._AC_SL1500_.jpg,716v3z63MlL._AC_SL1500_.jpg,71qE-WsApjL._AC_SL1500_.jpg,71GurCu2ZIL._AC_SL1500_.jpg}',
        'INIU',
        'Black',
        '',
        '2.88 x 3.4 x 4.2 inches'
    ),
    (
        'Beats Powerbeats Pro Wireless Earbuds - Apple H1 Headphone Chip, Class 1 Bluetooth Headphones, 9 Hours of Listening Time, Sweat Resistant, Built-in Microphone - Ivory',
        159.95,
        'Totally wireless high-performance earphones
Up to 9 hours of listening time (more than 24 hours with charging case)
Adjustable, secure-fit earhooks for lightweight comfort and stability
Reinforced design for sweat & water resistance during tough workouts
Volume & track controls on each earbud, voice capability, and Auto Play/Pause
Powerful, balanced sound with dynamic range and noise isolation
Earbuds connect independently via Class 1 Bluetooth for extended range and fewer dropouts
With Fast Fuel, a 5-minute charge gives 1.5 hours of playback when battery is low
Enhanced phone call performance and call handling from either earbud
What''s in the box - Powerbeats Pro, Charging case, Eartips with four size options, Lightning to USB-A charging cable, Quick start guide (USB power adapter sold separately)',
        '{51b2RRA1QRL._AC_SL1500_.jpg,61q-Rcg3mML._AC_SL1500_.jpg,61qX5TczohL._AC_SL1500_.jpg,61cIHUnnjGL._AC_SL1500_.jpg,61uMDnSRI8L._AC_SL1500_.jpg,61AoX1pvTXL._AC_SL1500_.jpg}',
        'Beats',
        'Ivory',
        '',
        ''
    ),
    (
        'Amazon Basics RJ45 Cat-6 Ethernet Patch Internet Cable, 25 Foot (7.6 Meters), Black',
        10.5,
        'IN THE BOX: RJ45 Cat-6 Ethernet patch internet cable for wired home and office networks
UNIVERSAL COMPATIBILITY: RJ45 connectors ensure universal connectivity
FAST CONNECTION: Transmits data at speeds up to 1,000 Mbps (or 1 Gigabit per second), 10x faster than Cat-5 cables (100 Mbps)
GOLD PLATED CONNECTORS: RJ45 connectors with gold plating for accurate data transfer and corrosion-free connectivity
CABLE LENGTH: 25 feet',
        '{61Nj6nHbCvL._AC_SL1500_.jpg,81f5Lr1rN+L._AC_SL1500_.jpg,71p4+9ClZYL._AC_SL1500_.jpg,71tDSWiLQTL._AC_SL1500_.jpg,71EgjgDZ9dL._AC_SL1500_.jpg,716SLuxb7KL._AC_SL1500_.jpg}',
        'Amazon Basics',
        'Black',
        '',
        '‎300 x 0.59 x 0.67 inches'
    ),
    (
        'SOAR NCAA Wireless Charger and Desktop Organizer',
        20.73,
        'Imported
CHARGE WIRELESSLY / 10 WATTS - Quit worrying about lost, broken or disconnected cables with wireless charging! Simply place your phone on the dock and power up
Qi Compatible - Works with all Devices with Wireless Charging Capability
Charge your phone and organize your desktop - Large enough to hold Pens, Pencils, Knives, Scissors, Glasses Etc.
Officially Licensed NCAA Product - Great gift for the ultimate fan! Place it on your desk or in your office & support your team to victory!
CASE FRIENDLY - Charges your phone through your case / (Includes Micro USB Cable - compatible with all USB Chargers)
Included Components: Desktop Organizer;Micro Usb Cabke',
        '{712EQFQ9nKL._AC_UX522_.jpg,81s+OIuO+5L._AC_UX679_.jpg,71tqnFcz2IL._AC_UX569_.jpg,81H3tnGZ2fL._AC_UX679_.jpg,71hRJQDf5bL._AC_UX569_.jpg}',
        'SOAR',
        'Team Color',
        '',
        ''
    ),
    (
        'Hospitality Consumer HG90241-006 Hawthorne 12.75 oz. Hi-Ball (Set of 6), Clear',
        59.99,
        'The Hawthorne collection is achingly glamorous and this comprehensive Cocktail collection is the ideal showstopper at the bar
Manufacturer: Hospitality Consumer
Dishwasher Safe
Country Of Origin: CN',
        '{41zjtBxyyoL._SL1282_.jpg,41-Ose1rICL.jpg,410Ab9SlDTL.jpg,41ZnqoZJtTL.jpg}',
        'Hospitality Consumer',
        'Clear',
        'Glass',
        '2.5 x 2.5 x 6.25 inches'
    ),
    (
        'Ailun Screen Protector Compatible for iPhone SE 2020 2nd/2022 3rd Generation, iPhone 8,7,6s,6, 4.7-Inch Tempered Glass 0.25mm Case Friendly 3 Pack Clear',
        14.41,
        'WORKS FOR iPhone SE 2020 2nd/2022 3rd Generation iPhone 7/8/6s/6 (4.7 inch Screen only,NOT for Plus) . 0.25mm tempered glass screen protector. Featuring maximum protection from scratches, scrapes, and bumps.
Specialty: The iPhone SE 2020 2nd/2022 3rd Generation, iPhone 8,7,6s,6, 4.7-Inch, screens have curved edges that the screen protectors could not cover entirely of the screen, as they would peel over time and shorten the service life. Ailun screen protector is specially designed so it covers maximum area of the flat screen surface with great durability. HD ultra-clear rounded glass for The iPhone SE 2nd/3rd Generation iPhone 8/7/6/6s(4.7 Inch Screen) is 99.99% touch-screen accurate.
99.99% High-definition clear hydrophobic and oleophobic screen coating protects against sweat and oil residue from fingerprints.
It is 100% brand new,Precise laser cut tempered glass,no front camera cutout, exquisitely polished,2.5D rounded edges.
Easiest Installation - removing dust and aligning it properly before actual installation,no worrying about bubbles,enjoy your screen as if it wasn''t there.',
        '{81Gwo89-YnL._AC_SL1500_.jpg,7123mXsK49L._AC_SL1500_.jpg,817tYuaIgEL._AC_SL1500_.jpg,81QgIrOOC3L._AC_SL1500_.jpg,61uIiUDGneL._AC_SL1500_.jpg,71DoBqRS5KL._AC_SL1500_.jpg}',
        'Ailun',
        'Clear',
        '	Tempered Glass',
        '7.09"L x 4.33"W'
    ),
    (
        'DJI Osmo Mobile SE Intelligent Gimbal, 3-Axis Phone Gimbal, Portable and Foldable, Android and iPhone Gimbal with ShotGuides, Smartphone Gimbal with ActiveTrack 6.0, Vlogging Stabilizer',
        99.99,
        'Portable, Foldable, and Magnetically Quick - Take this compact gimbal on all your adventures. Snap-in and out with ease with the magnetic clamp to capture the second you want to shoot.
Stay on Point with ActiveTrack 6.0 - With upgraded tracking tech, OM SE sticks to your energetic kids or playful pets like glue. You can even make it track yourself! Become the star of your own film without needing anyone''s help.
Effortless Editing - Whether it''s shot-by-shot assistance with DJI Mimo''s ShotGuides or the multitude of templates to choose from in LightCut, go beyond just cutting down clips and get edits that inspire.
Smooth Footage - Elevate your shots with 3-axis stabilization. With a next-gen control algorithm, Osmo Mobile SE compensates in real-time for buttery smooth footage.
Landscape and Portrait - From theater-worthy dramatic shots to light and casual social media content, switch effortlessly between horizontal and vertical shooting.
New Status Panel - Quickly and conveniently check the battery level, system indicator status, and gimbal mode. Switch button Follow, Tilt Lock, FPV, and Spin Shot mode to get dynamic shots.
The gimbal is stain resistant and coated in a non-slip texture, with an ergonomic grip that will keep it secure in your hands. It''s compatible with most iPhone, Samsung Galaxy, and Huawei series. Please check the compatibility list before purchasing',
        '{51C14VcBgyL._AC_SL1500_.jpg,71PQFpJ1G3L._AC_SL1500_.jpg,71oWbNLBYJL._AC_SL1500_.jpg,71nWfkkrp0L._AC_SL1500_.jpg,51oAVIzJUoL._AC_SL1500_.jpg}',
        'DJI',
        'Gray',
        '',
        '19.69 x 19.69 x 11.02 inches'
    ),
    (
        'Meeting Owl 3 (Next Gen) 360-Degree, 1080p HD Smart Video Conference Camera, Microphone, and Speaker (Automatic Speaker Focus & Smart Zooming)',
        1049,
        'BETTER COLLABORATION. The Meeting Owl 3 captures 360° video in 1080p HD and 360° audio up to 18’ (5.5m). Automatically focuses on whoever is speaking to foster active collaboration and increased participation, while showing a 360° view of the room.
PLUG AND PLAY SIMPLICITY. Go from unboxing to your first meeting in <7 min. Simply plug in the power and USB, launch your preferred video conferencing platform, and start your meeting. Easily manage meetings through desktop, mobile or tablet apps.
UNIVERSALLY COMPATIBLE. Compatible with virtually all web-based video conferencing platforms, including Zoom, GoToMeeting, Google Meet, Microsoft Teams, Cisco Webex, BlueJeans, and many others.
SMARTER OVER TIME. Features the newest Owl Intelligence SystemTM, which focuses on people 4x faster. WiFI-enabled to get software upgrades and enhancements delivered over-the-air.
ADAPTS TO ANY SPACE. Pair two Meeting Owls or add an Expansion Mic to expand video and audio reach in larger spaces. Compatible with Owl Labs’ Whiteboard Owl and Meeting HQ to complete your hybrid room setup.',
        '{91K0Q957irL._AC_SL1500_.jpg,915seHxvjHL._AC_SL1500_.jpg,91ejiLzwfDL._AC_SL1500_.jpg,91hbaduXgQL._AC_SL1500_.jpg,91GrD4-FWpL._AC_SL1500_.jpg,81a+BXGLUjL._AC_SL1500_.jpg}',
        'Owl Labs',
        'Grey',
        '',
        '4.37 x 4.37 x 10.72 inches'
    ),
    (
        'Amazon Basics 50-inch Lightweight Camera Mount Tripod Stand With Bag',
        20.89,
        'Adjustable-height tripod made of lightweight aluminum; weighs just over a pound
3-way head allows for tilt and swivel motion; portrait or landscape options
Quick-release plate helps ensure fast transitions between shots
3-section, lever-lock legs for easy height adjustments; zippered storage bag included
Measures 16.5 inches (collapsed), extends up to 50 inches
Not recommended for use with heavy, high-end DSLR cameras (total equipment weight should not exceed 4.4 pounds)',
        '{71Bl+JlWzJL._AC_SL1500_.jpg,71IB16BjVtL._AC_SL1500_.jpg,81HSIiOv+xL._AC_SL1500_.jpg,81BLQwUw2bL._AC_SL1500_.jpg,81fJ6SE+RrL._AC_SL1500_.jpg,71lAN5pXKwL._AC_SL1500_.jpg}',
        '	Amazon Basics',
        'Copper Rose, Black',
        'Aluminum',
        '17.24 x 3.62 x 3.66 inches'
    ),
    (
        'SanDisk 128GB Ultra SDXC UHS-I Memory Card - Up to 140MB/s, C10, U1, Full HD, SD Card - SDSDUNB-128G-GN6IN',
        14.59,
        'Great choice for compact to mid-range point-and-shoot cameras
Quick transfer speeds up to 140MB/s (Up to 140MB/s read speed engineered with proprietary technology to reach speeds beyond UHS-I 104MB/s, requires compatible devices capable of reaching such speeds. Based on internal testing; performance may be lower depending on host device, interface, usage conditions and other factors. 1MB=1,000,000 bytes.)
Up to 128GB to store tons of pictures (1GB=1,000,000,000 bytes. Actual user storage less.)
Exceptional video recording performance with UHS Speed Class 1 (U1) Class 10 rating for Full HD video (1080p) (UHS Speed Class 1 (U1) designates a performance option designed to support real time video recording with UHS enabled host devices. See consumers speed page on SanDisk site. Full HD (1920x1080) video support may vary based upon host device, file attributes, and other factors. Visit the SanDisk Video Knowledge Base for more information.)
Compatible with SanDisk SD UHS-I card reader (sold separately)',
        '{81SmwjoafSL._AC_SL1500_.jpg,81vDu6WA-jL._AC_SL1500_.jpg,81awZzNdm1L._AC_SL1500_.jpg,91OSwyn7k1L._AC_SL1500_.jpg,71L2NEZHJsL._AC_SL1500_.jpg,81tQNtoMoVL._AC_SL1500_.jpg}',
        'SanDisk',
        '‎Multicolor, Grey',
        '',
        '‎1.26 x 0.94 x 0.09 inches'
    ),
    (
        'Scotch Thermal Laminating Pouches Premium Quality, 5 Mil Thick for Extra Protection, 100 Pack Letter Size Laminating Sheets, Our Most Durable Lamination Pouch, 8.9 x 11.4 inches, Clear (TP5854-100)',
        27.46,
        'Thermal Pouches up to 8.5"x14"
Protect documents from damage. Photo Safe
20 per package
Great for legal documents, leases, agreements, notices, manuals, and more
Safe for use with most household cleaners*
*Do not clean pouches before laminating, test a small amount in a corner before use especially on important documents, and do not use acetone
Great for children''s artwork, signs, flyers, schedules, certificates, and other frequently used documents in the home, office or classroom
Ultra clear finish to let important information show through
Ideal for marker-proof, tear-proof and spill-proof paper items that you want to last',
        '{718MDqcdGqL._AC_SL1500_.jpg,71GOhebkCkL._AC_SL1500_.jpg,716dN4lYdSL._AC_SL1500_.jpg,81r6jA5erbL._AC_SL1500_.jpg,81-zFh9JhvL._AC_SL1500_.jpg,71Pr-cs49rL._AC_SL1500_.jpg}',
        'Scotch',
        'Clear',
        '',
        '	1.25 x 9.13 x 11.75 inches'
    ),
    (
        'Brother Genuine High Yield Toner Cartridge, TN450, Replacement Black Toner, Page Yield Up to 2,600 Pages',
        58.48,
        'BROTHER GENUINE CARTRIDGE - Brother TN-450 is a Brother Genuine cartridge that produces mono laser prints in high quality you can depend on
YIELDS UP TO 2, 600 PAGES -This replacement high-yield black toner cartridge can print approximately 2, 600 pages(1)
SEAMLESS INTEGRATION - This professional replacement black toner cartridge creates rich blacks and is engineered to work in seamless unison with your Brother laser printer
FOR USE WITH BROTHER LASER PRINTERS, ALL-IN-ONES AND FAX MACHINES - DCP-7060D, DCP-7065DN, IntelliFax-2840, IntelliFAX-2940, HL-2220, HL-2230, HL-2240, HL-2240D, HL-2270DW, HL-2275DW, HL-2280DW, MFC-7240, MFC-7360N, MFC-7365DN, MFC-7460DN, MFC-7860DW
Based on 5% coverage',
        '{71ifkPdZ8eL._AC_SL1500_.jpg,81DdIy-2NYL._AC_SL1500_.jpg,81OiWVivEzL._AC_SL1500_.jpg,71hPCKZ4qFL._AC_SL1500_.jpg,81rLDPKrKdL._AC_SL1500_.jpg,711zIAtbZCL._AC_SL1500_.jpg}',
        '	Brother',
        'Black',
        '‎Toner',
        '‎14.4 x 4.4 x 8 inches'
    ),
    (
        'Brother Genuine High Yield Toner Cartridge, TN850, Replacement Black Toner, Page Yield Up to 8, 000 Pages, Amazon Dash Replenishment Cartridge',
        109,
        'Printer Output: Color
Printer Technology: Inkjet
Intelligently engineered to work in seamless unison with your Brother printer
Brother Genuine toner produces crisp, sharp prints that withstand the test of time',
        '{71FAYF8-1uL._AC_SL1500_.jpg,81DdIy-2NYL._AC_SL1500_.jpg,81uKPbNiM7L._AC_SL1500_.jpg,71QaPaJzPQL._AC_SL1500_.jpg,81R9DVm3wbL._AC_SL1500_.jpg,81585XbbmBL._AC_SL1500_.jpg,71dUS5ROMkL._AC_SL1500_.jpg}',
        'Brother',
        'Black',
        'Toner',
        '14.2 x 9.9 x 5.5 inches'
    ),
    (
        'OontZ Angle 3 Bluetooth Speaker, Portable Wireless Bluetooth 5.0 Speaker, 10 Watts, Crystal Clear Stereo Sound, Rich Bass, IPX5 Water Resistant, Loud Portable Bluetooth Speaker (Black)',
        27.99,
        'PORTABLE BLUETOOTH SPEAKER - Designed and Engineered by Cambridge SoundWorks in the USA, the OontZ Angle 3 with its unique triangular design, offers high-quality crystal-clear stereo sound for a truly immersive listening experience. This portable bluetooth speaker can be placed either flat or standing up, providing versatile placement options to suit your need, making it perfect for on-the-go use, whether you''re enjoying a picnic at the park or the beach, or even using it in your car for better sound on long road trips.
EXPERIENCE YOUR MUSIC LIKE NEVER BEFORE - With its powerful 10+ watt Volume Booster AMP, this OontZ Angle 3 bluetooth speaker delivers incredible sound without any distortion, even at maximum volume. Enjoy your music the way it was meant to be heard, whether you''re in your living room, backyard, or office. The OontZ Angle 3 is the perfect wireless speaker for any space, providing unbeatable sound quality and volume that will impress even the most discerning audiophiles
ULTIMATE WIRELESS AUDIO SOLUTION - With advanced antenna design and Bluetooth 5.0 technology, this speaker provides faster connection speeds and superior wireless range up to an incredible 100 ft compared to other speakers in its class. Whether you''re using a desktop, laptop, or mobile phone, connecting to the OontZ Angle 3 bluetooth speaker is fast and easy, ensuring you can enjoy your music from wherever you are in the room, without having to stay tethered to your device. So, sit back and relax, knowing that you can stream your music effortlessly, no matter where you are.
TAKE YOUR MUSIC OUTDOORS – The OontZ Angle 3 bluetooth speaker is designed for the ultimate outdoor listening experience. Its lightweight and portable design makes it perfect for travel, backyard parties, camping, and hiking. With an IPX5 certification, this speaker is splash proof and rainproof. Whether you''re enjoying a day at the beach or hiking in the rain, the OontZ Angle 3 has got you covered. Plus, it makes for a great gift for any occasion, whether it''s your friend''s birthday or Mother''s Day for Mom. If you''re a music lover, this speaker is a must-have for its exceptional sound quality, portability, and rugged durability.
ENJOY UNINTERRUPTED MUSIC - The OontZ Angle 3 Bluetooth Speaker is equipped with a powerful 2500mAh rechargeable battery that provides up to 14 hours of playtime at 2/3 volume. The speaker also comes with a built-in AUX-IN jack, which allows you to connect to non-Bluetooth devices with a 3.5mm Line-In cable (cable not included), giving you even more options for enjoying your music. Additionally, the built-in microphone acts as a personal hands-free speakerphone, so you can take calls from any mobile phone without having to disconnect from the speaker. With the OontZ Angle 3, you can stay connected and entertained for hours on end.',
        '{71MaEpiMNGL._AC_SL1500_.jpg,81KYHY+5A9L._AC_SL1500_.jpg,81AjJYdwliL._AC_SL1500_.jpg,81-950QQn8L._AC_SL1500_.jpg,81YK2tVB0NL._AC_SL1500_.jpg,91DV0ztGDFL._AC_SL1500_.jpg}',
        'Cambridge Soundworks',
        'Black',
        '',
        '5.3 x 2.8 x 2.6 inches'
    ),
    (
        'OontZ Angle 3 Bluetooth Speaker, Portable Wireless Bluetooth 5.0 Speaker, 10 Watts, Crystal Clear Stereo Sound, Rich Bass, IPX5 Water Resistant, Loud Portable Bluetooth Speaker (Black)',
        27.99,
        'PORTABLE BLUETOOTH SPEAKER - Designed and Engineered by Cambridge SoundWorks in the USA, the OontZ Angle 3 with its unique triangular design, offers high-quality crystal-clear stereo sound for a truly immersive listening experience. This portable bluetooth speaker can be placed either flat or standing up, providing versatile placement options to suit your need, making it perfect for on-the-go use, whether you''re enjoying a picnic at the park or the beach, or even using it in your car for better sound on long road trips.
EXPERIENCE YOUR MUSIC LIKE NEVER BEFORE - With its powerful 10+ watt Volume Booster AMP, this OontZ Angle 3 bluetooth speaker delivers incredible sound without any distortion, even at maximum volume. Enjoy your music the way it was meant to be heard, whether you''re in your living room, backyard, or office. The OontZ Angle 3 is the perfect wireless speaker for any space, providing unbeatable sound quality and volume that will impress even the most discerning audiophiles
ULTIMATE WIRELESS AUDIO SOLUTION - With advanced antenna design and Bluetooth 5.0 technology, this speaker provides faster connection speeds and superior wireless range up to an incredible 100 ft compared to other speakers in its class. Whether you''re using a desktop, laptop, or mobile phone, connecting to the OontZ Angle 3 bluetooth speaker is fast and easy, ensuring you can enjoy your music from wherever you are in the room, without having to stay tethered to your device. So, sit back and relax, knowing that you can stream your music effortlessly, no matter where you are.
TAKE YOUR MUSIC OUTDOORS – The OontZ Angle 3 bluetooth speaker is designed for the ultimate outdoor listening experience. Its lightweight and portable design makes it perfect for travel, backyard parties, camping, and hiking. With an IPX5 certification, this speaker is splash proof and rainproof. Whether you''re enjoying a day at the beach or hiking in the rain, the OontZ Angle 3 has got you covered. Plus, it makes for a great gift for any occasion, whether it''s your friend''s birthday or Mother''s Day for Mom. If you''re a music lover, this speaker is a must-have for its exceptional sound quality, portability, and rugged durability.
ENJOY UNINTERRUPTED MUSIC - The OontZ Angle 3 Bluetooth Speaker is equipped with a powerful 2500mAh rechargeable battery that provides up to 14 hours of playtime at 2/3 volume. The speaker also comes with a built-in AUX-IN jack, which allows you to connect to non-Bluetooth devices with a 3.5mm Line-In cable (cable not included), giving you even more options for enjoying your music. Additionally, the built-in microphone acts as a personal hands-free speakerphone, so you can take calls from any mobile phone without having to disconnect from the speaker. With the OontZ Angle 3, you can stay connected and entertained for hours on end.',
        '{71MaEpiMNGL._AC_SL1500_.jpg,81KYHY+5A9L._AC_SL1500_.jpg,81AjJYdwliL._AC_SL1500_.jpg,81-950QQn8L._AC_SL1500_.jpg,81YK2tVB0NL._AC_SL1500_.jpg,91DV0ztGDFL._AC_SL1500_.jpg}',
        'Cambridge Soundworks',
        'Black',
        '',
        '5.3 x 2.8 x 2.6 inches'
    ),
    (
        'Google Pixel 7a - Unlocked Android Cell Phone - Smartphone with Wide Angle Lens and 24-Hour Battery - 128 GB -  Sea',
        444,
        'Google Pixel 7a is fast and efficient, with 8 GB of RAM, an amazing camera, and features rated highest in security[1]
Pixel’s fast-charging all-day battery can last over 24 hours, or up to 72 hours when you turn on Extreme Battery Saver[2]; it also charges wirelessly
With the Pixel Camera and Google Tensor G2’s advanced image processing, it’s easy to take great pictures in low light, fix blurry images, and remove distractions with a few taps in Google Photos[3]
With Pixel Call Assist, you can get help making calls, avoiding spammers, and waiting on hold[4]; plus, Pixel 7a can filter out your caller’s background noise so you can hear them clearly even in noisy places
Open your Pixel 7a quickly and securely with Face Unlock or Fingerprint Unlock
Google Tensor G2 and the certified Titan M2 chip add layers of security to keep your personal info safe; VPN by Google One helps protect your online activity in any browser[5]
Unlocked Android 5G phone gives you the flexibility to change carriers and choose your own data plan[6]; works with Google Fi, Verizon, T-Mobile, AT&T, and other major carriers
With Live Translate, you can have conversations face to face in 48 languages, chat in real time with messaging apps, and translate menus with your camera[7]
Your Pixel phone works seamlessly with the Google Pixel tablet, watch, and earbuds for personalized help throughout your day[9]
Please refer to the “From the manufacturer” section below for all applicable legal disclaimers denoted by the bracketed numbers in the preceding bullet points (e.g., [1], [2], etc.)',
        '{71m09hEhnwL._AC_SL1500_.jpg,81hUb72jxtL._AC_SL1500_.jpg,81wMv71xXqL._AC_SL1500_.jpg,71mZLtK3EDL._AC_SL1500_.jpg,71gyIvqVRYL._AC_SL1500_.jpg,81yvWY+cqjL._AC_SL1500_.jpg}',
        'Google',
        'Sea',
        '',
        '6 x 2.8 x 0.4 inches'
    ),
    (
        'SAMSUNG Galaxy Buds 2 True Wireless Earbuds Noise Cancelling Ambient Sound Bluetooth Lightweight Comfort Fit Touch Control US Version, Graphite',
        109.99,
        'YOUR EARS NEVER HAD IT SO GOOD: Galaxy Buds2 ear buds take your passion for music to new heights with booming sound that makes you feel like you''re on stage with your favorite band.Note : If the size of the earbud tips does not match the size of your ear canals or the headset is not worn properly in your ears, you may not obtain the correct sound qualities or call performance. Change the earbud tips to ones that fit more snugly in your ears.Connectivity - Bluetooth Version : Bluetooth 5.2.
TUNE OUT NOISES, TUNE IN VOICES: Active Noise Cancellation blocks out unwanted sounds, helping you keep your focus wherever you are; Low latency Ambient Sound mode picks up the sounds you want to hear, so you always have the perfect audio level for every moment
FEELS GOOD WHILE LOOKING GOOD: Galaxy Buds2 have a comfortable, low profile design that''s 10% smaller and lighter than Galaxy Buds Plus; You may get to the end of your playlist before you remember you''re wearing them at all
HEAR CLEARLY, SPEAK CONFIDENTLY: The earbuds’ 3 microphones and noise reduction technology ensures voices are transmitted crisply and clearly, whether you''re chatting with a friend or leading a high stakes conference call
POWER WORTHY OF YOUR LONGEST PLAYLIST: Indulge your love of music with a long-lasting battery that''s up to the job — so your music doesn’t stop until you do
TAP FOR TOTAL CONTROL: Control your playlist or answer calls with the tap of a finger with touch control — no more fumbling for your phone to change a song
SWITCH IT UP: With Auto Switch, the earphones detect what connection you need and instantly shifts audio to that Galaxy device; Shift effortlessly between your Galaxy phone, tablet, watch, or PC. Buds Controller is compatible with Galaxy Buds plus, Galaxy Watch4, and their respective following models. Earbud Dimension (W x H x D) 17.0(W) x 20.9(H) x 21.1(D) mm',
        '{51O0iIuohnL._AC_SL1500_.jpg,61nMxhevDjL._AC_SL1200_.jpg,51FL9-e9MJL._AC_SL1500_.jpg,51LXoA7Qv-L._AC_SL1500_.jpg,51LBJtcu86L._AC_SL1500_.jpg,61VbpVUMFCL._AC_SL1500_.jpg}',
        'SAMSUNG',
        'Graphite',
        '',
        '1.98 x 1.97 x 1.09 inches'
    ),
    (
        'Jabra Evolve 65 MS Wireless Headset, Stereo – Includes Link 370 USB Adapter – Bluetooth Headset with Industry-Leading Wireless Performance, Advanced Noise-Cancelling Microphone, All Day Battery',
        138.23,
        'INDUSTRY LEADING PERFORMANCE: Enjoy superior wireless connectivity with the Jabra Evolve 65 Wireless Headset; With a range of up to 30 meters per 100 feet, you can work away from your desk and still maintain the quality sound and service.Specific uses for product : Professional
INCREASE AGENT FOCUS: Use this Jabra headset to overcome interruptions with an integrated busy light that acts as a do not disturb sign for colleagues; Plus, the advanced noise cancelling microphone allows for crystal clear calls and improved focus
ALL DAY BATTERY: Get up to 14 hours of talk time with the Jabra Evolve 65; Or you can simply connect the USB and charge while using the office headset
SUPERIOR CONNECTIVITY: Connect wirelessly via Bluetooth (USB dongle for PCs included) or directly using USB cable; Dual connectivity enables connection to your PC & 1 other Bluetooth device simultaneously, so you can take calls on your preferred device
PLUG & PLAY: This pro headset is certified for Skype for Business for simple UC integration for plug and play right out of the box; It is also compatible with all of the most popular online voice call services',
        '{71r0AlAXj+L._AC_SL1500_.jpg,8107z5dvbGL._AC_SL1500_.jpg,81kOu08emKL._AC_SL1500_.jpg,814IX6GWB0L._AC_SL1500_.jpg,81BN0G7+coL._AC_SL1500_.jpg,81c5zaf8-fL._AC_SL1500_.jpg}',
        'Jabra',
        'Black',
        '',
        '0.79 x 2.73 x 3.19 inches'
    ),
    (
        'Amazon Basics Rectangular 8-Outlet Power Strip Surge Protector, 4,500 Joule - 6-Foot Cord, Black/Green',
        17.23,
        'IN THE BOX: 8-outlet surge protector power strip with max. electrical ratings 15A/120V/1800W and 4500-joule energy rating
SURGE PROTECTION: Keeps devices safe from potentially damaging power surges; Fireproof MOV technology offers added protection against surges and spikes
LED INDICATOR: Green LED light at one end indicates active surge protection and grounded wiring for all outlets
ON/OFF SWITCH: Power on/off switch integrates with a 15 amp overload resettable circuit breaker
USER FRIENDLY DESIGN: Widely spaced outlets with sliding covers and back keyhole for optional wall mounting
HEAVY DUTY CORD: Sturdy, 6-foot power cord with 3-prong plug',
        '{81nXI9oJzUL._AC_SL1500_.jpg,71D8YDvvw8S._AC_SL1500_.jpg,61qwf31XswS._AC_SL1500_.jpg,51eW7mVxt2S._AC_SL1380_.jpg,71co9ciwl5L._AC_SL1500_.jpg,71g6vCkilQL._AC_SL1500_.jpg}',
        'Amazon Basics',
        '	Black/Green',
        '',
        '11.75 x 2.99 x 1.14 inches'
    ),
    (
        'Google Pixel Buds Pro - Noise Canceling Earbuds - Up to 31 Hour Battery Life with Charging Case - Bluetooth Headphones - Compatible with Wireless Charging - Charcoal',
        69.99,
        'Pixel Buds Pro use Active Noise Cancellation with Silent Seal to adapt to your ear and help block outside sounds, creating a quiet foundation so your music can shine.Note : If the size of the earbud tips does not match the size of your ear canals or the headset is not worn properly in your ears, you may not obtain the correct sound qualities or call performance. Change the earbud tips to ones that fit more snugly in your ear.Note : If the size of the earbud tips does not match the size of your ear canals or the headset is not worn properly in your ears, you may not obtain the correct sound qualities or call performance. Change the earbud tips to ones that fit more snugly in your ear
With custom 11 mm speaker drivers and Volume EQ, the earbuds sound amazing at any volume[1]
The battery keeps up with your life, with up to 11 hours of listening time, or up to 31 hours with the charging case[2]; you can charge them wirelessly with Pixel Stand or other Qi-certified chargers[3]
Transparency mode helps you hear outside sounds in real time so you can be more aware of your surroundings, like when crossing the street
Ask Google for directions, respond to a text, or control your music, hands-free[4]
Make crystal clear calls even in loud places thanks to beamforming mics, a voice accelerometer, and wind-blocking mesh covers[5]
Easily switch between compatible devices, so you can go from listening to music on your phone to taking a call on your laptop[6]
Pixel Buds Pro are water resistant, so you can wear your earphones during sweaty workouts or on rainy days[7]
Please refer to the product description section below for all applicable legal disclaimers denoted by the bracketed numbers in the preceding bullet points (e.g., [1], [2], etc.)',
        '{41e3rrJ263L._AC_SL1000_.jpg,41oVrcHPrDL._AC_SL1000_.jpg,41qMOPsuptL._AC_SL1000_.jpg,31sfivEVPML._AC_SL1000_.jpg,41NJKO3D8wL._AC_SL1000_.jpg}',
        'Google',
        'Charcoal',
        '',
        '1.97 x 0.98 x 2.49 inches'
    ),
    (
        'SAMSUNG PRO Endurance 256GB MicroSDXC Memory Card with Adapter for Dash Cam, Body Cam, and security camera – Class 10, U3, V30 (‎MB-MJ256KA/AM)',
        24.99,
        'EXTREME ENDURANCE FOR MONITORING DEVICES: Capture your crucial moments in high-resolution, even in harsh conditions; Engineered to deliver long lasting performance, the Samsung PRO Endurance SSD is a perfect fit for CCTV, dash cams and body cams; Get peace of mind with video recording you can rely on
BUILT TO LAST UP TO 140K HOURS OF RECORDING: With capacities up to 256GB, the PRO Endurance records and rewrites up to 140K hours (over 16 years), Plus, with a warranty up to 5 years, you can rest assured that your data endures
RECORD & PLAY IN FHD/4K: The PRO Endurance simplifies large file transfers with read/write speeds up to 100/40MB/s; Plus, FHD and 4K resolution support ensures that crucial moments are recorded in high-res so every detail is documented when it matters most
CRITICAL DATA, SAFEGUARDED: From severe weather to extensive wear and tear, the PRO Endurance stands up to real-world situations; After rigorous testing, it stands up against magnets¹, X-rays², water³, drop⁴, wearout⁵, and stays cool under pressure with operating temperatures ranging from -25°C to 85°C⁶',
        '{71WurH21VIL._AC_SL1500_.jpg,71kCrMtHiZL._AC_SL1500_.jpg,61Xwn6anNZL._AC_SL1500_.jpg,51EVU1eSK5L._AC_.jpg,61LO80paOdL._AC_SL1200_.jpg,61UNSS3iQfL._AC_SL1200_.jpg}',
        'SAMSUNG',
        'White',
        '',
        '0.04 x 0.59 x 0.43 inches'
    ),
    (
        'Lexar PLAY 1TB microSDXC UHS-I Micro SD Memory Card, C10, U3, V30, A2, Full-HD Video, Up To 150MB/s, Expanded Storage for Nintendo-Switch, Gaming Devices, Smartphones, Tablets (LMSPLAY001T-BNNNU)',
        89,
        'Compatible with Nintendo Switch, Steam Deck, ASUS ROG Ally, other portable gaming devices, smartphones and tablets
Fast transfer speeds for quick loading time with up to 150MB/s read
Store more videos, movies, games, music and your favorite content with large capacity
Loads apps faster with A2-rated performance
Five-year limited product support',
        '{71e0Ggv+xDL._AC_SL1500_.jpg,513Csd2zlOL._AC_SL1000_.jpg,61vxwE97BgL._AC_SL1000_.jpg,61E-rczzzJL._AC_SL1000_.jpg,61S8hDsJHiL._AC_SL1000_.jpg,619wnQ25pTL._AC_SL1000_.jpg}',
        'Lexar',
        'Red',
        '',
        '0.04 x 0.59 x 0.53 inches'
    );

CREATE TABLE IF NOT EXISTS shop.comments (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id) ON DELETE CASCADE,
    product_id INT REFERENCES products(id) ON DELETE CASCADE,
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO
    shop.comments(user_id, product_id, comment)
VALUES
    (1, 10, 'Great Products !!!'),
    (
        1,
        1,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        2,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        3,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        4,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        5,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        6,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        7,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        8,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        9,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        10,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        11,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        12,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        13,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        14,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        15,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        16,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        18,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        19,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        20,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        21,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        22,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        23,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        24,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        25,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        26,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        27,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        28,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        29,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        30,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        31,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        32,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        33,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        34,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        35,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        36,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        37,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        38,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        39,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        40,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        41,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (2, 64, 'Fits great and easy to install'),
    (2, 65, 'Fits great and easy to install'),
    (
        1,
        42,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        43,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        44,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        45,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        46,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        47,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        48,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        49,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        50,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        51,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        52,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        53,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        54,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        55,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        56,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        57,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        58,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        59,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        60,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        61,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        62,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        63,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        64,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        65,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        66,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        67,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        68,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        69,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        70,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        71,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        72,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        73,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        74,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        75,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        76,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        77,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        78,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        79,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        80,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        81,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        82,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        83,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        84,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (1, 84, 'ádas'),
    (
        1,
        85,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        87,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        88,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        89,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        90,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        91,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        92,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        93,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        94,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        95,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        96,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        97,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        98,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        99,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (
        1,
        100,
        'Very durable! The amount of times I drop my phone is insane but there isn’t a single crack on my screen!! Would definitely recommend'
    ),
    (2, 1, 'Fits great and easy to install'),
    (2, 2, 'Fits great and easy to install'),
    (2, 3, 'Fits great and easy to install'),
    (2, 4, 'Fits great and easy to install'),
    (2, 5, 'Fits great and easy to install'),
    (2, 6, 'Fits great and easy to install'),
    (2, 7, 'Fits great and easy to install'),
    (2, 8, 'Fits great and easy to install'),
    (2, 9, 'Fits great and easy to install'),
    (2, 10, 'Fits great and easy to install'),
    (2, 11, 'Fits great and easy to install'),
    (2, 12, 'Fits great and easy to install'),
    (2, 13, 'Fits great and easy to install'),
    (2, 14, 'Fits great and easy to install'),
    (2, 15, 'Fits great and easy to install'),
    (2, 16, 'Fits great and easy to install'),
    (2, 18, 'Fits great and easy to install'),
    (2, 19, 'Fits great and easy to install'),
    (2, 20, 'Fits great and easy to install'),
    (2, 21, 'Fits great and easy to install'),
    (2, 22, 'Fits great and easy to install'),
    (2, 23, 'Fits great and easy to install'),
    (2, 24, 'Fits great and easy to install'),
    (2, 25, 'Fits great and easy to install'),
    (2, 26, 'Fits great and easy to install'),
    (2, 27, 'Fits great and easy to install'),
    (2, 28, 'Fits great and easy to install'),
    (2, 29, 'Fits great and easy to install'),
    (2, 30, 'Fits great and easy to install'),
    (2, 31, 'Fits great and easy to install'),
    (2, 32, 'Fits great and easy to install'),
    (2, 33, 'Fits great and easy to install'),
    (2, 34, 'Fits great and easy to install'),
    (2, 35, 'Fits great and easy to install'),
    (2, 36, 'Fits great and easy to install'),
    (2, 37, 'Fits great and easy to install'),
    (2, 38, 'Fits great and easy to install'),
    (2, 39, 'Fits great and easy to install'),
    (2, 40, 'Fits great and easy to install'),
    (2, 41, 'Fits great and easy to install'),
    (2, 42, 'Fits great and easy to install'),
    (2, 43, 'Fits great and easy to install'),
    (2, 44, 'Fits great and easy to install'),
    (2, 45, 'Fits great and easy to install'),
    (2, 46, 'Fits great and easy to install'),
    (2, 47, 'Fits great and easy to install'),
    (2, 48, 'Fits great and easy to install'),
    (2, 49, 'Fits great and easy to install'),
    (2, 50, 'Fits great and easy to install'),
    (2, 51, 'Fits great and easy to install'),
    (2, 52, 'Fits great and easy to install'),
    (2, 53, 'Fits great and easy to install'),
    (2, 54, 'Fits great and easy to install'),
    (2, 55, 'Fits great and easy to install'),
    (2, 56, 'Fits great and easy to install'),
    (2, 57, 'Fits great and easy to install'),
    (2, 58, 'Fits great and easy to install'),
    (2, 59, 'Fits great and easy to install'),
    (2, 60, 'Fits great and easy to install'),
    (2, 61, 'Fits great and easy to install'),
    (2, 62, 'Fits great and easy to install'),
    (2, 63, 'Fits great and easy to install'),
    (2, 66, 'Fits great and easy to install'),
    (2, 67, 'Fits great and easy to install'),
    (2, 68, 'Fits great and easy to install'),
    (2, 69, 'Fits great and easy to install'),
    (2, 70, 'Fits great and easy to install'),
    (2, 71, 'Fits great and easy to install'),
    (2, 72, 'Fits great and easy to install'),
    (2, 73, 'Fits great and easy to install'),
    (2, 74, 'Fits great and easy to install'),
    (2, 75, 'Fits great and easy to install'),
    (2, 76, 'Fits great and easy to install'),
    (2, 77, 'Fits great and easy to install'),
    (2, 78, 'Fits great and easy to install'),
    (2, 79, 'Fits great and easy to install'),
    (2, 80, 'Fits great and easy to install'),
    (2, 81, 'Fits great and easy to install'),
    (2, 82, 'Fits great and easy to install'),
    (2, 83, 'Fits great and easy to install'),
    (2, 84, 'Fits great and easy to install'),
    (2, 85, 'Fits great and easy to install'),
    (2, 87, 'Fits great and easy to install'),
    (2, 88, 'Fits great and easy to install'),
    (2, 89, 'Fits great and easy to install'),
    (2, 90, 'Fits great and easy to install'),
    (2, 91, 'Fits great and easy to install'),
    (2, 92, 'Fits great and easy to install'),
    (2, 93, 'Fits great and easy to install'),
    (2, 94, 'Fits great and easy to install'),
    (2, 95, 'Fits great and easy to install'),
    (2, 96, 'Fits great and easy to install'),
    (2, 97, 'Fits great and easy to install'),
    (2, 98, 'Fits great and easy to install'),
    (2, 99, 'Fits great and easy to install'),
    (2, 100, 'Fits great and easy to install'),
    (
        3,
        1,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        2,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        3,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        4,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        5,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        6,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        7,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        8,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        9,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        10,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        11,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        12,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        13,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        14,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        15,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        16,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        18,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        19,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        20,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        21,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        22,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        23,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        24,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        25,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        26,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        27,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        28,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        29,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        30,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        31,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        32,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        33,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        34,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        35,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        36,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        37,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        38,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        39,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        40,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        41,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        42,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        43,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        44,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        45,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        46,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        47,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        48,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        4,
        14,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        3,
        49,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        50,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        51,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        52,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        53,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        54,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        55,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        56,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        57,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        58,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        59,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        60,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        61,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        62,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        63,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        64,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        65,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        66,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        67,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        68,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        69,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        70,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        71,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        72,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        73,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        74,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        75,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        76,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        77,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        4,
        15,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        3,
        78,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        79,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        80,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        81,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        82,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        83,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        84,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        85,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        87,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        88,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        89,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        90,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        91,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        92,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        93,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        94,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        95,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        96,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        97,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        98,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        99,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        3,
        100,
        'Ordered for my wife who keeps dropping her phone. Her case doesnt help keep it from smacking down on the face. So yes it breaks. Honestly though, I would say the glass holds up pretty well given the abuse she puts on it.'
    ),
    (
        4,
        1,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        2,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        3,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        4,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        5,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        6,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        7,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        8,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        9,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        10,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        11,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        12,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        13,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        16,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        18,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        19,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        20,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        21,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        22,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        23,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        24,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        25,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        26,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        27,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        28,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        29,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        30,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        31,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        32,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        33,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        34,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        35,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        36,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        37,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        38,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        39,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        40,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        41,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        42,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        43,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        44,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        45,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        46,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        47,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        48,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        49,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        50,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        51,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        52,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        53,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        54,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        55,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        56,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        57,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        58,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        59,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        60,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        61,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        62,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        63,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        64,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        65,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        66,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        67,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        68,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        69,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        70,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        71,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        72,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        73,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        74,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        75,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        76,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        77,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        78,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        79,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        80,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        81,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        82,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        83,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        84,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        85,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        87,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        88,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        89,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        90,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        91,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        92,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        93,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        94,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        95,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        96,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        97,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        98,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        99,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        4,
        100,
        'I love these screen protectors. So easy to install and works great. I buy these any time I need a new one.'
    ),
    (
        5,
        1,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        2,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        3,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        4,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        5,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        6,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        7,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        8,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        9,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        10,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        11,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        12,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        13,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        14,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        15,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        16,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        18,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        19,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        20,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        21,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        22,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        23,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        24,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        25,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        26,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        27,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        28,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        29,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        30,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        31,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        32,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        33,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        34,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        35,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        36,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        37,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        38,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        39,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        40,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        41,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        42,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        43,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        44,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        45,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        46,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        47,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        48,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        49,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        50,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        51,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        52,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        53,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        54,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        55,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        56,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        57,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        58,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        59,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        60,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        61,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        62,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        63,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        64,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        65,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        66,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        67,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        68,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        69,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        70,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        71,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        72,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        73,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        74,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        75,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        76,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        77,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        78,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        79,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        80,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        81,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        82,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        83,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        84,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        85,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        87,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        88,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        89,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        90,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        91,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        92,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        93,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        94,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        95,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        96,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        97,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        98,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        99,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        5,
        100,
        'Very easy to apply. Replaced the same one that saved my husband''s screen from braking.'
    ),
    (
        6,
        1,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        2,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        3,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        4,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        5,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        6,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        7,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        8,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        9,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        10,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        11,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        12,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        13,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        14,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        15,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        16,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        18,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        19,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        20,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        21,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        22,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        23,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        24,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        25,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        26,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        27,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        28,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        29,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        30,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        31,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        32,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        33,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        34,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        35,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        36,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        37,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        38,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        39,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        40,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        41,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        42,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        43,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        44,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        45,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        46,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        47,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        48,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        49,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        50,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        51,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        52,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        53,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        54,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        55,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        56,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        57,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        58,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        59,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        60,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        61,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        62,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        63,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        64,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        65,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        66,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        67,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        68,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        69,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        70,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        71,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        72,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        73,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        74,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        75,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        76,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        77,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        78,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        79,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        80,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        81,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        82,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        83,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        84,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        85,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        87,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        88,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        89,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        90,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        91,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        92,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        93,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        94,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        95,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        96,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        97,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        98,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        99,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (
        6,
        100,
        'These are the best screen protectors I’ve ever gotten!'
    ),
    (1, 1, 'Good products !!!!'),
    (1, 1, 'Good products !!!!'),
    (1, 1, 'Good products !!!!'),
    (1, 1, 'Good products !!!!'),
    (1, 1, 'Good products !!!!'),
    (1, 1, 'Good products !!!!'),
    (1, 1, 'Good products !!!!'),
    (1, 1, 'Good products !!!!'),
    (1, 1, 'Good products !!!!'),
    (1, 84, 'Good Products!!!'),
    (1, 96, 'Good Works'),
    (1, 2, 'Nice Choice');

CREATE TABLE IF NOT EXISTS shop.qa (
    id SERIAL PRIMARY KEY,
    question TEXT,
    answer TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO
    shop.qa(question, answer)
VALUES
    (
        'If your tracking information shows that your package was delivered, but you can''t find it',
        'Verify the shipping address in Your Orders.
Look for a notice of attempted delivery.
Look around the delivery location for your package.
See if someone else accepted the delivery, unless you have health or safety concerns about doing so.
Check your mailbox or wherever else you receive mail. Some packages travel through multiple carriers.
Wait 48 hours. In rare cases, packages may say delivered up to 48 hours before arrival.
If you haven''t received your package, contact us within 30 days of expected delivery. We''ll do everything we can to help.'
    ),
    (
        'How to check the status of your refund',
        'Go to Your Orders
Next to the relevant order, select View Return/Refund Status
Visit Refunds to learn about our refund policies and how long it will take for you to receive your refund'
    ),
    (
        'How to replace an item',
        'Go to Your Orders and select Return or replace items beside the item you want to replace.
Tip: If your order is from a third-party seller or not eligible for a replacement, select Return Items. Enter a return reason on the next screen.
Select the item that you want to replace and select a reason from the Reason for return menu.
Follow the instructions on the screen.'
    ),
    (
        'How to cancelling an item',
        'Go to Your Orders and select the order you want to cancel.
Check box of the item that you want to cancel from the order. To cancel the entire order, select all of the items.
Select the reason for cancellation and click Cancel selected items in this order.'
    ),
    (
        'How to end your Prime Membership',
        'Additional subscriptions tied to your membership won''t renew once your Prime membership ends.
If your Prime membership is associated with a service you receive through another company (such as Sprint), contact that company to manage your Prime membership.
Customers who sign up for Amazon Prime using the Android mobile shopping app or Prime Video Android app must manage their subscription through Google Subscription services.'
    );

CREATE TABLE IF NOT EXISTS shop.information (key TEXT, value TEXT);

INSERT INTO
    shop.information(key, value)
VALUES
    ('email', 'khoi.le99@hcmut.edu.vn'),
    ('phone', '838571623'),
    (
        'address',
        '268 Lý Thường Kiệt, Phường 14, Quận 10, Thành phố Hồ Chí Minh'
    );

CREATE TABLE IF NOT EXISTS shop.orders (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES shop.users(id) ON DELETE CASCADE,
    product_id INT REFERENCES shop.products(id) ON DELETE CASCADE,
    number INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO
    shop.orders(user_id, product_id, number)
VALUES
    (1, 84, 14),
    (1, 17, 8),
    (1, 17, 4),
    (1, 17, 5);