import 'package:flutter/material.dart';
import 'package:flutter_application_1/login/logincontroller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginview extends GetView<LoginController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openPrivacyPolicyModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Politique de confidentialité'),
          content: SingleChildScrollView(
            child: Text('''Collecte de données personnelles :
          
          L'application A'rosa-je collecte certaines données personnelles des utilisateurs afin de fournir ses services.
          Les données collectées peuvent inclure le nom, l'adresse e-mail, l'adresse de livraison, les photos des plantes et d'autres informations nécessaires à la garde des plantes.
          Les utilisateurs fournissent ces informations de manière volontaire lors de leur inscription ou de l'utilisation de l'application.
          Utilisation des données personnelles :
          
          Les données personnelles collectées sont utilisées dans le but de permettre aux utilisateurs de faire garder leurs plantes et de recevoir des conseils d'entretien appropriés.
          Les données personnelles peuvent également être utilisées à des fins de communication entre utilisateurs et pour améliorer les services et fonctionnalités de l'application.
          A'rosa-je s'engage à ne pas partager les données personnelles des utilisateurs avec des tiers sans leur consentement, sauf si cela est nécessaire pour la prestation des services ou si cela est exigé par la loi.
          Sécurité des données :
          
          A'rosa-je met en place des mesures de sécurité appropriées pour protéger les données personnelles des utilisateurs contre tout accès, utilisation ou divulgation non autorisé(e).
          Les données sont stockées sur des serveurs sécurisés et les transmissions de données sont chiffrées pour assurer leur confidentialité.
          Conservation des données :
          
          A'rosa-je conserve les données personnelles des utilisateurs aussi longtemps que nécessaire pour la fourniture des services et conformément aux exigences légales en vigueur.
          Les utilisateurs peuvent demander la suppression de leurs données personnelles en contactant l'équipe de support d'A'rosa-je.
          Cookies et technologies similaires :
          
          A'rosa-je peut utiliser des cookies et d'autres technologies similaires pour collecter des informations techniques sur l'utilisation de l'application et améliorer l'expérience utilisateur.
          Les utilisateurs ont la possibilité de désactiver les cookies dans les paramètres de leur appareil, mais cela peut affecter certaines fonctionnalités de l'application.
          Liens vers des sites tiers :
          
          L'application A'rosa-je peut contenir des liens vers des sites web ou des services tiers.
          Cette politique de confidentialité ne s'applique pas aux sites tiers et A'rosa-je n'est pas responsable des pratiques de confidentialité ou du contenu de ces sites.
          Modifications de la politique de confidentialité :
          
          A'rosa-je se réserve le droit de modifier cette politique de confidentialité à tout moment.
          Les utilisateurs seront informés des modifications importantes de la politique de confidentialité par le biais de l'application ou par d'autres moyens de communication appropriés.
          Contact :
          
          Pour toute question ou préoccupation concernant la politique de confidentialité ou la gestion des données personnelles, les utilisateurs peuvent contacter l'équipe de support d'A'rosa-je.
          Droits des utilisateurs :
          
          Les utilisateurs de l'application A'rosa-je bénéficient de certains droits concernant leurs données personnelles.
          Ils ont le droit d'accéder, de rectifier, de mettre à jour ou de supprimer leurs données personnelles.
          Les utilisateurs peuvent exercer ces droits en contactant l'équipe de support d'A'rosa-je.
          A'rosa-je s'efforcera de répondre aux demandes des utilisateurs dans les délais et conformément aux lois applicables.
          Transfert international de données :
          
          Les données personnelles des utilisateurs peuvent être transférées et traitées dans des pays situés en dehors de l'Espace économique européen (EEE) où les lois sur la protection des données peuvent différer.
          A'rosa-je prendra les mesures appropriées pour garantir que tout transfert de données en dehors de l'EEE est légalement protégé et sécurisé, notamment en s'appuyant sur des mécanismes de transfert approuvés par les autorités compétentes.
          Consentement :
          En utilisant l'application A'rosa-je, les utilisateurs consentent à la collecte, à l'utilisation et à la divulgation de leurs données personnelles conformément à cette politique de confidentialité.
          Les utilisateurs ont le droit de retirer leur consentement à tout moment en contactant l'équipe de support d'A'rosa-je, mais cela peut entraîner l'impossibilité d'utiliser certains services de l'application.
          Mineurs :
          L'application A'rosa-je n'est pas destinée aux personnes âgées de moins de 16 ans.
          A'rosa-je ne collecte pas intentionnellement de données personnelles auprès de personnes de moins de 16 ans.
          Si A'rosa-je prend connaissance de la collecte de données personnelles d'un mineur, elle prendra les mesures appropriées pour supprimer ces données dans les plus brefs délais.
          Application de la politique :
          Cette politique de confidentialité s'applique uniquement à l'application A'rosa-je et ne couvre pas les autres services, sites web ou applications liés à des tiers.
          A'rosa-je encourage les utilisateurs à consulter les politiques de confidentialité des sites web et services tiers avant de les utiliser.
          Consentement à la politique de confidentialité :
          En utilisant l'application A'rosa-je, les utilisateurs reconnaissent avoir lu, compris et accepté les termes de cette politique de confidentialité.
          Si vous avez des questions ou des préoccupations concernant cette politique de confidentialité, veuillez nous contacter à l'adresse e-mail [arosaje@gmail.com].
          
          Dernière mise à jour : [10/04/2023].'''),
          ),
          actions: [
            TextButton(
              child: Text('Fermer'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _openTermsModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Conditions d\'utilisation'),
          content: SingleChildScrollView(
            child: Text('''Acceptation des conditions d'utilisation :
          
          Avant d'utiliser l'application, les utilisateurs doivent accepter les présentes conditions d'utilisation.
          En acceptant les conditions, les utilisateurs reconnaissent avoir lu, compris et accepté toutes les dispositions mentionnées.
          Utilisation de l'application :
          
          L'application A'rosa-je est destinée à être utilisée uniquement pour la garde et l'entretien des plantes.
          Les utilisateurs doivent utiliser l'application de manière légale, respectueuse des droits des autres utilisateurs et conformément aux lois et réglementations en vigueur.
          Responsabilités des utilisateurs :
          
          Les utilisateurs sont responsables de l'exactitude des informations fournies lors de leur inscription et de la mise à jour de leurs informations personnelles.
          Les utilisateurs sont responsables de la confidentialité de leur compte et de leurs informations de connexion.
          Les utilisateurs sont tenus de respecter les consignes de sécurité et de confidentialité concernant l'utilisation de l'application.
          Propriété intellectuelle :
          
          L'application A'rosa-je et son contenu sont la propriété exclusive de l'entreprise A'rosa-je.
          Les utilisateurs s'engagent à ne pas reproduire, copier, distribuer ou exploiter de quelque manière que ce soit le contenu de l'application sans autorisation préalable.
          Données personnelles :
          
          L'entreprise A'rosa-je collecte et traite les données personnelles des utilisateurs conformément au Règlement Général sur la Protection des Données (RGPD).
          Les utilisateurs sont informés de la collecte et de l'utilisation de leurs données personnelles et ont la possibilité de donner leur consentement pour le traitement de ces données.
          Sécurité des données :
          
          L'entreprise A'rosa-je met en place des mesures de sécurité appropriées pour protéger les données des utilisateurs.
          Les utilisateurs sont également encouragés à prendre des mesures de sécurité pour protéger leurs propres données, telles que l'utilisation de mots de passe forts et la protection de leurs informations de connexion.
          Modifications des conditions d'utilisation :
          
          L'entreprise A'rosa-je se réserve le droit de modifier les présentes conditions d'utilisation à tout moment.
          Les utilisateurs seront informés des modifications importantes et devront accepter les nouvelles conditions pour continuer à utiliser l'application.
          Limitation de responsabilité :
          
          L'entreprise A'rosa-je ne peut être tenue responsable des dommages directs, indirects, consécutifs ou spéciaux résultant de l'utilisation de l'application.
          Les utilisateurs utilisent l'application à leurs propres risques et sont responsables de toute activité effectuée via leur compte.
          Résiliation :
          
          Les utilisateurs peuvent résilier leur compte à tout moment en suivant les procédures prévues dans l'application.
          L'entreprise A'rosa-je se réserve le droit de résilier un compte en cas de non-respect des conditions d'utilisation ou de comportement inapproprié de l'utilisateur.
          Utilisation des conseils d'entretien :
          
          Les conseils d'entretien fournis par les botanistes via l'application sont destinés à guider les utilisateurs dans la garde et l'entretien des plantes.
          Les utilisateurs sont responsables de l'application correcte des conseils et des résultats obtenus.
          L'entreprise A'rosa-je ne peut garantir l'efficacité des conseils et n'est pas responsable des dommages causés aux plantes ou à toute autre conséquence découlant de leur utilisation.
          Communication entre utilisateurs :
          
          Les utilisateurs peuvent communiquer entre eux via les fonctionnalités de l'application, notamment pour coordonner la garde des plantes.
          Les utilisateurs s'engagent à communiquer de manière respectueuse et à ne pas utiliser la communication pour des activités illégales, frauduleuses, diffamatoires ou nuisibles.
          Suspension ou résiliation de l'accès :
          
          L'entreprise A'rosa-je se réserve le droit de suspendre ou de résilier l'accès à l'application en cas de violation des conditions d'utilisation ou de comportement inapproprié de la part des utilisateurs.
          En cas de suspension ou de résiliation, les utilisateurs ne pourront plus accéder à leur compte ni utiliser les fonctionnalités de l'application.
          Support technique :
          
          L'entreprise A'rosa-je s'efforcera de fournir un support technique raisonnable aux utilisateurs en cas de problème technique ou de question liée à l'utilisation de l'application.
          Les utilisateurs peuvent contacter le support technique via les canaux de communication désignés par l'entreprise.
          Modifications de l'application :
          
          L'entreprise A'rosa-je se réserve le droit de modifier, mettre à jour ou supprimer des fonctionnalités de l'application à tout moment.
          Les utilisateurs seront informés des modifications importantes de l'application qui pourraient avoir un impact sur leur utilisation.
          Dispositions juridiques :
          
          Les présentes conditions d'utilisation sont régies par les lois en vigueur dans le pays où est basée l'entreprise A'rosa-je.
          En cas de litige, les tribunaux compétents du lieu de résidence de l'entreprise A'rosa-je seront exclusivement compétents.
          Intégralité de l'accord :
          
          Les présentes conditions d'utilisation constituent l'intégralité de l'accord entre les utilisateurs et l'entreprise A'rosa-je concernant l'utilisation de l'application.
          Toute renonciation à l'application ou à l'interprétation des présentes conditions doit être formulée par écrit et signée par les parties concernées.'''),
          ),
          actions: [
            TextButton(
              child: Text('Fermer'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(context) => Scaffold(
        key: _scaffoldKey,
        backgroundColor: const Color(0xFFD6FFCC),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 230),
            child: Column(
              children: [
                Text(
                  "Sign in",
                  style: GoogleFonts.lexendDeca(
                      fontStyle: FontStyle.normal,
                      color: const Color(0xff224957),
                      fontSize: 64),
                ),
                Form(
                  child: Column(
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 20)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Entrez une adresse mail';
                            }
                            return null;
                          },
                          style: const TextStyle(color: Colors.white),
                          controller: controller.email,
                          decoration: InputDecoration(
                            hintText: 'Username',
                            hintStyle: GoogleFonts.lexendDeca(
                                fontStyle: FontStyle.normal,
                                color: Colors.white,
                                fontSize: 16),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xff224957),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 30)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Entrez un mot de passe';
                            }
                            return null;
                          },
                          style: const TextStyle(color: Colors.white),
                          controller: controller.password,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: GoogleFonts.lexendDeca(
                                fontStyle: FontStyle.normal,
                                color: Colors.white,
                                fontSize: 16),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: const Color(0xff224957),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 15)),
                      ElevatedButton(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 70),
                          child: Text(
                            "Login",
                            style: GoogleFonts.lexendDeca(
                              fontStyle: FontStyle.normal,
                              color: const Color(0xff224957),
                              fontSize: 16,
                            ),
                            selectionColor: Colors.white,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xff20DF7F),
                          ),
                          foregroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xff20DF7F),
                          ),
                        ),
                        onPressed: () {
                          controller.logidn();
                        },
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () => _openPrivacyPolicyModal(context),
                            child: Text(
                              'Politique de confidentialité',
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: () => _openTermsModal(context),
                            child: Text(
                              "Conditions d'utilisation",
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
