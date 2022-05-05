# 4. feladat

Készítsd el egy élelmiszer kiskereskedés adatbázisát
Hozz létre táblákat tetszőleges attribútumokkal a termékeknek, tranzakcióknak, beszállítóknak és az eladóknak.
A táblák között legyenek tartalmi kapcsolatok:
-  a tranzakciókhoz tartozik termék és eladó
- a termékeket beszállítók szállítják, stb.

## Feladatok

1. Íri egy PL/SQL procedúrát, amely egy termék azonosítót kap paraméterül és visszaadja hány darabot vásároltak belőle. Ha nem létező azonosítót adunk meg paraméterül, kezeld kivételként és írj ki értelmes hibaüzenetet.

2. Írj PL/SQL függvényt, amely elmenti egy kollekcióba a 3 legkevesebb számban eladott terméket. Módosító kurzor segítségével csökkentsd a termékek árát paraméterül megkapott százalékkal. A függvény térjen vissza a termékek nevével (szövegesen).

3. Hozz létre egy triggert, amely egy termék árának módosításakor kiírja a régi és új ár közötti különbséget.

## Sajat leiratozas

### Termekek tabla (Products)

| id | name | dealer_id |
|----|------|--------|
|int|String|int|

### Tranzakciok tabla (Transactions)

| id | product_id | seller_id |
|----|------|--------|
|int|int|int|

### Beszallitok tabla (Dealers)

| id | name |
|----|------|
|int|String|

### Eladook tabla (Sellers)

| id | name |
|----|------|
|int|String|

## Tasks

- [x] Elado tabla letrehozasa
- [x] Beszallitok tabla letrehozasa
- [x] Termekek tabla letrehozasa
- [x] Tranzakciok tabla letrehozasa
- [ ] (1. feladat) PL/SQL hany darabot vasaroltak
- [ ] (1. feladat) PL/SQL hibalekezeles
- [ ] (2. feladat) PL/SQL mentsd collection-ba a 3 legkevesebbet eladott termeket
- [ ] (2. fealdat) PL/SQL csokkentsd ezen termekek arat parameterul kapott szazalekkal
- [ ] (3. feladat) PL/SQL Trikker az arvaltozasra 