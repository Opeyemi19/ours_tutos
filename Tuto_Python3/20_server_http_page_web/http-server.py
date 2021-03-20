import http.server


#Server http Standard Simple static pour les fichiers HTML
"""
import socketserver


port = 80
address = ("", port)

handler = http.server.SimpleHTTPRequestHandler
httpd   = socketserver.TCPServer(address, handler)

print(f"Serveur démarré avec succès sur le PORT {port}")

httpd.serve_forever()
"""


# Server http avec CGI : pour l'execution des scripts écrit dans un langage tierce (Python, Javav, C, C++, etc.)

port = 80
address = ("", port)

server = http.server.HTTPServer

handler = http.server.CGIHTTPRequestHandler
handler.cgi_directories = [""]

httpd = server(address, handler)

print(f"Serveur démarré avec succès sur le PORT {port}")
httpd.serve_forever()






