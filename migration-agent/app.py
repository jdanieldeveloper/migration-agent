# Migrator agent
import os

def print_environments_variables():
    # Obtener una variable de entorno
    param1 = os.environ.get('PARAM1')
    print(f"El valor de 'PARAM1' es: {param1}")

# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    print("Hello World!!!")
    print_environments_variables()


