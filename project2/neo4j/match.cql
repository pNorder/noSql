MATCH (d:Doctor {name: "Eric Burton}), (p:Patient {name: "Adam Bryan"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "James Evans}), (p:Patient {name: "Adam Bryan"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Balloon Enteroscopy (Balloon Endoscopy)}), (p:Patient {name: "Adam Bryan"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Blood, Chloride (Electrolytes)}), (p:Patient {name: "Adam Bryan"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Jimmy Gardner}), (p:Patient {name: "Linda Gentry"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Spencer Blankenship}), (p:Patient {name: "Linda Gentry"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Dental Implants}), (p:Patient {name: "Linda Gentry"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "AFP Blood Test (Alpha-fetoprotein Blood Test)}), (p:Patient {name: "Linda Gentry"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Paige Zamora}), (p:Patient {name: "Dr. Brittany"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Michael Osborn}), (p:Patient {name: "Dr. Brittany"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "FANA (Antinuclear Antibody)}), (p:Patient {name: "Dr. Brittany"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "CT Colonosopy (Virtual Colonoscopy)}), (p:Patient {name: "Dr. Brittany"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Michelle Obrien}), (p:Patient {name: "John Ingram"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Jessica Monroe}), (p:Patient {name: "John Ingram"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Alzheimer's Disease Causes, Stages, and Symptoms}), (p:Patient {name: "John Ingram"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Sed Rate (Sedimentation Rate)}), (p:Patient {name: "John Ingram"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Spencer Blankenship}), (p:Patient {name: "Jennifer Cole"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Aaron Richardson}), (p:Patient {name: "Jennifer Cole"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "CA 125}), (p:Patient {name: "Jennifer Cole"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "AFP Blood Test (Alpha-fetoprotein Blood Test)}), (p:Patient {name: "Jennifer Cole"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Garrett Wallace}), (p:Patient {name: "Charles Parker"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Gabrielle Beltran}), (p:Patient {name: "Charles Parker"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "CHF (Congestive Heart Failure (CHF) Overview)}), (p:Patient {name: "Charles Parker"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Erythropheresis (Hemapheresis)}), (p:Patient {name: "Charles Parker"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Alex Martinez}), (p:Patient {name: "Tara Bowman"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Charles Parker}), (p:Patient {name: "Tara Bowman"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Diabetes (Diabetes Mellitus)}), (p:Patient {name: "Tara Bowman"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "TENS (Transcutaneous Electrical Nerve Stimulation)}), (p:Patient {name: "Tara Bowman"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "John Ingram}), (p:Patient {name: "Garrett Wallace"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Mr. Jeffrey}), (p:Patient {name: "Garrett Wallace"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "angiitis (Vasculitis)}), (p:Patient {name: "Garrett Wallace"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Lipid Panel (Triglyceride Test)}), (p:Patient {name: "Garrett Wallace"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Jeffrey Lyons}), (p:Patient {name: "James Lewis"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Christopher Duncan}), (p:Patient {name: "James Lewis"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Charcot-Marie-Tooth-Disease}), (p:Patient {name: "James Lewis"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "GERD Surgery (Fundoplication)}), (p:Patient {name: "James Lewis"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "James Lewis}), (p:Patient {name: "Kellie Vasquez"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Jasmin Moore}), (p:Patient {name: "Kellie Vasquez"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Bioterrorism}), (p:Patient {name: "Kellie Vasquez"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "PUVA Therapy (Photochemotherapy)}), (p:Patient {name: "Kellie Vasquez"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "James Evans}), (p:Patient {name: "Jonathan Jones"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Karen Berg}), (p:Patient {name: "Jonathan Jones"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Dwarfism Campomelic (Campomelic Dysplasia)}), (p:Patient {name: "Jonathan Jones"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Joint Aspiration}), (p:Patient {name: "Jonathan Jones"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Charles Parker}), (p:Patient {name: "Jessica Ramirez"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Paige Zamora}), (p:Patient {name: "Jessica Ramirez"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "ADHD in Teens (Attention Deficit Hyperactivity Disorder in Teens)}), (p:Patient {name: "Jessica Ramirez"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Nebulizer for Asthma}), (p:Patient {name: "Jessica Ramirez"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Jimmy Johnson}), (p:Patient {name: "Jessica Monroe"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Alex Martinez}), (p:Patient {name: "Jessica Monroe"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "ICD (Implantable Cardiac Defibrillator)}), (p:Patient {name: "Jessica Monroe"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Surgery for GERD (Fundoplication)}), (p:Patient {name: "Jessica Monroe"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Chelsea Rojas}), (p:Patient {name: "Sabrina Garcia"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Christopher Duncan}), (p:Patient {name: "Sabrina Garcia"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "CBC (Complete Blood Count)}), (p:Patient {name: "Sabrina Garcia"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Monitoring, Esophageal pH Test (Esophageal pH Monitoring)}), (p:Patient {name: "Sabrina Garcia"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Chelsea Rojas}), (p:Patient {name: "Joshua Baker"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Rebekah King}), (p:Patient {name: "Joshua Baker"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "age related macular degeneration (Macular Degeneration)}), (p:Patient {name: "Joshua Baker"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Amniotic Fluid (Amniocentesis)}), (p:Patient {name: "Joshua Baker"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Kara Robinson}), (p:Patient {name: "Heather Perez"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "David Lopez}), (p:Patient {name: "Heather Perez"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Disorder Antisocial Personality (Antisocial Personality Disorder)}), (p:Patient {name: "Heather Perez"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Epidural Steroid Injection}), (p:Patient {name: "Heather Perez"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Theresa Krause}), (p:Patient {name: "Jeffery Wallace"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Kelly Howard}), (p:Patient {name: "Jeffery Wallace"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Ablation Therapy for Arrhythmias}), (p:Patient {name: "Jeffery Wallace"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Mohs Surgery}), (p:Patient {name: "Jeffery Wallace"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "David Lopez}), (p:Patient {name: "Sean Oliver"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Peter Clay}), (p:Patient {name: "Sean Oliver"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Breast Cancer in Young Women}), (p:Patient {name: "Sean Oliver"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Hemodialysis}), (p:Patient {name: "Sean Oliver"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "John Ingram}), (p:Patient {name: "Mr. Jeffrey"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "James Lewis}), (p:Patient {name: "Mr. Jeffrey"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Fluorescent Antinuclear Antibody (Antinuclear Antibody)}), (p:Patient {name: "Mr. Jeffrey"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Detecting Hearing Loss in Children}), (p:Patient {name: "Mr. Jeffrey"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Edward Cordova}), (p:Patient {name: "Meredith Obrien"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Michael Thomas}), (p:Patient {name: "Meredith Obrien"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Alzheimers Disease Patient Caregiver Guide (Alzheimer's Disease Patient Caregiver Guide)}), (p:Patient {name: "Meredith Obrien"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Angioplasty (Coronary Angioplasty)}), (p:Patient {name: "Meredith Obrien"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Lisa Dixon}), (p:Patient {name: "Aaron Hill"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "April Cochran}), (p:Patient {name: "Aaron Hill"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Divisum Pancreas (Pancreas Divisum)}), (p:Patient {name: "Aaron Hill"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Thecal Puncture (Lumbar Puncture)}), (p:Patient {name: "Aaron Hill"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Jeffrey Lyons}), (p:Patient {name: "Paige Zamora"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Kirsten Nicholson}), (p:Patient {name: "Paige Zamora"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Finger Broken (Broken Finger)}), (p:Patient {name: "Paige Zamora"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Tricuspid Heart Valve Replacement (Heart Valve Disease Treatment)}), (p:Patient {name: "Paige Zamora"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Jessica Monroe}), (p:Patient {name: "Thomas Haley"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Lisa Dixon}), (p:Patient {name: "Thomas Haley"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Cancer Detection}), (p:Patient {name: "Thomas Haley"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Eye Pressure Measurement (Tonometry)}), (p:Patient {name: "Thomas Haley"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Micheal Wilson}), (p:Patient {name: "Michael Holmes"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Michael Osborn}), (p:Patient {name: "Michael Holmes"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Incontinence Products for Men (Urinary Incontinence Products for Men)}), (p:Patient {name: "Michael Holmes"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Transcutaneous Electrical Nerve Stimulation}), (p:Patient {name: "Michael Holmes"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "April Cochran}), (p:Patient {name: "William Sherman"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Jeffrey Lyons}), (p:Patient {name: "William Sherman"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "alveolar osteitis (Dry Socket Overview)}), (p:Patient {name: "William Sherman"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Breast Implants (Breast Augmentation)}), (p:Patient {name: "William Sherman"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Edward Love}), (p:Patient {name: "David Lopez"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Meredith Obrien}), (p:Patient {name: "David Lopez"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "DI (Diabetes Insipidus)}), (p:Patient {name: "David Lopez"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Dobutamine Stress Test For Heart Disease (Coronary Artery Disease Screening Tests (CAD))}), (p:Patient {name: "David Lopez"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Meredith Obrien}), (p:Patient {name: "Joseph Peck"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Franklin Brown}), (p:Patient {name: "Joseph Peck"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Eye Allergy}), (p:Patient {name: "Joseph Peck"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Plastic Surgery, Neck Lift (Neck Lift Cosmetic Surgery)}), (p:Patient {name: "Joseph Peck"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Stacey Smith}), (p:Patient {name: "Jessica Smith"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Gabrielle Beltran}), (p:Patient {name: "Jessica Smith"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "CT Colonosopy (Virtual Colonoscopy)}), (p:Patient {name: "Jessica Smith"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "CRP (C-Reactive Protein Test (CRP))}), (p:Patient {name: "Jessica Smith"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Brianna Ramirez}), (p:Patient {name: "Joshua Hanson"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Ian Cooke}), (p:Patient {name: "Joshua Hanson"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Esophagoscopy (Endoscopy)}), (p:Patient {name: "Joshua Hanson"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Partial Dentures (Dentures)}), (p:Patient {name: "Joshua Hanson"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Andrew Frazier}), (p:Patient {name: "Evelyn Jones"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Edward Love}), (p:Patient {name: "Evelyn Jones"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Asthma OTC medication (Asthma: Over The Counter Treatment)}), (p:Patient {name: "Evelyn Jones"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Electroencephalogram (EEG - Electroencephalogram)}), (p:Patient {name: "Evelyn Jones"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Linda Gentry}), (p:Patient {name: "Christopher Campbell"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Michael Holmes}), (p:Patient {name: "Christopher Campbell"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Acute Bronchitis (Bronchitis (Acute))}), (p:Patient {name: "Christopher Campbell"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Bowel Diversion Surgery Ileostomy, Colostomy}), (p:Patient {name: "Christopher Campbell"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Aaron Hill}), (p:Patient {name: "Ivan Ibarra"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Kenneth Chambers}), (p:Patient {name: "Ivan Ibarra"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "IR (Insulin Resistance)}), (p:Patient {name: "Ivan Ibarra"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Double Balloon Endoscopy (Balloon Endoscopy)}), (p:Patient {name: "Ivan Ibarra"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Michael Thomas}), (p:Patient {name: "Edward Love"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Tara Bowman}), (p:Patient {name: "Edward Love"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Emotional Eating}), (p:Patient {name: "Edward Love"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Screening Cancer (Cancer Detection)}), (p:Patient {name: "Edward Love"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Tara Bowman}), (p:Patient {name: "Damon Rodriguez"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Jeffrey Lyons}), (p:Patient {name: "Damon Rodriguez"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Amniocentesis}), (p:Patient {name: "Damon Rodriguez"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Balloon Enteroscopy (Balloon Endoscopy)}), (p:Patient {name: "Damon Rodriguez"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Sean Oliver}), (p:Patient {name: "Dennis Miller"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Joseph Peck}), (p:Patient {name: "Dennis Miller"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Barrier Methods of Birth Control}), (p:Patient {name: "Dennis Miller"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Stomach Bypass (Gastric Bypass Surgery)}), (p:Patient {name: "Dennis Miller"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Garrett Wallace}), (p:Patient {name: "Alexandra Owens"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Damon Rodriguez}), (p:Patient {name: "Alexandra Owens"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "osteitis deformans (Paget's Disease)}), (p:Patient {name: "Alexandra Owens"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "IVC (Intravenous Cholangiogram)}), (p:Patient {name: "Alexandra Owens"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Jessica Monroe}), (p:Patient {name: "Karen Berg"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Meredith Obrien}), (p:Patient {name: "Karen Berg"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Abscessed Tooth Guide}), (p:Patient {name: "Karen Berg"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Diaphragm, Birth Control (Barrier Methods of Birth Control)}), (p:Patient {name: "Karen Berg"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Jasmin Moore}), (p:Patient {name: "Eugene Stone"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Aaron Hill}), (p:Patient {name: "Eugene Stone"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Cosmetic Surgery, Chemical Peel (Chemical Peel)}), (p:Patient {name: "Eugene Stone"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Lap Band Surgery (Gastric Banding)}), (p:Patient {name: "Eugene Stone"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Curtis Lewis}), (p:Patient {name: "Paula Smith"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "Melissa Schmidt}), (p:Patient {name: "Paula Smith"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Drowning}), (p:Patient {name: "Paula Smith"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Arthroplasty (Joint Replacement Surgery Of The Hand)}), (p:Patient {name: "Paula Smith"}) CREATE (p);-[r:recieves]->(t))
MATCH (d:Doctor {name: "Jeremiah Atkins}), (p:Patient {name: "Kenneth Chambers"}) CREATE (d)-[r:Treats]->(p);
MATCH (d:Doctor {name: "James Lewis}), (p:Patient {name: "Kenneth Chambers"}) CREATE (d)-[r:Treats]->(p);
MATCH (i: Illness {name: "Causes of Chest Pain Signs and Symptoms}), (p:Patient {name: "Kenneth Chambers"}) CREATE (p);-[r:ailed_by]->(i)
MATCH (t: Treatment {name: "Gastroesophageal Reflux Disease Test (Esophageal pH Monitoring)}), (p:Patient {name: "Kenneth Chambers"}) CREATE (p);-[r:recieves]->(t))
