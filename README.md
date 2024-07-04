# Esercizio: App di gestione dei compiti

# Obiettivo:
Creare un'app Flutter semplice che consenta agli utenti di gestire una lista di
compiti.

# Requisiti:
1. Schermata principale:
Visualizzare un elenco di compiti.
Ogni compito deve avere un titolo, una descrizione e un indicatore di
completamento (checkbox).
2. Aggiungere un nuovo compito:
Aggiungere un pulsante floating (FloatingActionButton) che apre una
nuova schermata per aggiungere un compito.
La schermata di aggiunta deve avere campi per il titolo e la descrizione del
compito.
Aggiungere un pulsante per salvare il nuovo compito e tornare alla
schermata principale.
3. Modificare un compito esistente:
Toccare un compito nella lista deve aprire una schermata per modificare il
compito.
La schermata di modifica deve permettere di cambiare il titolo, la
descrizione e lo stato di completamento del compito.
Aggiungere un pulsante per salvare le modifiche e tornare alla schermata
principale.
4. Eliminare un compito:
Esercizio: App di gestione dei compiti 2
Aggiungere la possibilità di eliminare un compito dalla lista (può essere un
pulsante di eliminazione nella schermata di modifica o uno swipe nella
lista).
5. Persistenza dei dati:
Utilizzare un pacchetto come shared_preferences per salvare e caricare i
compiti localmente in modo che non vengano persi quando l'app viene
chiusa.
6. Gestione dello stato con Provider:
Utilizzare il pacchetto provider per la gestione dello stato dell'applicazione.
Creare un modello di stato per gestire l'elenco dei compiti e le operazioni
su di esso (aggiunta, modifica, eliminazione).

# Bonus:
Implementare un'animazione per l'aggiunta e l'eliminazione dei compiti.
Aggiungere una funzionalità di ricerca per filtrare i compiti nella lista.

# Suggerimenti:
Assicurarsi che l'interfaccia utente sia reattiva e funzionale su diversi
dispositivi.
