from socket import *

serverPort = 12000

serverSocket = socket(AF_INET,SOCK_STREAM)
serverSocket.bind(("",serverPort))

# Server keeps listening on the connection socket
serverSocket.listen(1)

print("The server is ready to receive")

# Server processes specific request by creating a connection socket
while True:
  conn_socket, addr = serverSocket.accept()
  print(f"Connection socket established: {conn_socket}")
  print(f"Received from: {addr}")

  sentence = conn_socket.recv(1024).decode()
  capitalized_setence = sentence.upper()
  conn_socket.send(capitalized_setence.encode())

  conn_socket.close()