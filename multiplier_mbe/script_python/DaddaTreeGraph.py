fileDiRiferimento='daddaTree_Layers_Graph.txt'
F=open(fileDiRiferimento, 'w')

s7='Layer:7\n'

F.write(s7)
first_string='|'
x=64
while x:
	if x<11:
		first_string+=' '+str(x-1)+'|'
	else:
		first_string+=str(x-1)+'|'
	
	x=x-1
first_string=first_string+'\n'

F.write(first_string)
c1=0
c2=35
c=63
for r in range(17):
	row='|'+'  |'*(c-c2)+' *|'*(c2-c1+1)+'  |'*(c1-0)+'R['+str(r)+']\n'
	if r==0 or r==14:
		c2=c2+1
		
	elif r>0 and r<14:
		c2=c2+2
		
	c1=c1+2
	F.write(row)
	
space='\n\n\n'

F.write(space)

s6='Layer:6\n'

F.write(s6)
first_string='|'
x=64
while x:
	if x<11:
		first_string+=' '+str(x-1)+'|'
	else:
		first_string+=str(x-1)+'|'
	
	x=x-1
first_string=first_string+'\n'

F.write(first_string)	

c1=0
c2=63
c=63
for r in range(13):
	row='|'+'  |'*(c-c2)+' *|'*(c2-c1+1)+'  |'*(c1-0)+'R['+str(r)+']\n'
	if r==1 or r==11:
		c2=c2-1
	elif r>1 and r<11:
		c2=c2-2
		
	c1=c1+2
	F.write(row)		
		

space='\n\n\n'

F.write(space)

s5='Layer:5\n'

F.write(s5)
first_string='|'
x=64
while x:
	if x<11:
		first_string+=' '+str(x-1)+'|'
	else:
		first_string+=str(x-1)+'|'
	
	x=x-1
first_string=first_string+'\n'

F.write(first_string)	

c1=0
c2=63
c=63
for r in range(9):
	row='|'+'  |'*(c-c2)+' *|'*(c2-c1+1)+'  |'*(c1-0)+'R['+str(r)+']\n'
	if r==1 or r==7:
		c2=c2-1
	elif r>1 and r<7:
		c2=c2-2
		
	c1=c1+2
	F.write(row)		
	
	

space='\n\n\n'

F.write(space)

s4='Layer:4\n'

F.write(s4)
first_string='|'
x=64
while x:
	if x<11:
		first_string+=' '+str(x-1)+'|'
	else:
		first_string+=str(x-1)+'|'
	
	x=x-1
first_string=first_string+'\n'

F.write(first_string)	

c1=0
c2=63
c=63
for r in range(6):
	row='|'+'  |'*(c-c2)+' *|'*(c2-c1+1)+'  |'*(c1-0)+'R['+str(r)+']\n'
	if r==1 or r==4:
		c2=c2-1
	elif r>1 and r<4:
		c2=c2-2
		
	c1=c1+2
	F.write(row)	
	
	
space='\n\n\n'

F.write(space)

s3='Layer:3\n'

F.write(s3)
first_string='|'
x=64
while x:
	if x<11:
		first_string+=' '+str(x-1)+'|'
	else:
		first_string+=str(x-1)+'|'
	
	x=x-1
first_string=first_string+'\n'

F.write(first_string)	

c1=0
c2=63
c=63
for r in range(4):
	row='|'+'  |'*(c-c2)+' *|'*(c2-c1+1)+'  |'*(c1-0)+'R['+str(r)+']\n'
	if r==1 or r==2:
		c2=c2-1
		
	c1=c1+2
	F.write(row)
	
	

space='\n\n\n'

F.write(space)

s2='Layer:2\n'

F.write(s2)
first_string='|'
x=64
while x:
	if x<11:
		first_string+=' '+str(x-1)+'|'
	else:
		first_string+=str(x-1)+'|'
	
	x=x-1
first_string=first_string+'\n'

F.write(first_string)	

c1=0
c2=63
c=63
for r in range(3):
	row='|'+'  |'*(c-c2)+' *|'*(c2-c1+1)+'  |'*(c1-0)+'R['+str(r)+']\n'
		
	c1=c1+2
	F.write(row)
	
space='\n\n\n'

F.write(space)

s1='Layer:1\n'

F.write(s1)
first_string='|'
x=64
while x:
	if x<11:
		first_string+=' '+str(x-1)+'|'
	else:
		first_string+=str(x-1)+'|'
	
	x=x-1
first_string=first_string+'\n'

F.write(first_string)	

c1=0
c2=63
c=63
for r in range(2):
	row='|'+'  |'*(c-c2)+' *|'*(c2-c1+1)+'  |'*(c1-0)+'R['+str(r)+']\n'

		
	c1=c1+2
	F.write(row)
