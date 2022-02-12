# SQL Temeller - Ödev 7

Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

1. *film* tablosunda bulunan filmleri *rating* değerlerine göre gruplayınız.
2. *film* tablosunda bulunan filmleri *replacement_cost* sütununa göre grupladığımızda film sayısı 50 den fazla olan *replacement_cost* değerini ve karşılık gelen film sayısını sıralayınız.
3. *customer* tablosunda bulunan *store_id* değerlerine karşılık gelen müşteri sayılarını nelerdir?
4. *city* tablosunda bulunan şehir verilerini *country_id* sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran *country_id* bilgisini ve şehir sayısını paylaşınız.

***

1.

```SQL
SELECT rating FROM film 
GROUP BY rating;
```

2.

```SQL
SELECT replacement_cost, COUNT(*) AS "cnt" FROM film 
GROUP BY replacement_cost 
HAVING COUNT(*) > 50 
ORDER BY "cnt";
```

3.

```SQL
SELECT store_id, COUNT(*) AS "cnt" FROM customer 
GROUP BY store_id;
```

4.

```SQL
SELECT country_id, COUNT(*) AS "city-count" FROM city 
GROUP BY country_id 
ORDER BY "city-count" DESC 
LIMIT 1;
```
