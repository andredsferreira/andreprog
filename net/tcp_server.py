from socket import *

server_port = 12000

server_socket = socket(AF_INET,SOCK_STREAM)
server_socket.bind(("",server_port))

# Server keeps listening on the connection socket
server_socket.listen(1)

print("The server is ready to receive")

# Server processes specific request by creating a connection socket
while True:
  conn_socket, addr = server_socket.accept()
  print(f"Connection socket established: {conn_socket}")
  print(f"Received from: {addr}")

  sentence = conn_socket.recv(1024).decode()
  capitalized_setence = sentence.upper()
  conn_socket.send(capitalized_setence.encode())

  conn_socket.close()