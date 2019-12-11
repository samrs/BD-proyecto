import random
import string
#import randint from random


class Pasajero:
	def __init__(self,pasajero_id,apPat,apMat,nombre,email,
		fecha_nacimiento, curp):
		self.pasajero_id=pasajero_id
		self.apPat=apPat
		self.apMat=apMat
		self.nombre=nombre
		self.email=email
		self.fecha_nacimiento=fecha_nacimiento
		self.curp=curp
	
hombre = [
	"JORGE",
	"DAVID",
	"CARLOS",
	"GONZALO",
	"JAIME",
	"JUAN",
	"ALEJANDRO",
	"RODRIGO",
	"HERNAN",
	"SAUL",
	"MARIO",
	"TEO",
	"RAMIRO",
	"JAVIER", 
]

mujer=[
	"LORENA",
	"SARA",
	"ALEJANDRA",
	"CAMILA",
	"PATRICIA",
	"JAZMIN",
	"ABIGAIL",
	"ANDREA",
	"MARIA",
	"VANESSA",
	"BERENICE",
	"ANGELICA",
	"LORENA"
]

apellidos = [
	'GONZALEZ',
	'LOPEZ',
	'HERNANDEZ',
	'PEREZ',
	'JIMENEZ',
	'SANCHEZ',
	'OLMOS',
	'RIOS',
	'CAMPOS',
	'RAMOS',
	'GODINEZ',
	'MELENDEZ',
	'FLORES'
]

entidades = [
	'NE',
	'AS',
	'BC',
	'BS',
	'CC',
	'CL',
	'CM',
	'CH',
	'DG',
	'DF',
	'GR',
	'GT',
	'HG',
	'JC',
	'MC',
	'MN',
	'MS',
	'NT',
	'NL',
	'OC',
	'PL',
	'QT',
	'QR',
	'SP',
	'SL',
	'SR',
	'TC',
	'TS',
	'TL',
	'VZ',
	'YN',
	'ZS'
]

consonantes = "BCDFGHJKLMNPQRSTVWXYZ"
consonantes = list(consonantes)
alfanumerico = string.ascii_uppercase + string.digits

	#return random.choice(hombre)



def generaCURP(nombre, apP, apM, genero):
#primera letra del primer apellido
	c1 = apP[0]
#primera VOCAL del primer apellido
	for c in apP:
		if c in 'AEIOU':
			c2 = c
			break
#primera letra del segundo apellido
	c3 = apM[0]
#primera letra del nombre
	c4 = nombre[0]
#fecha nacimiento
	ano = str(random.randint(60,90))
	mes = random.randint(1,12)
	if mes < 10:
		mes = '0' + str(mes)
	else:
		mes = str(mes)
	dia= random.randint(1,28)
	if dia < 10:
		dia = '0' + str(dia)
	else:
		dia = str(dia)

	c5 = ano + mes + dia
#genero
	if genero == 0:
		c6 = 'H'
	else:
		c6 = 'M'
#entidad
	c7 = random.choice(entidades)
		
#Siguiente consonante del primer apellido
	for c in apP[1:]:
		if c in consonantes:
			c8 = c
			break

#Siguiente consonante del segundo apellido
	for c in apM[1:]:
		if c in consonantes:
			c9 = c
			break
#siguiente consonante del nombre
	for c in nombre[1:]:
		if c in consonantes:
			c10 = c
			break
		c10 = 'X'

#homoclave
	homoclave = random.randint(0,15)
	if homoclave < 10:
		c11= '0' + str(homoclave)
	else:
		c11 = str(homoclave)

	return(c1+c2+c3+c4+c5+c6+c7+c8+c9+c10+c11)



i = 0
while i < 70:
	genero=random.randint(0,1)
	if genero == 0:
		nombre = random.choice(hombre)
	else:
		nombre = random.choice(mujer)
	apPat=random.choice(apellidos)
	apMat=random.choice(apellidos)
	email=nombre[:5] + apPat[:3] +'@mail.com'
	email=str.lower(email)
	curp=generaCURP(nombre, apPat, apMat, genero)
	fecha_nacimiento=curp[4:10]
	pasajero = Pasajero('seq_pasajero_id',apPat,apMat,nombre,email,
		fecha_nacimiento, curp)
	print('insert into pasajero')
	print('(pasajero_id,apPat,apMat,nombre,email,fecha_nacimiento, curp)')
	print('values')
	print('(seq_pasajero_id.nextval,','\''+apPat+'\',','\'' +apMat+'\',',
		  '\'' +nombre+'\',',
		 '\'' + email + '\',',
		  'to_date(\'' +fecha_nacimiento+
		  '\',\'yymmdd\'),',
		  '\'' +curp+'\');'
		   )
	print()
	i += 1


		

#print(generaCURP('ALEJANDRO','RIVERA','NAGANO',0))

#emp1 = pasajero(,,,,,)


