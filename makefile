JCC = javac
	
all: banner AcceptConnection.class Banner.class Client.class ClientToClient.class ClientToServer.class Main.class Matrix.class MessageToSend.class NewConnectionMessage.class ServerToClient.class export

export:
	export COLUMNS LINES

AcceptConnection.class: AcceptConnection.java
	$(JCC) AcceptConnection.java 

Banner.class: Banner.java
	$(JCC) Banner.java 

Client.class: Client.java
	$(JCC) Client.java

ClientToClient.class: ClientToClient.java
	$(JCC) ClientToClient.java

ClientToServer.class: ClientToServer.java 
	$(JCC) ClientToServer.java

Main.class: Main.java
	$(JCC) Main.java

Matriz.class: Matrix.java
	$(JCC) Matrix.java

MessageToSend.class: MessageToSend.java
	$(JCC) MessageToSend.java

NewConnectionMessage.class: NewConnectionMessage.java
	$(JCC) NewConnectionMessage.java

ServerToClient.class: ServerToClient.java
	$(JCC) ServerToClient.java

banner: banner.c
	gcc -o banner banner.c

clean: 
	$(RM) *.class	
	$(RM) banner
