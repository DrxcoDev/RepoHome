# Este es el archivo inicial de RepoHome
# This is the main file of RepoHome

import os
import shutil

# Distribución
# Distribution

def CopyAndPasteFile(origen, destino):
    try:
        # Copia el archivo desde el origen al destino
        shutil.copy(origen, destino)
        print(f"Archivo copiado exitosamente de {origen} a {destino}")
    
    # Opcionalmente, puedes eliminar el archivo original después de copiarlo
        os.remove(origen)
        print(f"Archivo original {origen} eliminado exitosamente")
    except FileNotFoundError:
        print(f"Error: No se encontró el archivo {origen}")
    except PermissionError:
        print(f"Error: No tienes permisos para copiar el archivo a {destino}")
    except Exception as e:
        print(f"Error inesperado: {e}")
    

# Ejemplo de uso
origen = "./repo.bat"
destino = "C:\Windows\System32"

CopyAndPasteFile(origen, destino)

# Inicio
# Main/Init

