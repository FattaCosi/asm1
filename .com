.model tiny
.code
org 100h
start:
mov ah, 9
mov dx, offset message_0
int 21h
mov dx, offset message_1
int 21h
int 20h
message_0 db «Hello everybody!» ,0dh,0ah,’$’
message_1 db «Bruh moment» ,0dh,0ah,’$’
end start
