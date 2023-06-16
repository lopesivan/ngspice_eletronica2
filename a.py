import pexpect

# Inicializar o ngspice
child = pexpect.spawn('ngspice -b')

# Enviar comandos para o ngspice
child.sendline('.param R = 100')
child.sendline('.param C = 10e-6')
child.sendline('tran 0.1ms 10ms')

# Aguardar a saída do ngspice
child.expect(pexpect.EOF)
print(child.before.decode())
