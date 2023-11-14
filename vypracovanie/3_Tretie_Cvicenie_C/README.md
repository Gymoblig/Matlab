
# **Polynómy a Simulink**
Toto by malo jednoducho vysvetliť ako som sa dopracoval k výsledku, aký mám :)
- [ZADANIE 1 - Polynómy](#zadanie-1---polynomy)
- [ZADANIE 2 - Simulink](#zadanie-2---simulink)
    - [A) Vytvorte periodický signál v prostredí SIMULINK podľa nasledujúceho obrázku](#a-vytvorte-periodicky-signal-v-prostredi-simulink-podla-nasledujuceho-obrazku)
    - [B) Vytvorte periodický signál, ktorý vznikne sčítaním prvých 5-tich zložiek Fourierovho radu reprezentujúceho referenčný signál v prvej časti zadania](#b-vytvorte-periodicky-signal-ktory-vznikne-scitanim-prvych-5-tich-zloziek-fourierovho-radu-reprezentujuceho-referencny-signal-v-prvej-casti-zadania)
    - [C) Zobrazte vytvorené signály z A) a B) v jednom grafickom okne pomocou bloku Scope](#c-zobrazte-vytvorene-signaly-z-a-a-b-v-jednom-grafickom-okne-pomocou-bloku-scope)
## ZADANIE 1 - Polynómy
Vytvorte polynóm 
- p: 4x3- 19x2 + 120
- q: x + 1
vypíšte polynóm **r**, ktorý je súčinom polynómu **p** a polynómu
**q**. 
Zistite hodnotu polynómu **r** v bode **x=1**. 
Vypíšte korene polynómu r.


### Stručný postup:
1. Definujeme si **p**, **q** a **x**
```
p = [4, -19, 0, 120];
x = 1;
q = [x, 1];
```
2. Použijeme funkciu **conv()**, ktorá nám umožní vypočítať **r** (*Funkcia conv() v MATLABe slúži na výpočet konvolúcie dvoch vektorov alebo polynómov. V kontexte signálov a systémov sa často používa na výpočet súčinu dvoch polynómov alebo na konvolúciu dvoch signálov.*)
```
r = conv(p, q);
```
3. Použijeme funkciu **polyval()**, ktorá nám umožní vypočítať **hodnotu r** (*V jazyku MATLAB funkcia polyval() sa používa na výpočet hodnoty polynómu v zadanom bode alebo bodoch.*)
```
r_hodnota = polyval(r, x);
```
4. Použijeme funkciu **roots()**, ktorá nám umožní vypočítať korenie našho **r** (*V jazyku MATLAB funkcia roots() slúži na výpočet koreňov polynómu zo zadaných koeficientov.*)
```
korene_r = roots(r);
```






## ZADANIE 2 - Simulink
### A) Vytvorte periodický signál v prostredí SIMULINK podľa nasledujúceho obrázku:
![App Screenshot](https://lh3.google.com/u/1/d/15Xb5ZHiMFSBbNFAvtlJY_Kd1pE_v2DS7=w1040-h931-iv1](https://github.com/Gymoblig/Matlab/blob/main/img/1.png)
#### Stručný postup:
1. Pridáme si z **Library Browser**u **Signal Editor**, následne dvojtým kliknutím otvoríme menu *Buildera* a vytvoríme mu tzv. **Scenario**
![App Screenshot](https://lh3.google.com/u/1/d/1tTRB2DwT5jtJiDF8NCGhvodHqwRIXy4X=w1040-h931-iv1)

2. V **Signal Editor**e máme menu s ktorým ideme pracovať... Pridáme si **signal**
![App Screenshot](https://lh3.google.com/u/1/d/1Omd9-j89qOCxNQj2JQjrDOA3pXDBhLJo=w1040-h931-iv1)
- Ktorý sa nachádza pod **Scenario**
![App Screenshot](https://lh3.google.com/u/1/d/1TzXRpzjLUBCWT_zDZZun-djgW6g202WG=w1040-h931-iv1)
- *Ak to neukazuje treba si dať pozor, že zobáčik smeruje dole, aby **Signal** bol daný pod Scenario a aby ikona oka bola otvorená*

3. Následne sa pozrieme na pravú stranu editora, kde nájdeme okno pre úpravu hodnoty v určitom čase 
 - **TIME** - čas v ktorom má signál nadobunúť hodnotu
 - **DATA** - hodnota, ktorú má signál nadobudnúť
![App Screenshot](https://lh3.google.com/u/1/d/1SQoKRB_DVloxBCFZSSeJdKXSn0Sv5_ux=w1040-h931-iv1)
- Keďže nám treba len po 2 sekundy tak **10** upravíme na 2 a pridáme hodnoty, ktoré nám treba. Výsledok by mal vyzerať nasledovne:
![App Screenshot](https://lh3.google.com/u/1/d/1-qtDJ4yUr35l6qEqt48Um5IiB7LeBr2K=w1040-h931-iv1)
*Súbor uložíme a pokračujeme*

4. **Block Parametres: Signal Editor** ešte nezatvárame a musíme zaškrtnút **Interpolate Data** a taktiež nastaviť **Sample Time** na **-1**
![App Screenshot](https://lh3.google.com/u/1/d/1SvMWHAkbC_jRydjiM9Vt8q5chFd6ViUK=w1040-h931-iv1)
 - ***Sample time** sme nastavili aby sme mali tzv. nekonečný čas... A **Interpolate Data** slúži na to, aby sa lineárne interpoloval čas, ak neexistujú žiadne zodpovedajúce dáta v pracovnej pamäti*

5. Dáme **OK** pridáme **Scope** a prepojíme náš Signal Editor so Scopom (*Malo by to vyzerať ako na obrázku*)
![App Screenshot](https://lh3.google.com/u/1/d/1LVbtkztpt68oz7YPjGeFcBGOgx_rrkBI=w1040-h931-iv1)

6. V hornej lište nesmieme zabudnúť nastaviť čas simulácie na dve sekundy, čiže ideme na **SIMULATION > Stop time** (*pri **run***) a nastavíme to na **2**
- Následne dáme **RUN** (Počkáme kým Simulink dokončí všetko potrebné)
- Dvojtým kliknutím otvoríme **Scope** a mali by sme vidieť výsledok našej simulácie :)
![App Screenshot](https://lh3.google.com/u/1/d/1o3pY2T17bwBU9gr4nHUAXLz6KguSIj__=w1040-h931-iv1)



---
### B) Vytvorte periodický signál, ktorý vznikne sčítaním prvých 5-tich zložiek Fourierovho radu reprezentujúceho referenčný signál v prvej časti zadania.

#### Stručný postup:
1. Najprv si v samotnom **MATLAB**e definujeme naše **f** a frekvenciu **omega**
![App Screenshot](https://lh3.google.com/u/1/d/1pSWmRsolY4S3j3kjbAb8t_Y_qzUbDIZO=w1040-h931-iv1)
2. Po otvorení Simulinku prechádzame na **Library Browser** a vyhľadáme si **Signal Generator**... Po otvorení dvojtým kliknutím sa nám ukáže **editor generátora**
![App Screenshot](https://lh3.google.com/u/1/d/1U4KTtFn8bRwI0oQVCo_0w_WPhmMzde3I=w1040-h931-iv1)
- Tu nám stačí iba zmeniť **Frequency** z **1** na nami predtým definovanú **omega** (*Hodnotu by malo ukazovať číslo pi*)
3. Z **Library Browser**u si pridáme **Sum of Elements** a náš **Signal Generator** napojíme naň
4. Následne iba **Sum of Elements** napojíme na **Scope**
5. V hornej lište nesmieme zabudnúť nastaviť čas simulácie na dve sekundy, čiže ideme na **SIMULATION > Stop time** (*pri **run***) a nastavíme to na **2**
- Následne dáme **RUN** (Počkáme kým Simulink dokončí všetko potrebné)
- Dvojtým kliknutím otvoríme **Scope** a mali by sme vidieť výsledok našej simulácie :)
![App Screenshot](https://lh3.google.com/u/1/d/1VNEGKy07Zz1ii_SCSrkWsdo_T_W2SzMh=w1040-h931-iv1)

---
### C) Zobrazte vytvorené signály z A) a B) v jednom grafickom okne pomocou bloku Scope.

#### Stručný postup:
1. Pri tejto časti cvičenia postupujeme rovnako ako pri časti A a aj B len všetko je vlastne len v jednom súbore to znamená, že výsledná schéma bude vyzerať nasledovne:
![App Screenschot](https://lh3.google.com/u/1/d/16Iu5xKlvK0lAGAVVwOacKz9v5c4GpGV-=w1040-h931-iv1)
