extends Button

@onready var enlarger = $Enlarger
@onready var content: MarginContainer = $"../Content"
@onready var description : Label = $"../Content/MarginContainer/ScrollContainer/VBoxContainer/Description"

@onready var open: AudioStreamPlayer = $"../../../../Sounds/Open"
@onready var close: AudioStreamPlayer = $"../../../../Sounds/Close"

func _on_pressed():
	enlarger.enlarge()
	disabled = true
	open.play()
	
	match Global.cell_type:
		0:
			description.text = "La cellula animale è l’unità fondamentale degli organismi animali ed è di tipo eucariotico, è delimitata dalla membrana plasmatica che separa la cellula dall’ambiente esterno e regola il passaggio di sostanze.La cellula contiene il citoplasma, ribosomi e DNA; essa ha una struttura interna più complessa rispetto a quella delle cellule procariotiche, sono infatti caratterizzate da compartimenti interni delimitati da membrane, gli organuli, che contengono specifici enzimi. 
	La cellula animale è composta da diverse parti fondamentali:
	Una membrana plasmatica che avvolge la cellula, separandola dall’ambiente esterno e regolando il passaggio di sostanze dentro e fuori la cellula. È costituita principalmente da un doppio strato fosfolipidico, che crea una barriera anfipatica: le teste idrofile dei fosfolipidi si posizionano all’interno e all’esterno della cellula, mentre le code idrofobe sono rivolte verso l’interno e si uniscono, formando la parte interna della barriera. 
	La membrana segue il modello a mosaico fluido, che descrive il movimento e la flessibilità dei suoi componenti grazie alla presenza del colesterolo, che in quantità smisurate può irrigidire la membrana, e delle catene di acidi grassi insaturi, che, se in abbondanza, rendono la membrana troppo fluida a causa della sua struttura non lineare. 
	Un nucleo cellulare è il centro di controllo genetico ed è circondato da due membrane nucleari chiamate involucro nucleare che permettono il traffico di macromolecole in entrata e in uscita. Le due membrane sono separate da uno spazio di circa 20 nitron e sono perforate da circa 3500 pori nucleari che mettono in comunicazione il nucleo con il citoplasma. All’interno si trova il nucleolo, responsabile della sintesi dei ribosomi, e il DNA con struttura lineare associato a delle proteine con cui formano un complesso fibroso detto CROMATINA; e arricchito di informazioni ereditarie che consentono alla cellula di crescere, svilupparsi e riprodursi.
	Una matrice citoplasmatica gelatinosa detta citosol nel quale sono immerse tutte le altre componenti cellulari, ioni, molecole solubili e diversi organuli necessari al funzionamento della cellula stessa.Esso facilita le reazioni chimiche e funge da mezzo per il trasporto intracllulare.
	Uno citoscheletro complesso, formata da rete dinamica di filamenti proteici, che offre alla cellula sostegno e movimento. Esso è essenziale per il mantenimento della forma cellulare, l’organizzazione interna degli organuli, il trasporto intracellulare e la divisione cellulare.
	Il citoscheletro della cellula animale è formato da tre tipi di filamenti proteici:
	Microtubuli: sono strutture intracellulari costituite da una classe di proteine chiamate tubuline. Creano una rete di trasporto per vescicole e organuli, grazie all’azione di proteine motrici. Inoltre, contribuiscono a mantenere la forma della cellula e svolgono un ruolo importante nel trasporto intracellulare e nella divisione cellulare.
	Filamenti intermedi: sono strutture intracellulari costituite da una classe eterogenea di proteine. La loro funzione principale è quella di consolidamento e di rinforzo e per tenere bloccati alcuni organuli, come il nucleo. Inoltre, assicurano elasticità e resistenza alla rottura durante lo stress da trazione.
	Microfilamenti, sono strutture intracellulari costituite da una classe di proteine chiamate actine. Forniscono supporto strutturale e partecipano alla contrazione cellulare, alla motilità e alla citodieresi (la fase finale della divisione cellulare). Inoltre, giocano anche un ruolo importante nella stabilizzazione delle strutture cellulari e nelle interazioni tra le cellule.
	Infine gli organelli presenti nella cellula animale sono: 
	L’apparato del golgi 
	Il reticolo endoplasmatico 
	I mitocondri 
	I ribosomi
	Il vacuoli
	Il lisosoma
	Il citoplasma"
		1:
			description.text = "La cellula vegetale è una cellula eucariote con una struttura complessa e degli organelli specifici che la distinguono da quella animale.
	E’ delimitata dalla membrana plasmatica, formata dal doppio strato fosfolipidico, è semipermeabile, e la sua funzione è quella di regolare gli scambi tra le molecole in entrata e in uscita, inoltre, a differenza delle altre cellule eucarioti, ha anche un secondo rivestimento, ovvero la parete cellulare, formata da fibre di cellulosa e la sua funzione è di fornire sostegno alla cellula e determinarne la forma.
	All’interno della membrana plasmatica troviamo il citoplasma, un materiale semifluido in cui avvengono le reazioni cellulari, ed è composto da due parti, il “citosol”, che è la parte fluida composta da acqua ionica e micromolecole e macromolecole,  e le particelle sospese al suo interno, tra le quali i ribosomi, degli aggregati di RNA e proteine, e sono le strutture dove avviene la sintesi proteica. 
	Questi ribosomi sono contenuti all’interno del reticolo endoplasmatico, più precisamente sulla superficie di quello ruvido (RER), che serve a sintetizzare e a modificare chimicamente le proteine.
	Oltre al RER, abbiamo anche quello liscio (REL), che non possiede ribosomi e che serve per la sintesi dei lipidi, a degradare le sostanze tossiche (farmaci), idrolizza il glicogeno per produrre glucosio, e ha il compito di immagazzinare ioni di calcio.
	Inoltre, il reticolo endoplasmatico, è formato da una rete di tubuli che comunicano tra di loro tramite le vescicole, queste vescicole, contenenti le proteine del RER, trasferiscono le sostanze all'apparato del Golgi, che le modifica chimicamente e le indirizza nelle giuste destinazioni.
	L’apparato del Golgi è un organello formato anch’esso da tubuli però singoli e impilati gli uni sugli altri che comunicano tra di loro sempre attraverso le vescicole.
	Tra gli organelli che caratterizzano la cellula vegetale, troviamo sicuramente il vacuolo.
	Lo possiamo immaginare come un palloncino pieno d’acqua che occupa gran parte del volume della cellula, e a causa del suo volume elevato, il nucleo e la cloroplasti( che contiene la clorofilla, infatti è il luogo dove avviene la fotosintesi clorofilliana), vengono schiacciati verso la membrana, ha funzione di sostegno e digestiva, poichè al suo interno sono presenti diversi enzimi che favoriscono la digestione delle macromolecole.
	Il nucleo è la sede del patrimonio genetico e contiene le informazioni ereditarie necessarie alla cellula per accrescersi, svilupparsi e riprodursi, in particolare, quello delle eucarioti vegetali, è formato da tante molecola filamentose di DNA associate a proteine che formano la cromatina.
	All’interno del nucleo, troviamo il nucleolo, che serve per la creazione dei ribosomi. Il nucleo è delimitato da una doppia membrana, che formano l’involucro nucleare che è interrotto da pori nucleari che servono per il passaggio di sostanze dal nucleo al citoplasma.
	Infine, tra i diversi organelli, troviamo i mitocondri, che servono per la respirazione cellulare, ovvero la produzione della molecola di ATP."
		2:
			description.text = "La cellula batterica è formata da una membrana plasmatica costituita da un doppio strato fosfolipidico, di cui ogni fosfolipide è formato da una testa idrofila e due code idrofobe. La parete cellulare è situata all’esterno della membrana plasmatica, il suo scopo è dare forma e rigidità alla cellula. Alcuni batteri possiedono anche una capsula che è situata all’esterno della parete cellulare e offre una maggiore protezione contro il sistema immunitario degli ospiti.
	Il citoplasma è una sostanza gelatinosa, costituita da proteine, che occupa lo spazio delimitato dalla membrana cellulare, all’interno sono situati i ribosomi, il dna, il nucleoide e il citoscheletro semplice.
	I ribosomi sono formati da due subunità, una maggiore e una minore, e sono gli organelli che si occupano della sintesi proteica legandosi all’RNA messaggero e traducendone le informazioni in proteine.
	Il nucleoide è una regione sparsa nel citoplasma,che contiene il DNA.
	Il DNA è una delle componenti fondamentali della cellula, si trova all’interno del nucleoide, contiene le informazioni genetiche e le informazioni per la sintesi delle proteine e per il funzionamento cellulare.
	Il citoscheletro semplice è una rete di filamenti di proteine che serve a dare sostegno alla cellula.
	Il movimento della cellula è strutturato da:
	flagelli che sono dei filamenti lunghi alle estremità e danno movimento alla cellula;
	i pili invece sono dei piccoli filamenti che aiutano i batteri ad aderire a superfici o tessuti."
		3:
			description.text = "Le cellule sono generalmente considerate le più piccole unità viventi e possono essere divise in due categorie: le cellule procarioti, prive di nucleo ben definito, e le cellule eucarioti, definite invece da un nucleo delimitato da una membrana. Gli organismi animali e vegetali possono essere costituiti da una sola cellula (organismi unicellulari), o da molte (organismi pluricellulari). Le cellule degli organismi pluricellulari sono sempre eucarioti, mentre quella che compone un organismo unicellulare può essere eucariote o procariote. Gli esseri umani sono organismi pluricellulari eucarioti.
	All’interno della cellula eucariote avvengono reazioni biochimiche e metaboliche mediate dagli enzimi, proteine in grado di catalizzare e in certi casi anche accelerare i processi biologici. Tali reazioni spesso avvengono nelle strutture cellulari, chiamate organelli e delimitati da membrane, che comprendono:
	il nucleo, che contiene il patrimonio genetico ed è delimitato dalla membrana nucleare;
	i mitocondri, responsabili della produzione di energia;
	il reticolo endoplasmatico, in cui vengono sintetizzati proteine e lipidi;
	l’apparato di Golgi, che contribuisce alla maturazione delle sostanze sintetizzate nel reticolo endoplasmatico indirizzandole alla sede in cui sono richieste."
	
	
	await get_tree().create_timer(0.3).timeout
	content.modulate = Color(1.0,1.0,1.0,0.0)
	content.show()
	var tween = create_tween()
	tween.tween_property(content, "modulate", Color(1.0, 1.0, 1.0), 0.25).set_ease(Tween.EASE_IN_OUT)

func _on_back_button_pressed() -> void:
	enlarger.minimize()
	disabled = false
	close.play()
	
	var tween = create_tween()
	tween.tween_property(content, "modulate", Color(1.0, 1.0, 1.0, 1.0), 0.25).set_ease(Tween.EASE_IN_OUT)
	content.hide()
