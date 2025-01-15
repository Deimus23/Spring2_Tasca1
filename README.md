# Exercicis de Modelatge de Dades

Aquest repositori conté dos exercicis enfocats al modelatge de dades per a projectes concrets. Els exercicis descriuen com dissenyar estructures de dades per a una òptica i una pizzeria.

## Exercici 1 - Òptica
Una òptica, anomenada "Cul d'Ampolla", vol informatitzar la gestió dels clients/es i vendes d'ulleres.

### Requeriments del sistema
- **Proveïdors d'ulleres**:
  - Nom
  - Adreça (carrer, número, pis, porta, ciutat, codi postal i país)
  - Telèfon
  - Fax
  - NIF

- **Ulleres**:
  - Marca (les ulleres d'una marca es compren a un únic proveïdor)
  - Graduació de cadascun dels vidres
  - Tipus de muntura (flotant, pasta o metàl·lica)
  - Color de la muntura
  - Color de cada vidre
  - Preu

- **Clients/es**:
  - Nom
  - Adreça postal
  - Telèfon
  - Correu electrònic
  - Data de registre
  - Client/a que els ha recomanat (si s'escau)

- **Vendes**:
  - Ulleres venudes
  - Empleat/da que ha realitzat la venda
  - Data i hora de la venda

## Exercici 2 - Pizzeria
Dissenya una base de dades per a una web que permeti fer comandes de menjar a domicili per Internet.

### Requeriments del sistema
- **Clients/es**:
  - Identificador únic
  - Nom
  - Cognoms
  - Adreça
  - Codi postal
  - Localitat
  - Província
  - Número de telèfon

- **Localitats i Províncies**:
  - Localitat:
    - Identificador únic
    - Nom
  - Província:
    - Identificador únic
    - Nom

- **Comandes**:
  - Identificador únic
  - Data i hora
  - Tipus de comanda (repartiment a domicili o recollida en botiga)
  - Quantitat de productes seleccionats de cada tipus
  - Preu total

- **Productes**:
  - Identificador únic
  - Nom
  - Descripció
  - Imatge
  - Preu

- **Pizzes**:
  - Categoria (nom)
  - Una pizza només pot pertànyer a una única categoria

- **Botigues**:
  - Identificador únic
  - Adreça
  - Codi postal
  - Localitat
  - Província
  - Comandes gestionades

- **Empleats/des**:
  - Identificador únic
  - Nom
  - Cognoms
  - NIF
  - Telèfon
  - Rol (cuiner/a o repartidor/a)
  - Per a repartiments a domicili: empleat/da assignat i data/hora del lliurament

## Com utilitzar aquest repositori

1. **Clonar el repositori**:
   ```bash
   git clone <repositori-url>
   ```

2. **Importar els exercicis**: Consulta els fitxers corresponents a cada exercici per entendre com està modelat el sistema.

3. **Personalitzar les dades**: Pots adaptar les estructures de dades segons les necessitats del teu projecte.

## Autor
Creat per **Antonio Carrasco**. Si tens preguntes o suggeriments, contacta amb mi!

## Llicència
Aquest projecte està sota la llicència MIT. Consulta el fitxer `LICENSE` per a més detalls.

