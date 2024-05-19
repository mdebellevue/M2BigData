def writeLinearGroupToFile(fileName, linearGroup ):
	with open(fileName, 'w') as f:
		f.write("{")
		f.writelines(["{" + str(mat).replace("[","{").replace("]","}").replace("\n",",") + "},\n" for mat in linearGroup])
		f.write("}")

# TODO: see if sage already has enumerated the symmetric tensors
# Seems like maybe, but maybe not
def subspaceToM2Matrix (b):
	str(b).replace("[\n","{").replace(",\n",",").replace("\n]","}\n")

def enumerateGrassmanianToFile(fileName,n,k,order,varName):
	V = GF(order,varName)^n
	G = V.subspaces(k)
	with open(fileName, 'w') as f:
		f.write("{")
		f.writelines([subspaceToM2Matrix(U) for U in G])
		f.write("}")

def vecToPoly(monomials,vec):
	l = len(vec)
	for i in range(l-1):
		...

			

def enumerateGL(fileName, n, order, varName):
	writeLinearGroupToFile(fileName, GL(n,GF(order,varName))

def enumerateSL(fileName, n, order, varName):
	writeLinearGroupToFile(fileName, SL(n,GF(order,varName))
