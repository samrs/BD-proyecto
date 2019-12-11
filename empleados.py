import random
import string
#import randint from random


class Empleado:
	def __init__(self,empleado_id,jefe_id,foto,apPat,apMat,nombre,puesto_id,
		rfc, curp):
		self.empleado_id=empleado_id
		self.jefe_id=jefe_id
		self.foto=foto
		self.apPat=apPat
		self.apMat=apMat
		self.puesto_id=puesto_id
		self.nombre=nombre
		self.rfc=rfc
		self.curp=curp
	
hombre = [
	"JORGE",
	"DAVID",
	"CARLOS",
	"GONZALO",
	"JAIME",
	"JUAN"
]

mujer=[
	"LORENA",
	"SARA",
	"ALEJANDRA",
	"CAMILA"
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
	'GODINEZ'
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
#homoclave
	homoclave = random.randint(0,15)
	if homoclave < 10:
		c11= '0' + str(homoclave)
	else:
		c11 = str(homoclave)


	return(c1+c2+c3+c4+c5+c6+c7+c8+c9+c10+c11)



i = 0
while i < 30:
	jefe_id='null'
	genero=random.randint(0,1)
	if genero == 0:
		nombre = random.choice(hombre)
	else:
		nombre = random.choice(mujer)
	apPat=random.choice(apellidos)
	apMat=random.choice(apellidos)
	curp=generaCURP(nombre, apPat, apMat, genero)
	homoclave_rfc = ''.join(random.sample(alfanumerico, 3))
	rfc=curp[:10] + homoclave_rfc
	puesto_id = random.randint(1,5)
	empleado = Empleado('seq_empleado_id.nextval',jefe_id,'null',apPat,apMat,nombre,puesto_id,
		rfc, curp)
	print('insert into empleado')
	print('(empleado_id, jefe_id, foto, apellido_paterno,'
		'apellido_materno, nombre,puesto_id, rfc, curp)')
	print('values')
	print('(seq_empleado_id.nextval,null,null,','\''+apPat+'\',','\'' +apMat+'\',',
		  '\'' +nombre+'\',',
		  puesto_id,',',
		  '\'' +rfc+'\',',
		  '\'' +curp+'\');'
		   )
	print()
	i += 1


		

#print(generaCURP('ALEJANDRO','RIVERA','NAGANO',0))

#emp1 = Empleado(,,,,,)









