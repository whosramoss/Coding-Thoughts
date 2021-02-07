import urllib.request

#content = urllib.request.urlopen("http://fecai.com.br/").read()
content = urllib.request.urlopen("https://www.melhorcambio.com/dolar-hoje").read()
content = str(content)
print(content)

'''
find = '<input name="tbValorProducaoOleoLGN" type="text" value="'
posicao = int(content.index(find) + len(find))
producao = content[posicao:posicao+4]
print("Producao = " + producao)
'''