# Task 4

We will continue with the business card display page. This time we will add the ability to add and delete business cards.

In the project assignment, there is a splash page that displays a list of business cards, and each business card can be clicked to go to the business card detail. In addition, on the home page there is
the last blank business card, which leads to the `/new` page. This page needs to be implemented. It will have a form to enter the information that is on the
business card. The form sends the data to the server using the `POST` method, it adds the business card to the list and redirects the user back to the home page where the list of business cards is displayed
with the business card just added.

Next, it is necessary to add a button to the business card detail page that deletes the business card - the `POST` method sends a form with the `id` of the business card to the server, the server
deletes the business card from the list and redirects the user to the home page, where the list of business cards will be displayed - this time without the deleted business card.

1. Create a repository based on the template in your GitHub account, or continue with your task from the previous lesson.
1. Clone the repository **from your GitHub account** to your local machine.
1. Launch your cloned application and open the [http://localhost:8080/](http://localhost:8080/) page in your browser. You will see a page with six identical business cards.
   Click on any business card to see an example with the detail of one business card - there is only one business card, along with a map showing the address listed on the business card.
1. Edit both the list and detail views so that the list displays the business cards entered in the application (each different) and the detail displays the correct business card. You can use the solution from the previous task.
2. The link to create a new business card on the home page is not functional. You need to create a method in the controller that will handle the `/new` address. It will display on it
   form to enter the data for the business card.
1. Next, you need to create a controller method that will send the data from the completed form. This method will add the business card to the list and redirect the
   the user to the home page. To add a business card, create the necessary method in the `BusinessCardService`.
1. You need to add a form for deleting a business card to the business card detail page. The form will contain a hidden form field `<input type="hidden" />` with
   business card `id`. From the form, only the button labeled "Delete" will be visible.
1. You need to create a method in the controller that will respond to this form to delete business cards. The form will delete the business card with the given `id` (`id` is the index of the business card
   in the list of business cards) and redirects the user to the introductory page. To delete a business card, create the necessary method in the `BusinessCardService`.




# Úkol 4

Budeme pokračovat ve stránce pro zobrazování vizitek. Tentokrát doplníme možnost vizitky přidávat a mazat je.

V zadání projektu je úvodní stránka, která zobrazuje seznam vizitek, a každou vizitku je možné rozkliknou a přejít na detail vizitky. Na úvodní stránce je navíc
poslední prázdná vizitka, která vede na stránku `/nova`. Tuto stránku je potřeba implementovat. Bude na ní formulář, do kterého se zadají údaje, které jsou na
vizitce. Formulář odešle metodou `POST` data na server, ten přidá vizitku do seznamu a přesměruje uživatele zpět na úvodní stránku, kde se zobrazí seznam vizitek
i s právě přidanou vizitkou.

Dále je potřeba na stránku s detailem vizitky přidat tlačítko, které danou vizitku smaže – metodou `POST` odešle na server formulář s `id` vizitky, server
vizitku vymaže ze seznamu a přesměruje uživatele na úvodní stránku, kde se zobrazí seznam vizitek – tentokrát už bez smazané vizitky.

1. Vytvoř repository na základěšablony do svého účtu na GitHubu, případně pokračuj ve svém úkolu z předchozí lekce.
1. Naklonuj si repository **ze svého účtu** na GitHubu na lokální počítač.
1. Spusť si naklonovanou aplikaci a otevři v prohlížeči stránku [http://localhost:8080/](http://localhost:8080/). Zobrazí se stránka s šesti stejnými vizitkami.
   Kliknutím na kteroukoli vizitku se zobrazí příklad s detailem jedné vizitky – je v něm pouze jedna vizitka spolu s mapou zobrazující adresu uvedenou na vizitce.
1. Uprav zobrazení seznamu i detailu tak, aby se v seznamu zobrazovaly vizitky zadané v aplikaci (každá jiná) a v detailu se zobrazovala správná vizitka. Můžeš použít řešení z minulého úkolu.
2. Odkaz na vytvoření nové vizitky na úvodní stránce není funkční. Je potřeba vytvořit metodu v kontroleru, která bude obsluhovat adresu `/nova`. Zobrazí na ní
   formulář pro zadání údajů na vizitku.
1. Dále je potřeba vytvořit metodu kontroleru, do které se budou odesílat data z vyplněného formuláře. Tato metoda přidá vizitku do seznamu a přesměruje
   uživatele na úvodní stránku. Pro přidání vizitky vytvoř potřebnou metodu ve službě `VizitkaService`. 
1. Na stránku s detailem vizitky je potřeba přidat formulář pro mazání vizitky. Formulář bude obsahovat skryté formulářové pole `<input type="hidden" />` s
   `id` vizitky. Z formuláře bude vidět jen tlačítko s nápisem „Smazat“.   
1. V kontroleru je potřeba vytvořit metodu, která bude reagovat na tento formulář pro mazání vizitek. Formulář smaže vizitku s daným `id` (`id` je index vizitky
   v seznamu vizitek) a přesměruje uživatele na úviodní stránku. Pro smazání vizitky vytvoř potřebnou metodu ve službě `VizitkaService`.
1. Zkontroluj výsledek v prohlížeči.
1. *Commitni* a *pushnni* změny (výsledný kód) do svého repository na GitHubu.
1. Vlož odkaz na své repository jako řešení úkolu na portálu [Moje Czechitas](https://moje.czechitas.cz).

## Bootstrap
Pokud chceš vytvořit formulář, který bude vypadat docela rozumně, a nechceš vytvářet vlastní styly, můžeš použít [Bootstrap](https://getbootstrap.com/). Popis
vložení Bootstrapu do stránky je v dokumentaci na stránce [Download](https://getbootstrap.com/docs/5.2/getting-started/download/). Důležité je do
hlavičky stránky vložit element `<link>`odkazující na `bootstrap.min.css` (v kódu bude celá cesta, tak, jak je uvedená na stránkách Bootstrapu). Stránka dále
popisuje vložení JavaScriptové knihovny používané Bootstrapem, ta není pro formuláře potřeba.

Na další stránce je popis [formulářů v Bootstrapu](https://getbootstrap.com/docs/5.2/forms/overview/). Obvykle stačí najít si v dokumentaci vzorový kód, ten si
zkopírovat do své stránky a upravit jej – zejména upravit texty a atributy `name` a `id` u elementů `<input>` a atrinbut `for` u elementů `<label>`.

## Odkazy

* odkaz na stránku [Lekce 5](https://java.czechitas.cz/2024-jaro/java-2-online/lekce-4.html)
* Java SE 21 [Javadoc](https://docs.oracle.com/en/java/javase/21/docs/api/java.base/) – dokumentace všech tříd, které jsou součástí základní Javy ve verzi 21.
* Dokumentace [Spring Boot](https://spring.io/projects/spring-boot#learn) – odsud je anotace `@SpringBootApplication` a třída `SpringApplication`.
* Dokumentace [Spring Framework](https://spring.io/projects/spring-framework#learn) – odsud jsou anotace `@Controller`, `@GetRequest` a třída `ModelAndView`.
* Dokumentace [Freemarker](https://freemarker.apache.org/docs/) – šablonovací systém pro HTML použitý v projektu.
* Dokumentace [HTML formulářů](https://developer.mozilla.org/en-US/docs/Learn/Forms)
* [Bootstrap](https://getbootstrap.com) – jeden z CSS frameworků
* [Bootstrap Icons](https://icons.getbootstrap.com) – sada ikon pro použití na webu
* [Unsplash](https://unsplash.com) – obrázky a fotografie k použití zdarma
