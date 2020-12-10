Goal: prestashop1.6 sql request to get all active products for pinteret bulk import

source: https://help.pinterest.com/fr/business/article/before-you-get-started-with-catalogs#section-9441

<h2>Préparer votre source de données</h2>
<p>Avant de configurer votre page d'accueil, vous devez créer une source de données, c'est-à-dire un fichier contenant la liste de vos produits et leurs attributs correspondants.</p>
<h3>Conditions relatives à l'hébergement des sources de données de catalogues</h3>
<p>Vous devez disposer de votre propre serveur FTP/SFTP ou configurer un lien de téléchargement direct HTTP/HTTPS. Pinterest ne fournit aucune solution d'hébergement pour les utilisateurs. L'emplacement de votre source de données doit être accessible par un agent-utilisateur et ne doit nécessiter aucune liste blanche par adresse&nbsp; IP ou clé&nbsp;SSH. Si vous utilisez un lien de téléchargement direct&nbsp; HTTP/HTTPS, ce dernier ne doit nécessiter aucune navigation supplémentaire pour que Pinterest puisse accéder au fichier.</p>
<h3>Conditions relatives au format des sources de données de catalogues</h3>
<p>Formats compatibles&nbsp;:</p>
<ul><li>Fichiers&nbsp;TSV (valeurs séparées par des tabulations&nbsp;; <a href="https://help.pinterest.com/sub/helpcenter/assets/pinterest_product_sample_tsv_feed.tsv" target="_blank" class="a-link--external">télécharger un exemple de fichier&nbsp;TSV<span class="visually-hidden">(opens in a new window)</span></a>)</li>
<li>Fichiers&nbsp;CSV (valeurs séparées par des virgules&nbsp;; <a href="https://help.pinterest.com/sub/helpcenter/assets/pinterest_product_sample_csv_feed.csv">télécharger un exemple de fichier&nbsp;CSV</a>)</li>
<li>XML (RSS 2.0)<a href="https://help.pinterest.com/sub/helpcenter/assets/pinterest_product_sample_xml_feed.xml.zip"> (télécharger un exemple XML</a>)</li>
</ul><h3>Conseils concernant les formats de fichier&nbsp;:</h3>
<ul><li>Si vous utilisez un fichier&nbsp;CSV, nous encadrons vos valeurs avec des guillemets doubles afin d'éviter d'éventuels problèmes d'analyse.</li>
<li>Un séparateur flottant supplémentaire (virgule, tabulation) peut empêcher le bon traitement de l'élément ou du fichier.</li>
<li>Veillez à ce que les séparateurs de toutes vos lignes et colonnes soient correctement configurés en vérifiant que le nombre de séparateurs est identique sur chaque ligne.</li>
<li>Les caractéristiques techniques de la page doivent être en anglais américain standard pour les valeurs obligatoires et prédéfinies.</li>
<li>Si vous utilisez un fichier&nbsp;TSV ou CSV, le fichier de source de données doit être en texte brut, en codage&nbsp;UTF-8 ou Latin1.</li>
</ul><h3>Données de produits requis</h3>
<p>Veillez à suivre les <a href="https://policy.pinterest.com/merchant-guidelines">Directives pour les commerçants</a>. Nous nous réservons le droit de supprimer les produits ou les comptes qui ne respectent pas ces directives.</p>
<h3>Champs obligatoires et facultatifs</h3>
<p>Sept&nbsp;champs sont obligatoires. Si l'un de ces champs n'est pas rempli ou n'a pas le bon format, l'ensemble du flux de votre page d'accueil ne sera pas correctement assimilé.</p>
<p>Champs obligatoires&nbsp;:</p>
<ul><li>id</li>
<li>title</li>
<li>description</li>
<li>link</li>
<li>image_link</li>
<li>price</li>
<li>availability</li>
</ul><p>Vous pouvez également ajouter des champs facultatifs pour aider Pinterest à mieux sélectionner les produits présentés aux membres. Plus les informations fournies seront nombreuses, plus les épingles présentées aux membres seront pertinentes.&nbsp;Nous vous recommandons également de remplir les champs facultatifs afin d'ajouter plus d'informations à votre source de données et d'améliorer sa pertinence.</p>
<h3>Champs obligatoires</h3>
<table><thead><tr><th>Nom de la colonne</th>
<th>Description</th>
<th>Syntaxe/valeurs compatibles</th>
<th>Exemple</th>
<th>Condition</th>
</tr></thead><tbody><tr><td>id</td>
<td>
<p>L'ID unique créé par l'utilisateur correspondant au produit.</p>
<p>Seuls les caractères unicode sont acceptés.</p>
</td>
<td>127&nbsp;caractères maximum</td>
<td><em>DS0294-L</em></td>
<td>Obligatoire</td>
</tr><tr><td>title</td>
<td>Le nom du produit. Doit avoir le même nom que le produit de la page de renvoi. Ajoutez les détails de variante, tels que la couleur et la taille.</td>
<td>500&nbsp;caractères maximum</td>
<td><em>Chemise en jean pour femme, grande taille</em></td>
<td>Obligatoire</td>
</tr><tr><td>description</td>
<td>Description du produit. Ce champ n'est pas compatible avec le langage HTML. Pour une expérience optimale, le texte doit être du texte brut.</td>
<td>10&nbsp;000&nbsp;caractères maximum</td>
<td><em>Chemise en jean décontractée fabriquée en denim japonais d'excellente qualité.&nbsp;</em></td>
<td>Obligatoire</td>
</tr><tr><td>link</td>
<td>La page de renvoi du produit. Le lien doit rediriger directement vers le même produit et inclure les mêmes données. Nous vous déconseillons d'utiliser des hardwalls. L'URL doit commencer par http:// ou https//&nbsp;</td>
<td>511&nbsp;caractères maximum</td>
<td><em><a href="https://www.exemple.com/cat/vetements-femme/chemise-jean-0294">https://www.exemple.com/cat/vetements-femme/chemise-jean-0294</a></em></td>
<td>Obligatoire</td>
</tr><tr><td>image_link</td>
<td>
<p>Le lien de l'image du produit. L'URL doit être accessible par un agent-utilisateur et renvoyer vers une image nette. Assurez-vous que le lien ne redirige pas vers un modèle ou une image fictive. L'URL doit commencer par http:// ou https://</p>
<p>Les virgules doivent être codées ou supprimées si elles font partie du lien de l'image. Nous ne pouvons pas traiter les liens d’image contenant des virgules pour le moment.</p>
</td>
<td>&nbsp;</td>
<td><em><a href="https://scene.exemple.com/image/image.jpg">https://scene.exemple.com/image/image.jpg</a></em></td>
<td>Obligatoire</td>
</tr><tr><td>price</td>
<td>Le prix du produit. Le prix doit inclure une devise au format ISO&nbsp;4217, s'il ne s'agit pas de dollars américains. Si aucune devise n'est incluse, nous utiliserons par défaut des dollars américains. Nous acceptons les devises après la valeur numérique du prix, avec ou sans espace. La devise doit respecter les codes de la norme ISO&nbsp;4217. Nous n'acceptons pas les prix avec des valeurs égales à 0. Veuillez ne pas utiliser de symboles monétaires.</td>
<td>
<p>&lt;numérique&gt;</p>
<p>&lt;ISO&nbsp;4217&gt;</p>
</td>
<td><em>24.99&nbsp;USD<br>
			24.99USD<br>
			24.99<br>
			24.99&nbsp; GBP</em></td>
<td>Obligatoire</td>
</tr><tr><td>availability</td>
<td>La disponibilité du produit. Doit être l'une des valeurs suivantes&nbsp;: ‘in stock’, ‘out of stock’, ‘preorder’.</td>
<td>in stock<br>
			out of stock<br>
			preorder</td>
<td><em>in stock</em></td>
<td>Obligatoire</td>
</tr></tbody></table>
