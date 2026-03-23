A set of forty popular music drum pattern stimuli with perceived complexity measures

Olivier Senn, Florian Hoesl, Rafael Jerjen, Toni Bechtold, Lorenz Kilchenmann, Dawn Rose, Elena Alessandri


Audio stimuli folder

This folder contains the audio stimuli in mp3 format.

01_TayR_2.mp3: Stimulus  1, A Kind Of Magic
02_JacA_2.mp3: Stimulus  2, The Dock Of The Bay
03_GroD_3.mp3: Stimulus  3, Smells Like Teen Spirit
04_JohR_2.mp3: Stimulus  4, Boogie Wonderland
05_JorS_2.mp3: Stimulus  5, Vultures 
06_BonJ_5.mp3: Stimulus  6, Kashmir
07_FreJ_3.mp3: Stimulus  7, Street Of Dreams
08_RobJ_3.mp3: Stimulus  8, Change The World
09_HakO_3.mp3: Stimulus  9, Let's Dance
10_McKD_2.mp3: Stimulus 10, Space Cowboy
11_NelP_5.mp3: Stimulus 11, I Feel For You
12_McKD_3.mp3: Stimulus 12, Virtual Insanity
13_PeaN_4.mp3: Stimulus 13, Bravado
14_BroG_5.mp3: Stimulus 14, Let's Go Dancin'
15_FreJ_5.mp3: Stimulus 15, Discipline
16_StaJ_4.mp3: Stimulus 16, Pass The Peas
17_PhiS_5.mp3: Stimulus 17, The Pump
18_CopS_1.mp3: Stimulus 18, Roxanne
19_YouE_5.mp3: Stimulus 19, Dreamin'
20_GadJ_1.mp3: Stimulus 20, Soon I'll Be Loving You Again
21_BroG_4.mp3: Stimulus 21, Summer Madness
22_HakO_2.mp3: Stimulus 22, Listen Up!
23_ModJ_5.mp3: Stimulus 23, Jungle Man
24_ChaD_5.mp3: Stimulus 24, Shake Everything You Got
25_SteB_4.mp3: Stimulus 25, Chicken
26_ModJ_3.mp3: Stimulus 26, Cissy Strut
27_PeaN_2.mp3: Stimulus 27, Far Cry
28_GroD_5.mp3: Stimulus 28, Alone + Easy Target
29_JorS_3.mp3: Stimulus 29, Soul Man
30_RobJ_1.mp3: Stimulus 30, Ain't Nobody
31_GarD_5.mp3: Stimulus 31, Diggin' On James Brown
32_JohR_3.mp3: Stimulus 32, In The Stone
33_SteB_1.mp3: Stimulus 33, Southwick
34_ErrG_1.mp3: Stimulus 34, You Can Make It If You Try
35_DeiA_3.mp3: Stimulus 35, The Dump
36_WilB_3.mp3: Stimulus 36, Killing In The Name Of
37_StuC_4.mp3: Stimulus 37, Cold Sweat
38_FreJ_4.mp3: Stimulus 38, Hyperpower!
39_PurB_5.mp3: Stimulus 39, Rock Steady
40_MarB_4.mp3: Stimulus 40, Jelly Belly


Experimental data folder

This folder contains all information and data about the listening experiment.


contests.Rda: Information about the n = 4400 pairwise comparisons trials

ID = Participant identification code
Phase = Phase of the experiment in which the trial took place (1 = first phase, 2 = second phase)
Winner = Stimulus ID number of stimulus that won the trial
Loser = Stimulus ID number of stimulus that lost the trial


p_matrix.Rda

Significance probabilities against null hypothesis H0: beta_i - beta_j = 0, where beta_i and beta_j are Bradley-Terry estimates of stimuli i (rows of matrix) and j (columns of matrix).


participants.Rda: Information on n=220 participants whose data were used for Bradley-Terry modelling and complexity estimation

ID = Participant identification code
Consent = Participant gave informed consent (TRUE / FALSE)
Gender = Gender of the participant (Female / Male / Other / NA)
Country = Country of residence of the participant
Age = Age of the participant (years)
LanguageSkills = Participant's competence in survey language (Native / Competent (C) / Independent (B) / Basic (A))
ExpertiseCategory = Self-reported musical expertise category (Professional Musician / Music Student / Amateur Musician / Music Listener / Not Interested)
MSI_14 = Gold-MSI self report inventory item 14 ("I have never been complimented for my talents as a musical performer")
MSI_27 = Gold-MSI self report inventory item 27 ("I would not consider myself a musician.")
MSI_32 = Gold-MSI self report inventory item 32 ("I engaged in regular, daily practice of a musical instrument (including voice) for 0 / 1 / 2 /3 /4-5 / 6-9 / 10 or more years.")
MSI_33 = Gold-MSI self report inventory item 33 ("At the peak of my interest, I practiced 0 / 0.5 / 1 / 1.5 / 2 / 3-4 / 5 or more hours per day on my primary instrument.")
MSI_35 = Gold-MSI self report inventory item 35 ("I have had formal training in music theory for 0 / 0.5 / 1 / 2 / 3 / 4-6 / 7 or more years.")
MSI_36 = Gold-MSI self report inventory item 36 ("I have had 0 / 0.5 / 1 / 2 / 3-5 / 6-9 / 10 or more years of formal training on a musical instrument (including voice) during my lifetime.")
MSI_37 = Gold-MSI self report inventory item 37 ("I can play 0 / 1 / 2 / 3 / 4 / 5 / 6 or more musical instruments.")
MSI_Training = Gold-MSI musical training subscale
ExpertiseBinary = Binary variable, encodes whether a participant's MSI_Training > 26.52 (high) or MSI_Training < 26.52 (low)
Alternative_Indie = Participant preference for music in alternative or indie style (0-6)
Blues = Participant preference for music in blues style (0-6)
Country_Western = Participant preference for music in country and western style (0-6)
Dance_Electronic = Participant preference for electronic dance music (0-6)
Disco = Participant preference for disco music (0-6)
Funk = Participant preference for funk music (0-6)
Gospel = Participant preference for gospel music (0-6)
Heavy_Metal = Participant preference for heavy metal music (0-6)
Jazz = Participant preference for jazz music (0-6)
Classical_Music = Participant preference for classical music (0-6)
Latin = Participant preference for latin music (0-6)
Pop = Participant preference for pop music (0-6)
Rap_Hip_Hop = Participant preference for rap or hip-hop music (0-6)
Reggae_Dub_Dancehall = Participant preference for reggae, dub, or dancehall music (0-6)
RnB = Participant preference for rhythm'n'blues music (0-6)
Rock = Participant preference for rock music (0-6)
Rock_n_Roll = Participant preference for rock'n'roll music (0-6)
Soul = Participant preference for soul music (0-6)
Traditional_Folk = Participant preference for traditional or folk music (0-6)
World_Music = Participant preference for world music (0-6)
Contemporary_Art_Music = Participant preference for contemporary art music (0-6)
Phase = Phase of the experiment in which the participant took part (1 = first phase, 2 = second phase)
Language = Language version of the survey the participant filled (English, German)
Source = Recruitment method (MTurk, Other)
Row = Row of the design the participant was assigned to (see Table 7)
First_Set = Information whether participant was first presented the trials with uppercase stimuli (upper) or lowercase stimuli (lower)


se_matrix.Rda

Standard errors for the estimated differences beta_i - beta_j, where beta_i and beta_j are Bradley-Terry estimates of stimuli i (rows of matrix) and j (columns of matrix).



Stimuli information folder

This folder contains information about the drum patterns.


drumpatterns.Rda: List of drum events for all forty drum patterns

Stimulus = Stimulus ID number (see also first two characters in audio stimuli names)
Audiofile = Name of the audiofile (see Audio stimuli)
Instrument = Instrument (plus playing technique) for each strike
InstrumentFamily = Type of instrument (BassDrum, SnareDrum, Cymbal)
Seconds = Physical onset time of the event in seconds (0.000 = start of the audio file)
Beats = Metrical onset time of the event in beats / quarter note units (0.000 = beat one of measure one, 0.250 = one 16th later)
TranscribedDynamics = Dynamic information (0.25 = ghost note, 0.50 = soft, 0.75 = mezzoforte, 1.00 = loud)
LocalTempoBPM = Local tempo estimate in beats per minute, calculated from the first derivative of a quadratic linear model that regresses Seconds on Beats and the square of Beats
MetronomicGrid = Quadratic model fit at Beats
MicrotimingSeconds = Residual at Beats, measures in seconds
MicrotimingBeats = Residual at Beats, measures as a proportion of local beat duration
AudioSample = Name of the audio sample used from the Toontrack Superior Drummer Custom & Vintage audio samples library (version 2.4.4) to recreate the pattern
LoudnessDB = Loudness in decibel, compared to maximal loudness (0 dB)


stimuli.Rda: Information on stimuli

Stimulus = Stimulus ID number (see also first two characters in audio stimuli names)
Label = Label of the stimulus during the experiment (uppercase or lowercase letter)
SongTitle = Title of the track/song in the original recording
Act = Band name or name of main artist
AlbumTitle = Title of the album on which the track originally appeared
Year = Recording year of the track
OriginalDrummer = Drummer who played the drum pattern on the original recording
StartTime = Starting time (seconds) of the excerpt on the original recording
Audiofile = Name of the audiofile (see Audio stimuli)
PerceivedComplexity = Bradley-Terry beta coefficient
SE_Down = Standard error for the difference between beta coefficients with lower neighbour
SE_Up = Standard error for the difference between beta coefficients with upper neighbour
Set = Sets A and B with approximately the same PerceivedComplexity mean, variance, skewness, and kurtosis
OnsetsTotal = Total number of note onsets / strokes in the pattern
OnsetsBassDrum = Total number of note onsets / strokes in the bass drum voice
OnsetsSnareDrum = Total number of note onsets / strokes in the snare drum voice
OnsetsCymbal = Total number of note onsets / strokes in the cymbal voices
Duration = Duration of the stimulus in seconds
LoudnessRMS = RMS Loudness of the stimulus in decibels
InitialTempoBPM = Local tempo at the first onset in the pattern (see LocalTempoBPM in drumpatterns.Rda dataframe)
FinalTempoBPM = Local tempo at the last onset in the pattern (see LocalTempoBPM in drumpatterns.Rda dataframe)
TempoDriftBPM = FinalTempoBPM - InitialTempoBPM
AbsoluteTempoDriftBPM = Absolute value of TempoDriftBPM
MicrotimingSecondsSD = sd of all MicrotimingSeconds values for this stimulus (see MicrotimingSeconds in drumpatterns.Rda dataframe)
MicrotimingBeatsSD = sd of all MicrotimingBeats values for this stimulus (see MicrotimingBeats in drumpatterns.Rda dataframe)


transcriptions.pdf: Transcriptions of the forty stimuli



Supplementary Information Folder

IC_Model.pdf: Information on the objective complexity model using information content and the IDyOM platform


