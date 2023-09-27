import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:intl/intl.dart';

class AidePage extends StatefulWidget {
  @override
  _AidePageState createState() => _AidePageState();
}

class _AidePageState extends State<AidePage> {
  final _formKey = GlobalKey<FormState>();
  final _recipientEmail =
      'destination@example.com'; // Remplacez par votre adresse e-mail de destination

  DateTime? _startDate;
  DateTime? _endDate;
  String _message = '';
  String _phoneNumber = '';

  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _startDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null && pickedDate != _startDate) {
      setState(() {
        _startDate = pickedDate;
      });
    }
  }

  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _endDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null && pickedDate != _endDate) {
      setState(() {
        _endDate = pickedDate;
      });
    }
  }

  void _showSuccessSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('E-mail envoyé avec succès'),
        backgroundColor: Colors.green,
      ),
    );
  }

  String? _validateDate(DateTime? date) {
    if (date == null) {
      return 'Veuillez sélectionner une date';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Formulaire d\'aide'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Icône de flèche de retour
          onPressed: () {
            Navigator.of(context).pop(); // Retour à l'écran précédent
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Espacement au-dessus du titre
                SizedBox(height: 20.0),
                // Titre centré
                Center(
                  child: Text(
                    'Veuillez renseigner les informations ci-dessous pour que le destinataire ait toutes les informations :',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20.0), // Espacement
                // Champ de sélection de la date de début avec validation
                ListTile(
                  title: Text(
                    _startDate == null
                        ? 'Date de début de disponibilité'
                        : 'Date de début : ${DateFormat('dd/MM/yyyy').format(_startDate!)}', // Formatage de la date sans l'heure
                  ),
                  trailing: Icon(Icons.calendar_today),
                  onTap: () async {
                    await _selectStartDate(
                        context); // Attendre la sélection de la date
                  },
                  subtitle: _validateDate(_startDate) != null
                      ? Text(
                          'Veuillez sélectionner une date',
                          style: TextStyle(color: Colors.red),
                        )
                      : null,
                ),
                // Espacement entre les éléments
                SizedBox(height: 16.0),
                // Champ de sélection de la date de fin avec validation
                ListTile(
                  title: Text(
                    _endDate == null
                        ? 'Date de fin de disponibilité'
                        : 'Date de fin : ${DateFormat('dd/MM/yyyy').format(_endDate!)}', // Formatage de la date sans l'heure
                  ),
                  trailing: Icon(Icons.calendar_today),
                  onTap: () async {
                    await _selectEndDate(
                        context); // Attendre la sélection de la date
                  },
                  subtitle: _validateDate(_endDate) != null
                      ? Text(
                          'Veuillez sélectionner une date',
                          style: TextStyle(color: Colors.red),
                        )
                      : null,
                ),

                InternationalPhoneNumberInput(
                  validator: (p0) {},
                  onInputChanged: (PhoneNumber number) {
                    _phoneNumber = number.phoneNumber ?? '';
                  },
                  selectorConfig: SelectorConfig(
                    selectorType: PhoneInputSelectorType.DIALOG,
                  ), // Code de la France par défaut
                  errorMessage: 'Numéro de téléphone invalide',
                  inputDecoration: InputDecoration(
                    labelText: 'Numéro de téléphone',
                    border: OutlineInputBorder(),
                  ),
                ),
                // Espacement entre les éléments
                SizedBox(height: 16.0),
                // Champ de texte multiligne (textarea) pour le message personnalisé
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Message personnalisé',
                    hintText: 'Saisissez votre message ici...',
                  ),
                  maxLines: 5,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer un message';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _message = value;
                    });
                  },
                ),
                // Espacement entre les éléments
                SizedBox(height: 16.0),
                // Champ de numéro de téléphone avec choix du drapeau

                // Espacement en bas du formulaire
                SizedBox(height: 20.0),
                // Bouton "Proposer votre aide" centré et plus gros
                Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green)),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _showSuccessSnackbar(context);
                        // Envoi de l'e-mail avec les données du formulaire
                        final emailText = '''
                        Date de début : ${_startDate != null ? DateFormat('dd/MM/yyyy').format(_startDate!) : 'Non spécifiée'}
                        Date de fin : ${_endDate != null ? DateFormat('dd/MM/yyyy').format(_endDate!) : 'Non spécifiée'}
                        Numéro de téléphone : $_phoneNumber
                        Message : $_message
                        ''';

                        // Ici, vous pouvez utiliser la variable 'emailText' pour envoyer l'e-mail.
                        // Remplacez 'destination@example.com' par l'adresse e-mail de destination réelle.
                      }
                    },
                    child: Text(
                      'Proposer votre aide',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
