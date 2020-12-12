fileDiRiferimento='daddaTree.txt'
F=open(fileDiRiferimento, 'a')
s='FA'
s7=': fulladder port map(layer_7('
FA_n=': fulladder port map('
HA='HA'
HA_s=': half_adder port map('
n_HA=1
n_FA=1
j=0
x=3
k=0
L=['pp0(','pp1(','pp2(','pp3(','pp4(','pp5(','pp6(','pp7(','pp8(','pp9(','pp10(','pp11(','pp12(','pp13(','pp14(','pp15(','pp16(']
col='--column'
#layer7: FA&HA to generate layer6
com='--layer7: FA&HA to generate layer6\n'
F.write(com)
for C in range(26,43):
    column=col+str(C)+'\n'
    F.write(column)    
    if C==26 or C==42:
        index_L=0
        n=C
        if C==42:
            index_L=4
            n=C-8
        stringa=HA+str(n_HA)+HA_s+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),layer_6('+str(0)+')('+str(C)+'),layer_6('+str(0)+')('+str(C+1)+'));'+'\n'
        n_HA=n_HA+1
        F.write(stringa)
    elif C==27 or C==41:
        index_L=0
        n=C
        if C==41:
            index_L=4
            n=C-8
        stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_6('+str(1)+')('+str(C)+'),layer_6('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1
        F.write(stringa)
    elif C==28 or C==40:
        index_L=0
        n=C
        if C==40:
            index_L=3
            n=C-6
        stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_6('+str(1)+')('+str(C)+'),layer_6('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)
        stringa=HA+str(n_HA)+HA_s+L[index_L+3]+str(n-6)+'),'+L[index_L+4]+str(n-8)+'),layer_6('+str(2)+')('+str(C)+'),layer_6('+str(1)+')('+str(C+1)+'));'+'\n'
        n_HA=n_HA+1
        F.write(stringa) 
    elif C==29 or C==39:
        index_L=0
        n=C
        if C==39:
            index_L=3      
            n=C-6
        stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_6('+str(2)+')('+str(C)+'),layer_6('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)
        stringa=s+str(n_FA)+FA_n+L[index_L+3]+str(n-6)+'),'+L[index_L+4]+str(n-8)+'),'+L[index_L+5]+str(n-10)+'),layer_6('+str(3)+')('+str(C)+'),layer_6('+str(1)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)
    elif C==30 or C==38:
        index_L=0
        n=C
        if C==38:
            index_L=2
            n=C-4
        stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_6('+str(2)+')('+str(C)+'),layer_6('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)
        stringa=s+str(n_FA)+FA_n+L[index_L+3]+str(n-6)+'),'+L[index_L+4]+str(n-8)+'),'+L[index_L+5]+str(n-10)+'),layer_6('+str(3)+')('+str(C)+'),layer_6('+str(1)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa) 
        stringa=HA+str(n_HA)+HA_s+L[index_L+6]+str(n-12)+'),'+L[index_L+7]+str(n-14)+'),layer_6('+str(4)+')('+str(C)+'),layer_6('+str(2)+')('+str(C+1)+'));'+'\n'
        n_HA=n_HA+1
        F.write(stringa) 
    elif C==31 or C==37:
        index_L=0
        n=C
        if C==37:
            index_L=2
            n=C-4
        stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_6('+str(3)+')('+str(C)+'),layer_6('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)
        stringa=s+str(n_FA)+FA_n+L[index_L+3]+str(n-6)+'),'+L[index_L+4]+str(n-8)+'),'+L[index_L+5]+str(n-10)+'),layer_6('+str(4)+')('+str(C)+'),layer_6('+str(1)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)  
        stringa=s+str(n_FA)+FA_n+L[index_L+6]+str(n-12)+'),'+L[index_L+7]+str(n-14)+'),'+L[index_L+8]+str(n-16)+'),layer_6('+str(5)+')('+str(C)+'),layer_6('+str(2)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa) 
    elif C==32 or C==36:
        index_L=0
        n=C
        i=3
        if C==36:
            index_L=1
            n=C-2
            i=4
        stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_6('+str(i)+')('+str(C)+'),layer_6('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1  
        i=i+1
        F.write(stringa)
        stringa=s+str(n_FA)+FA_n+L[index_L+3]+str(n-6)+'),'+L[index_L+4]+str(n-8)+'),'+L[index_L+5]+str(n-10)+'),layer_6('+str(i)+')('+str(C)+'),layer_6('+str(1)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1    
        i=i+1
        F.write(stringa)  
        stringa=s+str(n_FA)+FA_n+L[index_L+6]+str(n-12)+'),'+L[index_L+7]+str(n-14)+'),'+L[index_L+8]+str(n-16)+'),layer_6('+str(i)+')('+str(C)+'),layer_6('+str(2)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1  
        i=i+1
        F.write(stringa) 
        stringa=HA+str(n_HA)+HA_s+L[index_L+9]+str(n-18)+'),'+L[index_L+10]+str(n-20)+'),layer_6('+str(i)+')('+str(C)+'),layer_6('+str(3)+')('+str(C+1)+'));'+'\n'
        n_HA=n_HA+1
        F.write(stringa) 
    else:
        index_L=0
        n=C
        for R in range(4):
            stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_6('+str(4+R)+')('+str(C)+'),layer_6('+str(R)+')('+str(C+1)+'));'+'\n'
            n_FA=n_FA+1     
            F.write(stringa) 
            index_L=index_L+3
            n=n-6
    
        
        
#layer6: FA&HA to generate layer5
com='--layer6: FA&HA to generate layer5\n'
F.write(com)
s6=': fulladder port map(layer_6('
for C in range(18,51):
    column=col+str(C)+'\n'
    F.write(column)    
    if C==18 or C==50:
        index_L=0
        n=C
        if C==50:
            index_L=8
            n=C-16
        stringa=HA+str(n_HA)+HA_s+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),layer_5('+str(0)+')('+str(C)+'),layer_5('+str(0)+')('+str(C+1)+'));'+'\n'
        n_HA=n_HA+1
        F.write(stringa)
    elif C==19 or C==49:
        index_L=0
        n=C
        if C==49:
            index_L=8
            n=C-16
        stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_5('+str(1)+')('+str(C)+'),layer_5('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1
        F.write(stringa)
    elif C==20 or C==48:
        index_L=0
        n=C
        if C==48:
            index_L=7
            n=C-14
        stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_5('+str(1)+')('+str(C)+'),layer_5('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)
        stringa=HA+str(n_HA)+HA_s+L[index_L+3]+str(n-6)+'),'+L[index_L+4]+str(n-8)+'),layer_5('+str(2)+')('+str(C)+'),layer_5('+str(1)+')('+str(C+1)+'));'+'\n'
        n_HA=n_HA+1
        F.write(stringa) 
    elif C==21 or C==47:
        index_L=0
        n=C
        if C==47:
            index_L=7  
            n=C-14         
        stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_5('+str(2)+')('+str(C)+'),layer_5('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)
        stringa=s+str(n_FA)+FA_n+L[index_L+3]+str(n-6)+'),'+L[index_L+4]+str(n-8)+'),'+L[index_L+5]+str(n-10)+'),layer_5('+str(3)+')('+str(C)+'),layer_5('+str(1)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)
    elif C==22 or C==46:
        index_L=0
        n=C
        if C==46:
            index_L=6
            n=C-12
        stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_5('+str(2)+')('+str(C)+'),layer_5('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)
        stringa=s+str(n_FA)+FA_n+L[index_L+3]+str(n-6)+'),'+L[index_L+4]+str(n-8)+'),'+L[index_L+5]+str(n-10)+'),layer_5('+str(3)+')('+str(C)+'),layer_5('+str(1)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa) 
        stringa=HA+str(n_HA)+HA_s+L[index_L+6]+str(n-12)+'),'+L[index_L+7]+str(n-14)+'),layer_5('+str(4)+')('+str(C)+'),layer_5('+str(2)+')('+str(C+1)+'));'+'\n'
        n_HA=n_HA+1
        F.write(stringa) 
    elif C==23 or C==45:
        index_L=0
        n=C
        if C==45:
            index_L=6
            n=C-12
        stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_5('+str(3)+')('+str(C)+'),layer_5('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)
        stringa=s+str(n_FA)+FA_n+L[index_L+3]+str(n-6)+'),'+L[index_L+4]+str(n-8)+'),'+L[index_L+5]+str(n-10)+'),layer_5('+str(4)+')('+str(C)+'),layer_5('+str(1)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)  
        stringa=s+str(n_FA)+FA_n+L[index_L+6]+str(n-12)+'),'+L[index_L+7]+str(n-14)+'),'+L[index_L+8]+str(n-16)+'),layer_5('+str(5)+')('+str(C)+'),layer_5('+str(2)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa) 
    elif C==24 or C==44:
        index_L=0
        n=C
        if C==44:
            index_L=5
            n=C-10
        stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_5('+str(3)+')('+str(C)+'),layer_5('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)
        stringa=s+str(n_FA)+FA_n+L[index_L+3]+str(n-6)+'),'+L[index_L+4]+str(n-8)+'),'+L[index_L+5]+str(n-10)+'),layer_5('+str(4)+')('+str(C)+'),layer_5('+str(1)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)  
        stringa=s+str(n_FA)+FA_n+L[index_L+6]+str(n-12)+'),'+L[index_L+7]+str(n-14)+'),'+L[index_L+8]+str(n-16)+'),layer_5('+str(5)+')('+str(C)+'),layer_5('+str(2)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa) 
        stringa=HA+str(n_HA)+HA_s+L[index_L+9]+str(n-18)+'),'+L[index_L+10]+str(n-20)+'),layer_5('+str(6)+')('+str(C)+'),layer_5('+str(3)+')('+str(C+1)+'));'+'\n'
        n_HA=n_HA+1
        F.write(stringa) 
    elif C==25:
        index_L=0
        n=C
        for R in range(4):
            stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_5('+str(4+R)+')('+str(C)+'),layer_5('+str(R)+')('+str(C+1)+'));'+'\n'
            n_FA=n_FA+1     
            F.write(stringa) 
            index_L=index_L+3
            n=n-6
    elif C==26 or C==43:
        index_L=2
        n=C-2*index_L
        if C==43:
            index_L=5
            n=C-2*index_L
        
        for R in range(4):
            if R==0:
                stringa=s+str(n_FA)+s6+str(0)+')('+str(C)+'),'+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),layer_5('+str(4+R)+')('+str(C)+'),layer_5('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+2
                n=n-4
            else:
                stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_5('+str(4+R)+')('+str(C)+'),layer_5('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+3
                n=n-6
            n_FA=n_FA+1     
            F.write(stringa)
    elif C==27 or C==42:
        index_L=3
        n=C-2*index_L
        if C==42:
            index_L=6
            n=C-2*index_L
        
        for R in range(4):
            if R==0:
                stringa=s+str(n_FA)+s6+str(0)+')('+str(C)+'),'+'layer_6('+str(1)+')('+str(C)+'),'+L[index_L]+str(n)+'),layer_5('+str(4+R)+')('+str(C)+'),layer_5('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+1
                n=n-2
            else:
                stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_5('+str(4+R)+')('+str(C)+'),layer_5('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+3
                n=n-6
            n_FA=n_FA+1     
            F.write(stringa)  
    elif C==28 or C==41:
        index_L=5
        if C==41:
            index_L=7
        n=C-2*index_L
        for R in range(4):
            if R==0:
                stringa=s+str(n_FA)+s6+str(0)+')('+str(C)+'),'+'layer_6('+str(1)+')('+str(C)+'),'+'layer_6('+str(2)+')('+str(C)+'),layer_5('+str(4+R)+')('+str(C)+'),layer_5('+str(R)+')('+str(C+1)+'));'+'\n'
            else:
                stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_5('+str(4+R)+')('+str(C)+'),layer_5('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+3
                n=n-6
            n_FA=n_FA+1     
            F.write(stringa) 
    elif C==29 or C==40:
        index_L=6
        if C==40:
            index_L=8
        n=C-2*index_L
        for R in range(4):
            if R==0:
                stringa=s+str(n_FA)+s6+str(0)+')('+str(C)+'),'+'layer_6('+str(1)+')('+str(C)+'),'+'layer_6('+str(2)+')('+str(C)+'),layer_5('+str(4+R)+')('+str(C)+'),layer_5('+str(R)+')('+str(C+1)+'));'+'\n'
            elif R==1:
                stringa=s+str(n_FA)+s6+str(3)+')('+str(C)+'),'+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),layer_5('+str(4+R)+')('+str(C)+'),layer_5('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+2
                n=n-4           
            else:
                stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_5('+str(4+R)+')('+str(C)+'),layer_5('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+3
                n=n-6
            n_FA=n_FA+1     
            F.write(stringa) 
    elif C==30 or C==39:
        index_L=8
        if C==39:
            index_L=9
        n=C-2*index_L
        for R in range(4):
            if R==0:
                stringa=s+str(n_FA)+s6+str(0)+')('+str(C)+'),'+'layer_6('+str(1)+')('+str(C)+'),'+'layer_6('+str(2)+')('+str(C)+'),layer_5('+str(4+R)+')('+str(C)+'),layer_5('+str(R)+')('+str(C+1)+'));'+'\n'
            elif R==1:
                stringa=s+str(n_FA)+s6+str(3)+')('+str(C)+'),'+'layer_6('+str(4)+')('+str(C)+'),'+L[index_L]+str(n)+'),layer_5('+str(4+R)+')('+str(C)+'),layer_5('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+1
                n=n-2    
            else:
                stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_5('+str(4+R)+')('+str(C)+'),layer_5('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+3
                n=n-6
            n_FA=n_FA+1     
            F.write(stringa)  
    elif C==31 or C==38:
        index_L=9
        if C==38:
            index_L=10
        n=C-2*index_L
        for R in range(4):
            if R==0:
                stringa=s+str(n_FA)+s6+str(0)+')('+str(C)+'),'+'layer_6('+str(1)+')('+str(C)+'),'+'layer_6('+str(2)+')('+str(C)+'),layer_5('+str(4+R)+')('+str(C)+'),layer_5('+str(R)+')('+str(C+1)+'));'+'\n'
            elif R==1:
                stringa=s+str(n_FA)+s6+str(3)+')('+str(C)+'),'+'layer_6('+str(4)+')('+str(C)+'),'+'layer_6('+str(5)+')('+str(C)+'),layer_5('+str(4+R)+')('+str(C)+'),layer_5('+str(R)+')('+str(C+1)+'));'+'\n' 
            else:
                stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_5('+str(4+R)+')('+str(C)+'),layer_5('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+3
                n=n-6
            n_FA=n_FA+1     
            F.write(stringa) 
    elif C==32 or C==37:
        index_L=11
        if C==37:
            index_L=11
        n=C-2*index_L
        for R in range(4):
            if R==0:
                stringa=s+str(n_FA)+s6+str(0)+')('+str(C)+'),'+'layer_6('+str(1)+')('+str(C)+'),'+'layer_6('+str(2)+')('+str(C)+'),layer_5('+str(4+R)+')('+str(C)+'),layer_5('+str(R)+')('+str(C+1)+'));'+'\n'
            elif R==1:
                stringa=s+str(n_FA)+s6+str(3)+')('+str(C)+'),'+'layer_6('+str(4)+')('+str(C)+'),'+'layer_6('+str(5)+')('+str(C)+'),layer_5('+str(4+R)+')('+str(C)+'),layer_5('+str(R)+')('+str(C+1)+'));'+'\n' 
            elif R==2:
                stringa=s+str(n_FA)+s6+str(6)+')('+str(C)+'),'+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),layer_5('+str(4+R)+')('+str(C)+'),layer_5('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+2
                n=n-4
            else:
                stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_5('+str(4+R)+')('+str(C)+'),layer_5('+str(R)+')('+str(C+1)+'));'+'\n'            
            n_FA=n_FA+1     
            F.write(stringa)             
    else:
        index_L=12
        n=C-2*index_L
        for R in range(4):
            if R==0:
                stringa=s+str(n_FA)+s6+str(0)+')('+str(C)+'),'+'layer_6('+str(1)+')('+str(C)+'),'+'layer_6('+str(2)+')('+str(C)+'),layer_5('+str(4+R)+')('+str(C)+'),layer_5('+str(R)+')('+str(C+1)+'));'+'\n'
            elif R==1:
                stringa=s+str(n_FA)+s6+str(3)+')('+str(C)+'),'+'layer_6('+str(4)+')('+str(C)+'),'+'layer_6('+str(5)+')('+str(C)+'),layer_5('+str(4+R)+')('+str(C)+'),layer_5('+str(R)+')('+str(C+1)+'));'+'\n' 
            elif R==2:
                stringa=s+str(n_FA)+s6+str(6)+')('+str(C)+'),'+'layer_6('+str(7)+')('+str(C)+'),'+L[index_L]+str(n)+'),layer_5('+str(4+R)+')('+str(C)+'),layer_5('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+1
                n=n-2  
            else:
                stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_5('+str(4+R)+')('+str(C)+'),layer_5('+str(R)+')('+str(C+1)+'));'+'\n'
            n_FA=n_FA+1     
            F.write(stringa)             
 

#layer5: FA&HA to generate layer4
com='--layer5: FA&HA to generate layer4\n'
F.write(com)
s5=': fulladder port map(layer_5('
for C in range(12,57):
    column=col+str(C)+'\n'
    F.write(column)    
    if C==12 or C==56:
        index_L=0
        n=C
        if C==56:
            index_L=11
            n=C-2*index_L
        stringa=HA+str(n_HA)+HA_s+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),layer_4('+str(0)+')('+str(C)+'),layer_4('+str(0)+')('+str(C+1)+'));'+'\n'
        n_HA=n_HA+1
        F.write(stringa)
    elif C==13 or C==55:
        index_L=0
        n=C
        if C==55:
            index_L=11
            n=C-2*index_L
        stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_4('+str(1)+')('+str(C)+'),layer_4('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1
        F.write(stringa)
    elif C==14 or C==54:
        index_L=0
        n=C
        if C==54:
            index_L=10
            n=C-2*index_L
        stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_4('+str(1)+')('+str(C)+'),layer_4('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)
        stringa=HA+str(n_HA)+HA_s+L[index_L+3]+str(n-6)+'),'+L[index_L+4]+str(n-8)+'),layer_4('+str(2)+')('+str(C)+'),layer_4('+str(1)+')('+str(C+1)+'));'+'\n'
        n_HA=n_HA+1
        F.write(stringa) 
    elif C==15 or C==53:
        index_L=0
        n=C
        if C==53:
            index_L=10 
            n=C-2*index_L    
        stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_4('+str(2)+')('+str(C)+'),layer_4('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)
        stringa=s+str(n_FA)+FA_n+L[index_L+3]+str(n-6)+'),'+L[index_L+4]+str(n-8)+'),'+L[index_L+5]+str(n-10)+'),layer_4('+str(3)+')('+str(C)+'),layer_4('+str(1)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)
    elif C==16 or C==52:
        index_L=0
        n=C
        if C==52:
            index_L=9
            n=C-2*index_L
        stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_4('+str(2)+')('+str(C)+'),layer_4('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)
        stringa=s+str(n_FA)+FA_n+L[index_L+3]+str(n-6)+'),'+L[index_L+4]+str(n-8)+'),'+L[index_L+5]+str(n-10)+'),layer_4('+str(3)+')('+str(C)+'),layer_4('+str(1)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa) 
        stringa=HA+str(n_HA)+HA_s+L[index_L+6]+str(n-12)+'),'+L[index_L+7]+str(n-14)+'),layer_4('+str(4)+')('+str(C)+'),layer_4('+str(2)+')('+str(C+1)+'));'+'\n'
        n_HA=n_HA+1
        F.write(stringa) 
    elif C==17:
        index_L=0
        stringa=s+str(n_FA)+FA_n+L[index_L]+str(C)+'),'+L[index_L+1]+str(C-2)+'),'+L[index_L+2]+str(C-4)+'),layer_4('+str(3)+')('+str(C)+'),layer_4('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)
        stringa=s+str(n_FA)+FA_n+L[index_L+3]+str(C-6)+'),'+L[index_L+4]+str(C-8)+'),'+L[index_L+5]+str(C-10)+'),layer_4('+str(4)+')('+str(C)+'),layer_4('+str(1)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)  
        stringa=s+str(n_FA)+FA_n+L[index_L+6]+str(C-12)+'),'+L[index_L+7]+str(C-14)+'),'+L[index_L+8]+str(C-16)+'),layer_4('+str(5)+')('+str(C)+'),layer_4('+str(2)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa) 
    elif C==18 or C==51:
        index_L=2
        if C==51:
            index_L=9
        n=C-2*index_L
        for R in range(3):
            if R==0:
                stringa=s+str(n_FA)+s5+str(0)+')('+str(C)+'),'+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),layer_4('+str(3+R)+')('+str(C)+'),layer_4('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+2
                n=n-4
            else:
                stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_4('+str(3+R)+')('+str(C)+'),layer_4('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+3
                n=n-6
            n_FA=n_FA+1     
            F.write(stringa)
    elif C==19 or C==50:
        index_L=3
        if C==50:
            index_L=10
        n=C-2*index_L
        for R in range(3):
            if R==0:
                stringa=s+str(n_FA)+s5+str(0)+')('+str(C)+'),'+'layer_5('+str(1)+')('+str(C)+'),'+L[index_L]+str(n)+'),layer_4('+str(3+R)+')('+str(C)+'),layer_4('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+1
                n=n-2
            else:
                stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_4('+str(3+R)+')('+str(C)+'),layer_4('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+3
                n=n-6
            n_FA=n_FA+1     
            F.write(stringa)  
    elif C==20 or C==49:
        index_L=5
        if C==49:
            index_L=11
        n=C-2*index_L
        for R in range(3):
            if R==0:
                stringa=s+str(n_FA)+s5+str(0)+')('+str(C)+'),'+'layer_5('+str(1)+')('+str(C)+'),'+'layer_5('+str(2)+')('+str(C)+'),layer_4('+str(3+R)+')('+str(C)+'),layer_4('+str(R)+')('+str(C+1)+'));'+'\n'
            else:
                stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_4('+str(3+R)+')('+str(C)+'),layer_4('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+3
                n=n-6
            n_FA=n_FA+1     
            F.write(stringa) 
    elif C==21 or C==48:
        index_L=6
        if C==48:
            index_L=12
        n=C-2*index_L
        for R in range(3):
            if R==0:
                stringa=s+str(n_FA)+s5+str(0)+')('+str(C)+'),'+'layer_5('+str(1)+')('+str(C)+'),'+'layer_5('+str(2)+')('+str(C)+'),layer_4('+str(3+R)+')('+str(C)+'),layer_4('+str(R)+')('+str(C+1)+'));'+'\n'
            elif R==1:
                stringa=s+str(n_FA)+s5+str(3)+')('+str(C)+'),'+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),layer_4('+str(3+R)+')('+str(C)+'),layer_4('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+2
                n=n-4           
            else:
                stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_4('+str(3+R)+')('+str(C)+'),layer_4('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+3
                n=n-6
            n_FA=n_FA+1     
            F.write(stringa) 
    elif C==22 or C==47:
        index_L=8
        if C==47:
            index_L=13
        n=C-2*index_L
        for R in range(3):
            if R==0:
                stringa=s+str(n_FA)+s5+str(0)+')('+str(C)+'),'+'layer_5('+str(1)+')('+str(C)+'),'+'layer_5('+str(2)+')('+str(C)+'),layer_4('+str(3+R)+')('+str(C)+'),layer_4('+str(R)+')('+str(C+1)+'));'+'\n'
            elif R==1:
                stringa=s+str(n_FA)+s5+str(3)+')('+str(C)+'),'+'layer_5('+str(4)+')('+str(C)+'),'+L[index_L]+str(n)+'),layer_4('+str(3+R)+')('+str(C)+'),layer_4('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+1
                n=n-2    
            else:
                stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_4('+str(3+R)+')('+str(C)+'),layer_4('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+3
                n=n-6
            n_FA=n_FA+1     
            F.write(stringa)  
    elif C==23 or C==46:
        index_L=9
        if C==46:
            index_L=14
        n=C-2*index_L
        for R in range(3):
            if R==0:
                stringa=s+str(n_FA)+s5+str(0)+')('+str(C)+'),'+'layer_5('+str(1)+')('+str(C)+'),'+'layer_5('+str(2)+')('+str(C)+'),layer_4('+str(3+R)+')('+str(C)+'),layer_4('+str(R)+')('+str(C+1)+'));'+'\n'
            elif R==1:
                stringa=s+str(n_FA)+s5+str(3)+')('+str(C)+'),'+'layer_5('+str(4)+')('+str(C)+'),'+'layer_5('+str(5)+')('+str(C)+'),layer_4('+str(3+R)+')('+str(C)+'),layer_4('+str(R)+')('+str(C+1)+'));'+'\n' 
            else:
                stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_4('+str(3+R)+')('+str(C)+'),layer_4('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+3
                n=n-6
            n_FA=n_FA+1     
            F.write(stringa)
    elif C==24 or C==45:
        index_L=11
        if C==45:
            index_L=15
        n=C-2*index_L
        for R in range(3):
            if R==0:
                stringa=s+str(n_FA)+s5+str(0)+')('+str(C)+'),'+'layer_5('+str(1)+')('+str(C)+'),'+'layer_5('+str(2)+')('+str(C)+'),layer_4('+str(3+R)+')('+str(C)+'),layer_4('+str(R)+')('+str(C+1)+'));'+'\n'
            elif R==1:
                stringa=s+str(n_FA)+s5+str(3)+')('+str(C)+'),'+'layer_5('+str(4)+')('+str(C)+'),'+'layer_5('+str(5)+')('+str(C)+'),layer_4('+str(3+R)+')('+str(C)+'),layer_4('+str(R)+')('+str(C+1)+'));'+'\n' 
            else:
                stringa=s+str(n_FA)+s5+str(6)+')('+str(C)+'),'+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),layer_4('+str(3+R)+')('+str(C)+'),layer_4('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+2
                n=n-4
            n_FA=n_FA+1     
            F.write(stringa)             
    else:
        if C==25:
            index_L=12
        elif C==26 or C==27:
            index_L=13
        elif C==28 or C==29:
            index_L=14
        elif C==30 or C==31:
            index_L=15
        else:
            index_L=16
        n=C-2*index_L
        for R in range(3):
            if R==0:
                stringa=s+str(n_FA)+s5+str(0)+')('+str(C)+'),'+'layer_5('+str(1)+')('+str(C)+'),'+'layer_5('+str(2)+')('+str(C)+'),layer_4('+str(3+R)+')('+str(C)+'),layer_4('+str(R)+')('+str(C+1)+'));'+'\n'
            elif R==1:
                stringa=s+str(n_FA)+s5+str(3)+')('+str(C)+'),'+'layer_5('+str(4)+')('+str(C)+'),'+'layer_5('+str(5)+')('+str(C)+'),layer_4('+str(3+R)+')('+str(C)+'),layer_4('+str(R)+')('+str(C+1)+'));'+'\n' 
            else:
                stringa=s+str(n_FA)+s5+str(6)+')('+str(C)+'),'+'layer_5('+str(7)+')('+str(C)+'),'+L[index_L]+str(n)+'),layer_4('+str(3+R)+')('+str(C)+'),layer_4('+str(R)+')('+str(C+1)+'));'+'\n'
            n_FA=n_FA+1     
            F.write(stringa)                   


#layer4: FA&HA to generate layer3
com='--layer4: FA&HA to generate layer3\n'
F.write(com) 
s4=': fulladder port map(layer_4('
for C in range(8,61):
    column=col+str(C)+'\n'
    F.write(column)    
    if C==8 or C==60:
        index_L=0
        if C==60:
            index_L=13
        n=C-2*index_L
        stringa=HA+str(n_HA)+HA_s+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),layer_3('+str(0)+')('+str(C)+'),layer_3('+str(0)+')('+str(C+1)+'));'+'\n'
        n_HA=n_HA+1
        F.write(stringa)
    elif C==9 or C==59:
        index_L=0
        if C==59:
            index_L=13
        n=C-2*index_L
        stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_3('+str(1)+')('+str(C)+'),layer_3('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1
        F.write(stringa)
    elif C==10 or C==58:
        index_L=0
        if C==58:
            index_L=12
        n=C-2*index_L
        stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_3('+str(1)+')('+str(C)+'),layer_3('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)
        stringa=HA+str(n_HA)+HA_s+L[index_L+3]+str(n-6)+'),'+L[index_L+4]+str(n-8)+'),layer_3('+str(2)+')('+str(C)+'),layer_3('+str(1)+')('+str(C+1)+'));'+'\n'
        n_HA=n_HA+1
        F.write(stringa) 
    elif C==11:
        index_L=0        
        stringa=s+str(n_FA)+FA_n+L[index_L]+str(C)+'),'+L[index_L+1]+str(C-2)+'),'+L[index_L+2]+str(C-4)+'),layer_3('+str(2)+')('+str(C)+'),layer_3('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)
        stringa=s+str(n_FA)+FA_n+L[index_L+3]+str(C-6)+'),'+L[index_L+4]+str(C-8)+'),'+L[index_L+5]+str(C-10)+'),layer_3('+str(3)+')('+str(C)+'),layer_3('+str(1)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)
    elif C==12 or C==57:
        index_L=2
        if C==57:
            index_L=12
        n=C-2*index_L
        for R in range(2):
            if R==0:
                stringa=s+str(n_FA)+s4+str(0)+')('+str(C)+'),'+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),layer_3('+str(2+R)+')('+str(C)+'),layer_3('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+2
                n=n-4
            else:
                stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_3('+str(2+R)+')('+str(C)+'),layer_3('+str(R)+')('+str(C+1)+'));'+'\n'
            n_FA=n_FA+1     
            F.write(stringa)
    elif C==13 or C==56:
        index_L=3
        if C==56:
            index_L=13
        n=C-2*index_L
        for R in range(2):
            if R==0:
                stringa=s+str(n_FA)+s4+str(0)+')('+str(C)+'),'+'layer_4('+str(1)+')('+str(C)+'),'+L[index_L]+str(n)+'),layer_3('+str(2+R)+')('+str(C)+'),layer_3('+str(R)+')('+str(C+1)+'));'+'\n'
                index_L=index_L+1
                n=n-2
            else:
                stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_3('+str(2+R)+')('+str(C)+'),layer_3('+str(R)+')('+str(C+1)+'));'+'\n'

            n_FA=n_FA+1     
            F.write(stringa)  
    elif C==14 or C==55:
        index_L=5
        if C==55:
            index_L=14
        n=C-2*index_L
        for R in range(2):
            if R==0:
                stringa=s+str(n_FA)+s4+str(0)+')('+str(C)+'),'+'layer_4('+str(1)+')('+str(C)+'),'+'layer_4('+str(2)+')('+str(C)+'),layer_3('+str(2+R)+')('+str(C)+'),layer_3('+str(R)+')('+str(C+1)+'));'+'\n'
            else:
                stringa=s+str(n_FA)+FA_n+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),'+L[index_L+2]+str(n-4)+'),layer_3('+str(2+R)+')('+str(C)+'),layer_3('+str(R)+')('+str(C+1)+'));'+'\n'

            n_FA=n_FA+1     
            F.write(stringa) 
    elif C==15 or C==54:
        index_L=6
        if C==54:
            index_L=15
        n=C-2*index_L
        for R in range(2):
            if R==0:
                stringa=s+str(n_FA)+s4+str(0)+')('+str(C)+'),'+'layer_4('+str(1)+')('+str(C)+'),'+'layer_4('+str(2)+')('+str(C)+'),layer_3('+str(2+R)+')('+str(C)+'),layer_3('+str(R)+')('+str(C+1)+'));'+'\n'
            else:
                stringa=s+str(n_FA)+s4+str(3)+')('+str(C)+'),'+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),layer_3('+str(2+R)+')('+str(C)+'),layer_3('+str(R)+')('+str(C+1)+'));'+'\n'         
            n_FA=n_FA+1     
            F.write(stringa) 
    elif C==16 or C==53:
        index_L=8
        if C==53:
            index_L=16
        n=C-2*index_L
        for R in range(2):
            if R==0:
                stringa=s+str(n_FA)+s4+str(0)+')('+str(C)+'),'+'layer_4('+str(1)+')('+str(C)+'),'+'layer_4('+str(2)+')('+str(C)+'),layer_3('+str(2+R)+')('+str(C)+'),layer_3('+str(R)+')('+str(C+1)+'));'+'\n'
            else:
                stringa=s+str(n_FA)+s4+str(3)+')('+str(C)+'),'+'layer_4('+str(4)+')('+str(C)+'),'+L[index_L]+str(n)+'),layer_3('+str(2+R)+')('+str(C)+'),layer_3('+str(R)+')('+str(C+1)+'));'+'\n'
            n_FA=n_FA+1     
            F.write(stringa)  
    else:
   
        for R in range(2):
            if R==0:
                stringa=s+str(n_FA)+s4+str(0)+')('+str(C)+'),'+'layer_4('+str(1)+')('+str(C)+'),'+'layer_4('+str(2)+')('+str(C)+'),layer_3('+str(2+R)+')('+str(C)+'),layer_3('+str(R)+')('+str(C+1)+'));'+'\n'
            else:
                stringa=s+str(n_FA)+s4+str(3)+')('+str(C)+'),'+'layer_4('+str(4)+')('+str(C)+'),'+'layer_4('+str(5)+')('+str(C)+'),layer_3('+str(2+R)+')('+str(C)+'),layer_3('+str(R)+')('+str(C+1)+'));'+'\n' 

            n_FA=n_FA+1     
            F.write(stringa)
      

#layer3: FA&HA to generate layer2
com='--layer3: FA&HA to generate layer2\n'
F.write(com) 
s3=': fulladder port map(layer_3('
for C in range(6,63):
    column=col+str(C)+'\n'
    F.write(column)    
    if C==6 or C==62:
        index_L=0
        if C==62:
            index_L=14
        n=C-2*index_L
        stringa=HA+str(n_HA)+HA_s+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),layer_2('+str(0)+')('+str(C)+'),layer_2('+str(0)+')('+str(C+1)+'));'+'\n'
        n_HA=n_HA+1
        F.write(stringa)
    elif C==7:
        index_L=0
        stringa=s+str(n_FA)+FA_n+L[index_L]+str(C)+'),'+L[index_L+1]+str(C-2)+'),'+L[index_L+2]+str(C-4)+'),layer_2('+str(1)+')('+str(C)+'),layer_2('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1
        F.write(stringa)
    elif C==8 or C==61:
        index_L=2
        if C==61:
            index_L=14
        n=C-2*index_L
        stringa=s+str(n_FA)+s3+str(0)+')('+str(C)+'),'+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),layer_2('+str(1)+')('+str(C)+'),layer_2('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1
        F.write(stringa)
    elif C==9 or C==60:
        index_L=3
        if C==60:
            index_L=15
        n=C-2*index_L
        stringa=s+str(n_FA)+s3+str(0)+')('+str(C)+'),'+'layer_3('+str(1)+')('+str(C)+'),'+L[index_L]+str(n)+'),layer_2('+str(1)+')('+str(C)+'),layer_2('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)  
    else:
        stringa=s+str(n_FA)+s3+str(0)+')('+str(C)+'),'+'layer_3('+str(1)+')('+str(C)+'),'+'layer_3('+str(2)+')('+str(C)+'),layer_2('+str(1)+')('+str(C)+'),layer_2('+str(0)+')('+str(C+1)+'));'+'\n'

        n_FA=n_FA+1     
        F.write(stringa) 
 
 
#layer2: FA&HA to generate layer1
com='--layer2: FA&HA to generate layer1\n'
F.write(com) 
s2=': fulladder port map(layer_2('
for C in range(4,64):
    column=col+str(C)+'\n'
    F.write(column)    
    if C==4:
        index_L=0
        stringa=HA+str(n_HA)+HA_s+L[index_L]+str(C)+'),'+L[index_L+1]+str(C-2)+'),layer_1('+str(0)+')('+str(C)+'),layer_1('+str(0)+')('+str(C+1)+'));'+'\n'
        n_HA=n_HA+1
        F.write(stringa)
    elif C==5:
        index_L=0
        stringa=s+str(n_FA)+FA_n+L[index_L]+str(C)+'),'+L[index_L+1]+str(C-2)+'),'+L[index_L+2]+str(C-4)+'),layer_1('+str(1)+')('+str(C)+'),layer_1('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1
        F.write(stringa)
    elif C==6 or C==63:
        index_L=2
        if C==63:
            index_L=15
        n=C-2*index_L
        stringa=s+str(n_FA)+s2+str(0)+')('+str(C)+'),'+L[index_L]+str(n)+'),'+L[index_L+1]+str(n-2)+'),layer_1('+str(1)+')('+str(C)+'),layer_1('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1
        F.write(stringa)
    elif C==7 or C==62:
        index_L=3
        if C==62:
            index_L=16 
        n=C-2*index_L
        stringa=s+str(n_FA)+s2+str(0)+')('+str(C)+'),'+'layer_2('+str(1)+')('+str(C)+'),'+L[index_L]+str(n)+'),layer_1('+str(1)+')('+str(C)+'),layer_1('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa) 
    elif C==8 or C==61:
        index_L=4
        if C==61:
            index_L=16 
        n=C-2*index_L
        stringa=s+str(n_FA)+s2+str(0)+')('+str(C)+'),'+'layer_2('+str(1)+')('+str(C)+'),'+L[index_L]+str(n)+'),layer_1('+str(1)+')('+str(C)+'),layer_1('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa) 
    elif C==9 or C==60:
        index_L=4
        if C==60:
            index_L=16 
        n=C-2*index_L
        stringa=s+str(n_FA)+s2+str(0)+')('+str(C)+'),'+'layer_2('+str(1)+')('+str(C)+'),'+L[index_L]+str(n)+'),layer_1('+str(1)+')('+str(C)+'),layer_1('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa) 
    elif C==10 or C==59:
        index_L=5
        if C==59:
            index_L=16 
        n=C-2*index_L
        stringa=s+str(n_FA)+s2+str(0)+')('+str(C)+'),'+'layer_2('+str(1)+')('+str(C)+'),'+L[index_L]+str(n)+'),layer_1('+str(1)+')('+str(C)+'),layer_1('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa)         
    else:
        stringa=s+str(n_FA)+s2+str(0)+')('+str(C)+'),'+'layer_2('+str(1)+')('+str(C)+'),'+'layer_3('+str(3)+')('+str(C)+'),layer_1('+str(1)+')('+str(C)+'),layer_1('+str(0)+')('+str(C+1)+'));'+'\n'
        n_FA=n_FA+1     
        F.write(stringa) 
        



s='f_add1<=layer_1(0)(63)&'
x=63
while x:
    if x==1:
        s=s+'layer_1(0)('+str(x-1)+');'+'\n'
    else:
        s=s+'layer_1(0)('+str(x-1)+')&'
    x=x-1
    
F.write(s) 

s='f_add2<=layer_1(1)(63)&'
x=63
while x:
    if x==1:
        s=s+'layer_1(1)('+str(x-1)+');'+'\n'
    else:
        s=s+'layer_1(1)('+str(x-1)+')&'
    x=x-1
F.write(s) 


