import time

# Pour l'asynchrone
import threading


#Usage de Fonctions avec Thread
"""
def process_one():
    i = 0
    while i < 3:
        print("oooooooooo")
        time.sleep(0.3)
        i += 1


def process_two():
    i = 0
    while i < 3:
        print("xxxxxxxxxx")
        time.sleep(0.3)
        i += 1


th1 = threading.Thread(target=process_one)
th2 = threading.Thread(target=process_two)

th1.start()
th2.start()


th1.join()
th1.join()

"""



# Thread avec usage de Class:
"""
class MyProcess(threading.Thread):
    def __init__(self):
        threading.Thread.__init__(self)

    def run(self):
        i = 0
        while i < 3:
            print(threading.current_thread())
            time.sleep(0.3)
            i += 1

th1 = MyProcess()
th2 = MyProcess()

th1.start()
th2.start()


th1.join()
th1.join()

"""

# Faire de l' Asynchrone en executant les memes elements groupes mais dans les Threads(Etapes) différentes Graçe à (Rlock)

my_lock = threading.RLock()
class MyProcess(threading.Thread):
    def __init__(self):
        threading.Thread.__init__(self)

    def run(self):
        i = 0
        while i < 3:
            with my_lock:
                letters = "ABC"
                for lt in letters:
                    print(lt)   
                    time.sleep(0.3)
            i += 1

th1 = MyProcess()
th2 = MyProcess()

th1.start()
th2.start()


th1.join()
th1.join()

print("Fin du Programme !!!")

