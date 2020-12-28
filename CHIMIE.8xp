­10→Xmin
­10→Ymin
10→Xmax
10→Ymax
EffDess
EffÉcran
AxesNAff 
FoncNAff 
1→P
Goto C1


"page 1"
Lbl P1
EffDess
Texte(50,100,"n = m/M")
Ligne(­6,­1,6,­1)
Texte(130,5,"m: masse de l'échantillon (g)")
Texte(113,5,"M: masse molaire échantillon (g/mol)")
Texte(96,5,"n: quantité de matière (mol)")
Goto M1

"page 2"
Lbl P2
EffDess
Texte(50,100,"ρ = m/V")
Ligne(­6,­1,6,­1)
Texte(130,5,"m: masse du corps (g)")
Texte(113,5,"V: volume du corps (V ou m3)")
Texte(96,5,"ρ: masse volumique solution(g/V ou g/m3")
Goto M1

Lbl P3
EffDess
Ligne(­4,10,­4,­8)
Goto M1

Lbl P4
EffDess
Ligne(­4,10,­4,­8)
Goto M1


"detect key press"
Lbl M1
Horizontal ­8
Ligne(­3,­8,­3,­10)
Ligne(3,­8,3,­10)
CouleurTexte(ROUGE)
Texte(149,110,"Quitter")
CouleurTexte(NOIR)
Texte(149,10,"Précedent")
Texte(149,190,"Suivant")
Horizontal ­10
Repeat max(T={11,12,13,14,15,45})
getKey→T
If T=11 :Then
P-1→P
Goto C1
End
If T=12 :Then
P-1→P
Goto C1
End
If T=13
Goto F1
If T=14 :Then
P+1→P
Goto C1
End 
If T=15 :Then
P+1→P
Goto C1
End
If T=45
Goto F1
End


"choose the page..."
Lbl C1
If P>4 :1→P
If P<1 :4→P
If P=1
Goto P1
If P=2
Goto P2
If P=3
Goto P3
If P=4
Goto P4


Lbl F1
EffDess
EffÉcran
FoncAff 
AxesAff 
