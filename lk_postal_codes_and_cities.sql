
-- Source: POST-CODE-BOOK-.pdf (sha256=c8ea0cc844a54daabcedd43a254ae0e48aaac14294c1b5fd2a41edee54f5ed22)


CREATE TABLE IF NOT EXISTS lk_postal_codes_and_cities (
  postal_code CHAR(5) NOT NULL,
  type VARCHAR(20) NOT NULL,
  city_en VARCHAR(255) NOT NULL,
  PRIMARY KEY (postal_code, type),
  INDEX idx_lk_postal_codes_and_cities_city_en (city_en(100))
);

-- Idempotent seed (safe to rerun)
INSERT INTO lk_postal_codes_and_cities (postal_code, type, city_en)
SELECT v.postal_code, v.type, v.city_en
FROM (
  SELECT '00100' AS postal_code, 'CITY_ZONE' AS type, 'Colombo 01' AS city_en
  UNION ALL
  SELECT '00200' AS postal_code, 'CITY_ZONE' AS type, 'Colombo 02' AS city_en
  UNION ALL
  SELECT '00200' AS postal_code, 'POST_OFFICE' AS type, 'Slave Island' AS city_en
  UNION ALL
  SELECT '00300' AS postal_code, 'CITY_ZONE' AS type, 'Colombo 03' AS city_en
  UNION ALL
  SELECT '00400' AS postal_code, 'CITY_ZONE' AS type, 'Colombo 04' AS city_en
  UNION ALL
  SELECT '00500' AS postal_code, 'CITY_ZONE' AS type, 'Colombo 05' AS city_en
  UNION ALL
  SELECT '00500' AS postal_code, 'POST_OFFICE' AS type, 'Havelock Town' AS city_en
  UNION ALL
  SELECT '00600' AS postal_code, 'CITY_ZONE' AS type, 'Colombo 06' AS city_en
  UNION ALL
  SELECT '00600' AS postal_code, 'POST_OFFICE' AS type, 'Wellawatta' AS city_en
  UNION ALL
  SELECT '00700' AS postal_code, 'CITY_ZONE' AS type, 'Colombo 07' AS city_en
  UNION ALL
  SELECT '00800' AS postal_code, 'CITY_ZONE' AS type, 'Colombo 08' AS city_en
  UNION ALL
  SELECT '00800' AS postal_code, 'POST_OFFICE' AS type, 'Borella' AS city_en
  UNION ALL
  SELECT '00900' AS postal_code, 'CITY_ZONE' AS type, 'Colombo 09' AS city_en
  UNION ALL
  SELECT '01000' AS postal_code, 'CITY_ZONE' AS type, 'Colombo 10' AS city_en
  UNION ALL
  SELECT '01100' AS postal_code, 'CITY_ZONE' AS type, 'Colombo 11' AS city_en
  UNION ALL
  SELECT '01200' AS postal_code, 'CITY_ZONE' AS type, 'Colombo 12' AS city_en
  UNION ALL
  SELECT '01300' AS postal_code, 'CITY_ZONE' AS type, 'Colombo 13' AS city_en
  UNION ALL
  SELECT '01300' AS postal_code, 'POST_OFFICE' AS type, 'Kotahena' AS city_en
  UNION ALL
  SELECT '01400' AS postal_code, 'CITY_ZONE' AS type, 'Colombo 14' AS city_en
  UNION ALL
  SELECT '01500' AS postal_code, 'CITY_ZONE' AS type, 'Colombo 15' AS city_en
  UNION ALL
  SELECT '10100' AS postal_code, 'POST_OFFICE' AS type, 'Sri Jayawardenapura' AS city_en
  UNION ALL
  SELECT '10107' AS postal_code, 'POST_OFFICE' AS type, 'Rajagiriya' AS city_en
  UNION ALL
  SELECT '10115' AS postal_code, 'POST_OFFICE' AS type, 'Malambe' AS city_en
  UNION ALL
  SELECT '10116' AS postal_code, 'POST_OFFICE' AS type, 'Talawatugoda' AS city_en
  UNION ALL
  SELECT '10118' AS postal_code, 'POST_OFFICE' AS type, 'Hokandara' AS city_en
  UNION ALL
  SELECT '10120' AS postal_code, 'POST_OFFICE' AS type, 'Battaramulla' AS city_en
  UNION ALL
  SELECT '10150' AS postal_code, 'POST_OFFICE' AS type, 'Athurugiriya' AS city_en
  UNION ALL
  SELECT '10200' AS postal_code, 'POST_OFFICE' AS type, 'Homagama' AS city_en
  UNION ALL
  SELECT '10202' AS postal_code, 'POST_OFFICE' AS type, 'Mullegama' AS city_en
  UNION ALL
  SELECT '10204' AS postal_code, 'POST_OFFICE' AS type, 'Habarakada' AS city_en
  UNION ALL
  SELECT '10206' AS postal_code, 'POST_OFFICE' AS type, 'Pitipana Homagama' AS city_en
  UNION ALL
  SELECT '10208' AS postal_code, 'POST_OFFICE' AS type, 'Kiriwattuduwa' AS city_en
  UNION ALL
  SELECT '10220' AS postal_code, 'POST_OFFICE' AS type, 'Kottawa' AS city_en
  UNION ALL
  SELECT '10230' AS postal_code, 'POST_OFFICE' AS type, 'Pannipitiya' AS city_en
  UNION ALL
  SELECT '10232' AS postal_code, 'POST_OFFICE' AS type, 'Hiripitiya' AS city_en
  UNION ALL
  SELECT '10240' AS postal_code, 'POST_OFFICE' AS type, 'Mattegoda' AS city_en
  UNION ALL
  SELECT '10250' AS postal_code, 'POST_OFFICE' AS type, 'Nugegoda' AS city_en
  UNION ALL
  SELECT '10280' AS postal_code, 'POST_OFFICE' AS type, 'Maharagama' AS city_en
  UNION ALL
  SELECT '10290' AS postal_code, 'POST_OFFICE' AS type, 'Boralesgamuwa' AS city_en
  UNION ALL
  SELECT '10300' AS postal_code, 'POST_OFFICE' AS type, 'Piliyandala' AS city_en
  UNION ALL
  SELECT '10301' AS postal_code, 'POST_OFFICE' AS type, 'Suwarapola' AS city_en
  UNION ALL
  SELECT '10302' AS postal_code, 'POST_OFFICE' AS type, 'Deltara' AS city_en
  UNION ALL
  SELECT '10304' AS postal_code, 'POST_OFFICE' AS type, 'Siddamulla' AS city_en
  UNION ALL
  SELECT '10305' AS postal_code, 'POST_OFFICE' AS type, 'Makandana' AS city_en
  UNION ALL
  SELECT '10306' AS postal_code, 'POST_OFFICE' AS type, 'Madapatha' AS city_en
  UNION ALL
  SELECT '10320' AS postal_code, 'POST_OFFICE' AS type, 'Polgasowita' AS city_en
  UNION ALL
  SELECT '10350' AS postal_code, 'POST_OFFICE' AS type, 'Dehiwala' AS city_en
  UNION ALL
  SELECT '10370' AS postal_code, 'POST_OFFICE' AS type, 'Mount .Lavinia' AS city_en
  UNION ALL
  SELECT '10390' AS postal_code, 'POST_OFFICE' AS type, 'Rathmalana' AS city_en
  UNION ALL
  SELECT '10400' AS postal_code, 'POST_OFFICE' AS type, 'Moratuwa' AS city_en
  UNION ALL
  SELECT '10412' AS postal_code, 'POST_OFFICE' AS type, 'Soysapura' AS city_en
  UNION ALL
  SELECT '10500' AS postal_code, 'POST_OFFICE' AS type, 'Padukka' AS city_en
  UNION ALL
  SELECT '10502' AS postal_code, 'POST_OFFICE' AS type, 'Horagala' AS city_en
  UNION ALL
  SELECT '10504' AS postal_code, 'POST_OFFICE' AS type, 'Meegoda' AS city_en
  UNION ALL
  SELECT '10508' AS postal_code, 'POST_OFFICE' AS type, 'Kahawala' AS city_en
  UNION ALL
  SELECT '10511' AS postal_code, 'POST_OFFICE' AS type, 'Watareka' AS city_en
  UNION ALL
  SELECT '10513' AS postal_code, 'POST_OFFICE' AS type, 'Batawala' AS city_en
  UNION ALL
  SELECT '10522' AS postal_code, 'POST_OFFICE' AS type, 'Bope' AS city_en
  UNION ALL
  SELECT '10524' AS postal_code, 'POST_OFFICE' AS type, 'Handapangoda' AS city_en
  UNION ALL
  SELECT '10526' AS postal_code, 'POST_OFFICE' AS type, 'Batugampola' AS city_en
  UNION ALL
  SELECT '10600' AS postal_code, 'POST_OFFICE' AS type, 'Kolonnawa' AS city_en
  UNION ALL
  SELECT '10620' AS postal_code, 'POST_OFFICE' AS type, 'Mulleriyawa New Town' AS city_en
  UNION ALL
  SELECT '10640' AS postal_code, 'POST_OFFICE' AS type, 'Kaduwela' AS city_en
  UNION ALL
  SELECT '10650' AS postal_code, 'POST_OFFICE' AS type, 'Hanwella' AS city_en
  UNION ALL
  SELECT '10654' AS postal_code, 'POST_OFFICE' AS type, 'Ranala' AS city_en
  UNION ALL
  SELECT '10656' AS postal_code, 'POST_OFFICE' AS type, 'Dedigamuwa' AS city_en
  UNION ALL
  SELECT '10660' AS postal_code, 'POST_OFFICE' AS type, 'Pugoda' AS city_en
  UNION ALL
  SELECT '10662' AS postal_code, 'POST_OFFICE' AS type, 'Kapugoda' AS city_en
  UNION ALL
  SELECT '10664' AS postal_code, 'POST_OFFICE' AS type, 'Tittapattara' AS city_en
  UNION ALL
  SELECT '10680' AS postal_code, 'POST_OFFICE' AS type, 'Waga' AS city_en
  UNION ALL
  SELECT '10682' AS postal_code, 'POST_OFFICE' AS type, 'Tummodara' AS city_en
  UNION ALL
  SELECT '10700' AS postal_code, 'POST_OFFICE' AS type, 'Seethawakapura' AS city_en
  UNION ALL
  SELECT '10704' AS postal_code, 'POST_OFFICE' AS type, 'Napawala' AS city_en
  UNION ALL
  SELECT '10707' AS postal_code, 'POST_OFFICE' AS type, 'Maniyangama' AS city_en
  UNION ALL
  SELECT '10712' AS postal_code, 'POST_OFFICE' AS type, 'Puwakpitiya' AS city_en
  UNION ALL
  SELECT '10714' AS postal_code, 'POST_OFFICE' AS type, 'Hewainna' AS city_en
  UNION ALL
  SELECT '10718' AS postal_code, 'POST_OFFICE' AS type, 'Kalatuwawa' AS city_en
  UNION ALL
  SELECT '10730' AS postal_code, 'POST_OFFICE' AS type, 'Kosgama' AS city_en
  UNION ALL
  SELECT '10732' AS postal_code, 'POST_OFFICE' AS type, 'Akarawita' AS city_en
  UNION ALL
  SELECT '11000' AS postal_code, 'POST_OFFICE' AS type, 'Gampaha' AS city_en
  UNION ALL
  SELECT '11010' AS postal_code, 'POST_OFFICE' AS type, 'Ragama' AS city_en
  UNION ALL
  SELECT '11011' AS postal_code, 'POST_OFFICE' AS type, 'Batuwatta' AS city_en
  UNION ALL
  SELECT '11012' AS postal_code, 'POST_OFFICE' AS type, 'Walpola' AS city_en
  UNION ALL
  SELECT '11020' AS postal_code, 'POST_OFFICE' AS type, 'Ganemulla' AS city_en
  UNION ALL
  SELECT '11024' AS postal_code, 'POST_OFFICE' AS type, 'Bollete' AS city_en
  UNION ALL
  SELECT '11030' AS postal_code, 'POST_OFFICE' AS type, 'Udugampola' AS city_en
  UNION ALL
  SELECT '11033' AS postal_code, 'POST_OFFICE' AS type, 'Madelgamuwa' AS city_en
  UNION ALL
  SELECT '11034' AS postal_code, 'POST_OFFICE' AS type, 'Ihala Uggalboda' AS city_en
  UNION ALL
  SELECT '11040' AS postal_code, 'POST_OFFICE' AS type, 'Bemmulla' AS city_en
  UNION ALL
  SELECT '11043' AS postal_code, 'POST_OFFICE' AS type, 'Pethiyagoda' AS city_en
  UNION ALL
  SELECT '11044' AS postal_code, 'POST_OFFICE' AS type, 'Korase' AS city_en
  UNION ALL
  SELECT '11052' AS postal_code, 'POST_OFFICE' AS type, 'Ambagaspitiya' AS city_en
  UNION ALL
  SELECT '11054' AS postal_code, 'POST_OFFICE' AS type, 'Udathuththiripitiya' AS city_en
  UNION ALL
  SELECT '11056' AS postal_code, 'POST_OFFICE' AS type, 'Mudungoda' AS city_en
  UNION ALL
  SELECT '11061' AS postal_code, 'POST_OFFICE' AS type, 'Mandawala' AS city_en
  UNION ALL
  SELECT '11062' AS postal_code, 'POST_OFFICE' AS type, 'Lunugama' AS city_en
  UNION ALL
  SELECT '11063' AS postal_code, 'POST_OFFICE' AS type, 'Naranwala' AS city_en
  UNION ALL
  SELECT '11066' AS postal_code, 'POST_OFFICE' AS type, 'Nedungamuwa' AS city_en
  UNION ALL
  SELECT '11068' AS postal_code, 'POST_OFFICE' AS type, 'Wanaluwawa' AS city_en
  UNION ALL
  SELECT '11100' AS postal_code, 'POST_OFFICE' AS type, 'Veyangoda' AS city_en
  UNION ALL
  SELECT '11102' AS postal_code, 'POST_OFFICE' AS type, 'Dewalapola' AS city_en
  UNION ALL
  SELECT '11104' AS postal_code, 'POST_OFFICE' AS type, 'Watinapaha' AS city_en
  UNION ALL
  SELECT '11105' AS postal_code, 'POST_OFFICE' AS type, 'Kumbaloluwa' AS city_en
  UNION ALL
  SELECT '11108' AS postal_code, 'POST_OFFICE' AS type, 'Essella' AS city_en
  UNION ALL
  SELECT '11112' AS postal_code, 'POST_OFFICE' AS type, 'Muddaragama' AS city_en
  UNION ALL
  SELECT '11114' AS postal_code, 'POST_OFFICE' AS type, 'Mabodale' AS city_en
  UNION ALL
  SELECT '11116' AS postal_code, 'POST_OFFICE' AS type, 'Ellakkala' AS city_en
  UNION ALL
  SELECT '11120' AS postal_code, 'POST_OFFICE' AS type, 'Attanagalla' AS city_en
  UNION ALL
  SELECT '11122' AS postal_code, 'POST_OFFICE' AS type, 'Alawala' AS city_en
  UNION ALL
  SELECT '11126' AS postal_code, 'POST_OFFICE' AS type, 'Urapola' AS city_en
  UNION ALL
  SELECT '11128' AS postal_code, 'POST_OFFICE' AS type, 'Nikahetikanda' AS city_en
  UNION ALL
  SELECT '11129' AS postal_code, 'POST_OFFICE' AS type, 'Rukmale' AS city_en
  UNION ALL
  SELECT '11134' AS postal_code, 'POST_OFFICE' AS type, 'Bopagama' AS city_en
  UNION ALL
  SELECT '11142' AS postal_code, 'POST_OFFICE' AS type, 'Rukgahavila' AS city_en
  UNION ALL
  SELECT '11144' AS postal_code, 'POST_OFFICE' AS type, 'Kahatowita' AS city_en
  UNION ALL
  SELECT '11146' AS postal_code, 'POST_OFFICE' AS type, 'Walgammulla' AS city_en
  UNION ALL
  SELECT '11150' AS postal_code, 'POST_OFFICE' AS type, 'Pallewela' AS city_en
  UNION ALL
  SELECT '11160' AS postal_code, 'POST_OFFICE' AS type, 'Kaleliya' AS city_en
  UNION ALL
  SELECT '11200' AS postal_code, 'POST_OFFICE' AS type, 'Mirigama' AS city_en
  UNION ALL
  SELECT '11204' AS postal_code, 'POST_OFFICE' AS type, 'Loluwagoda' AS city_en
  UNION ALL
  SELECT '11206' AS postal_code, 'POST_OFFICE' AS type, 'Kitalawalana' AS city_en
  UNION ALL
  SELECT '11208' AS postal_code, 'POST_OFFICE' AS type, 'Divuldeniya' AS city_en
  UNION ALL
  SELECT '11212' AS postal_code, 'POST_OFFICE' AS type, 'Ambepussa' AS city_en
  UNION ALL
  SELECT '11214' AS postal_code, 'POST_OFFICE' AS type, 'Pamunuwatta' AS city_en
  UNION ALL
  SELECT '11216' AS postal_code, 'POST_OFFICE' AS type, 'Bokalagama' AS city_en
  UNION ALL
  SELECT '11222' AS postal_code, 'POST_OFFICE' AS type, 'Nawana' AS city_en
  UNION ALL
  SELECT '11224' AS postal_code, 'POST_OFFICE' AS type, 'Kaluaggala' AS city_en
  UNION ALL
  SELECT '11226' AS postal_code, 'POST_OFFICE' AS type, 'Walpita' AS city_en
  UNION ALL
  SELECT '11228' AS postal_code, 'POST_OFFICE' AS type, 'Delwagura' AS city_en
  UNION ALL
  SELECT '11232' AS postal_code, 'POST_OFFICE' AS type, 'Kotadeniyawa' AS city_en
  UNION ALL
  SELECT '11234' AS postal_code, 'POST_OFFICE' AS type, 'Mellawagedara' AS city_en
  UNION ALL
  SELECT '11242' AS postal_code, 'POST_OFFICE' AS type, 'Kitulwala' AS city_en
  UNION ALL
  SELECT '11244' AS postal_code, 'POST_OFFICE' AS type, 'Banduragoda' AS city_en
  UNION ALL
  SELECT '11250' AS postal_code, 'POST_OFFICE' AS type, 'Divulapitiya' AS city_en
  UNION ALL
  SELECT '11260' AS postal_code, 'POST_OFFICE' AS type, 'Marandagahamula' AS city_en
  UNION ALL
  SELECT '11262' AS postal_code, 'POST_OFFICE' AS type, 'Hunumulla' AS city_en
  UNION ALL
  SELECT '11264' AS postal_code, 'POST_OFFICE' AS type, 'Dunagaha' AS city_en
  UNION ALL
  SELECT '11265' AS postal_code, 'POST_OFFICE' AS type, 'Ihala Madampella' AS city_en
  UNION ALL
  SELECT '11270' AS postal_code, 'POST_OFFICE' AS type, 'Demanhandiya' AS city_en
  UNION ALL
  SELECT '11300' AS postal_code, 'POST_OFFICE' AS type, 'Wattala' AS city_en
  UNION ALL
  SELECT '11301' AS postal_code, 'POST_OFFICE' AS type, 'Wattala Market Junction' AS city_en
  UNION ALL
  SELECT '11305' AS postal_code, 'POST_OFFICE' AS type, 'Mabola' AS city_en
  UNION ALL
  SELECT '11307' AS postal_code, 'POST_OFFICE' AS type, 'Hendala' AS city_en
  UNION ALL
  SELECT '11311' AS postal_code, 'POST_OFFICE' AS type, 'Hunupitiya' AS city_en
  UNION ALL
  SELECT '11315' AS postal_code, 'POST_OFFICE' AS type, 'Gongitota' AS city_en
  UNION ALL
  SELECT '11320' AS postal_code, 'POST_OFFICE' AS type, 'Kandana' AS city_en
  UNION ALL
  SELECT '11324' AS postal_code, 'POST_OFFICE' AS type, 'Polpithimukulana' AS city_en
  UNION ALL
  SELECT '11328' AS postal_code, 'POST_OFFICE' AS type, 'Uswetakeiyawa' AS city_en
  UNION ALL
  SELECT '11350' AS postal_code, 'POST_OFFICE' AS type, 'Ja-Ela' AS city_en
  UNION ALL
  SELECT '11354' AS postal_code, 'POST_OFFICE' AS type, 'Nivandama' AS city_en
  UNION ALL
  SELECT '11358' AS postal_code, 'POST_OFFICE' AS type, 'Makewita' AS city_en
  UNION ALL
  SELECT '11370' AS postal_code, 'POST_OFFICE' AS type, 'Pamunugama' AS city_en
  UNION ALL
  SELECT '11380' AS postal_code, 'POST_OFFICE' AS type, 'Ekala' AS city_en
  UNION ALL
  SELECT '11390' AS postal_code, 'POST_OFFICE' AS type, 'Kotugoda' AS city_en
  UNION ALL
  SELECT '11400' AS postal_code, 'POST_OFFICE' AS type, 'Raddolugama' AS city_en
  UNION ALL
  SELECT '11410' AS postal_code, 'POST_OFFICE' AS type, 'Seeduwa' AS city_en
  UNION ALL
  SELECT '11420' AS postal_code, 'POST_OFFICE' AS type, 'Katunayake IPZ' AS city_en
  UNION ALL
  SELECT '11440' AS postal_code, 'POST_OFFICE' AS type, 'Katunayake Air Force Camp' AS city_en
  UNION ALL
  SELECT '11450' AS postal_code, 'POST_OFFICE' AS type, 'Katunayake' AS city_en
  UNION ALL
  SELECT '11500' AS postal_code, 'POST_OFFICE' AS type, 'Negambo' AS city_en
  UNION ALL
  SELECT '11504' AS postal_code, 'POST_OFFICE' AS type, 'Talahena' AS city_en
  UNION ALL
  SELECT '11522' AS postal_code, 'POST_OFFICE' AS type, 'Kimbulapitiya' AS city_en
  UNION ALL
  SELECT '11524' AS postal_code, 'POST_OFFICE' AS type, 'Dagonna' AS city_en
  UNION ALL
  SELECT '11526' AS postal_code, 'POST_OFFICE' AS type, 'Katuwellegama' AS city_en
  UNION ALL
  SELECT '11532' AS postal_code, 'POST_OFFICE' AS type, 'Thimbirigaskatuwa' AS city_en
  UNION ALL
  SELECT '11534' AS postal_code, 'POST_OFFICE' AS type, 'Katana' AS city_en
  UNION ALL
  SELECT '11536' AS postal_code, 'POST_OFFICE' AS type, 'Akaragama' AS city_en
  UNION ALL
  SELECT '11538' AS postal_code, 'POST_OFFICE' AS type, 'Badalgama' AS city_en
  UNION ALL
  SELECT '11540' AS postal_code, 'POST_OFFICE' AS type, 'Kochchikade' AS city_en
  UNION ALL
  SELECT '11550' AS postal_code, 'POST_OFFICE' AS type, 'Minuwangoda' AS city_en
  UNION ALL
  SELECT '11558' AS postal_code, 'POST_OFFICE' AS type, 'Andiambalama' AS city_en
  UNION ALL
  SELECT '11562' AS postal_code, 'POST_OFFICE' AS type, 'Wegowwa' AS city_en
  UNION ALL
  SELECT '11564' AS postal_code, 'POST_OFFICE' AS type, 'Horampella' AS city_en
  UNION ALL
  SELECT '11566' AS postal_code, 'POST_OFFICE' AS type, 'Yatiyana' AS city_en
  UNION ALL
  SELECT '11568' AS postal_code, 'POST_OFFICE' AS type, 'Hinatiyana Madawala' AS city_en
  UNION ALL
  SELECT '11600' AS postal_code, 'POST_OFFICE' AS type, 'Kelaniya' AS city_en
  UNION ALL
  SELECT '11601' AS postal_code, 'POST_OFFICE' AS type, 'Kiribathgoda' AS city_en
  UNION ALL
  SELECT '11607' AS postal_code, 'POST_OFFICE' AS type, 'Siyambalape' AS city_en
  UNION ALL
  SELECT '11618' AS postal_code, 'POST_OFFICE' AS type, 'Heiyanthuduwa' AS city_en
  UNION ALL
  SELECT '11630' AS postal_code, 'POST_OFFICE' AS type, 'Gonawala' AS city_en
  UNION ALL
  SELECT '11640' AS postal_code, 'POST_OFFICE' AS type, 'Makola' AS city_en
  UNION ALL
  SELECT '11650' AS postal_code, 'POST_OFFICE' AS type, 'Biyagama' AS city_en
  UNION ALL
  SELECT '11670' AS postal_code, 'POST_OFFICE' AS type, 'Malwana' AS city_en
  UNION ALL
  SELECT '11672' AS postal_code, 'POST_OFFICE' AS type, 'Biyagama EPZ' AS city_en
  UNION ALL
  SELECT '11680' AS postal_code, 'POST_OFFICE' AS type, 'Dompe' AS city_en
  UNION ALL
  SELECT '11690' AS postal_code, 'POST_OFFICE' AS type, 'Dekatana' AS city_en
  UNION ALL
  SELECT '11692' AS postal_code, 'POST_OFFICE' AS type, 'Demalagama' AS city_en
  UNION ALL
  SELECT '11700' AS postal_code, 'POST_OFFICE' AS type, 'Delgoda' AS city_en
  UNION ALL
  SELECT '11710' AS postal_code, 'POST_OFFICE' AS type, 'Weliveriya' AS city_en
  UNION ALL
  SELECT '11715' AS postal_code, 'POST_OFFICE' AS type, 'Henegama' AS city_en
  UNION ALL
  SELECT '11720' AS postal_code, 'POST_OFFICE' AS type, 'Buthpitiya' AS city_en
  UNION ALL
  SELECT '11724' AS postal_code, 'POST_OFFICE' AS type, 'Wathurugama' AS city_en
  UNION ALL
  SELECT '11725' AS postal_code, 'POST_OFFICE' AS type, 'Radawana' AS city_en
  UNION ALL
  SELECT '11730' AS postal_code, 'POST_OFFICE' AS type, 'Kirindiwela' AS city_en
  UNION ALL
  SELECT '11734' AS postal_code, 'POST_OFFICE' AS type, 'Hiswella' AS city_en
  UNION ALL
  SELECT '11741' AS postal_code, 'POST_OFFICE' AS type, 'Pepiliyawala' AS city_en
  UNION ALL
  SELECT '11742' AS postal_code, 'POST_OFFICE' AS type, 'Mithirigala' AS city_en
  UNION ALL
  SELECT '11830' AS postal_code, 'POST_OFFICE' AS type, 'Peliyagoda' AS city_en
  UNION ALL
  SELECT '11850' AS postal_code, 'POST_OFFICE' AS type, 'Kadawatha' AS city_en
  UNION ALL
  SELECT '11851' AS postal_code, 'POST_OFFICE' AS type, 'Mahara' AS city_en
  UNION ALL
  SELECT '11856' AS postal_code, 'POST_OFFICE' AS type, 'Imbulgoda' AS city_en
  UNION ALL
  SELECT '11858' AS postal_code, 'POST_OFFICE' AS type, 'Weboda' AS city_en
  UNION ALL
  SELECT '11870' AS postal_code, 'POST_OFFICE' AS type, 'Yakkala' AS city_en
  UNION ALL
  SELECT '11875' AS postal_code, 'POST_OFFICE' AS type, 'Kalagedihena' AS city_en
  UNION ALL
  SELECT '11880' AS postal_code, 'POST_OFFICE' AS type, 'Nittambuwa' AS city_en
  UNION ALL
  SELECT '11889' AS postal_code, 'POST_OFFICE' AS type, 'Debahera' AS city_en
  UNION ALL
  SELECT '11890' AS postal_code, 'POST_OFFICE' AS type, 'Pasyala' AS city_en
  UNION ALL
  SELECT '11892' AS postal_code, 'POST_OFFICE' AS type, 'Radawadunna' AS city_en
  UNION ALL
  SELECT '11894' AS postal_code, 'POST_OFFICE' AS type, 'Weweldeniya' AS city_en
  UNION ALL
  SELECT '11896' AS postal_code, 'POST_OFFICE' AS type, 'Danowita' AS city_en
  UNION ALL
  SELECT '12000' AS postal_code, 'POST_OFFICE' AS type, 'Kalutara' AS city_en
  UNION ALL
  SELECT '12005' AS postal_code, 'POST_OFFICE' AS type, 'Galpatha' AS city_en
  UNION ALL
  SELECT '12006' AS postal_code, 'POST_OFFICE' AS type, 'Yatawara Junction' AS city_en
  UNION ALL
  SELECT '12007' AS postal_code, 'POST_OFFICE' AS type, 'Koholana' AS city_en
  UNION ALL
  SELECT '12008' AS postal_code, 'POST_OFFICE' AS type, 'Bolossagama' AS city_en
  UNION ALL
  SELECT '12009' AS postal_code, 'POST_OFFICE' AS type, 'Remunagoda' AS city_en
  UNION ALL
  SELECT '12016' AS postal_code, 'POST_OFFICE' AS type, 'Gamagoda' AS city_en
  UNION ALL
  SELECT '12020' AS postal_code, 'POST_OFFICE' AS type, 'Dodangoda' AS city_en
  UNION ALL
  SELECT '12024' AS postal_code, 'POST_OFFICE' AS type, 'Bombuwala' AS city_en
  UNION ALL
  SELECT '12025' AS postal_code, 'POST_OFFICE' AS type, 'Tebuwana' AS city_en
  UNION ALL
  SELECT '12030' AS postal_code, 'POST_OFFICE' AS type, 'Neboda' AS city_en
  UNION ALL
  SELECT '12050' AS postal_code, 'POST_OFFICE' AS type, 'Paiyagala' AS city_en
  UNION ALL
  SELECT '12055' AS postal_code, 'POST_OFFICE' AS type, 'Halkandawila' AS city_en
  UNION ALL
  SELECT '12060' AS postal_code, 'POST_OFFICE' AS type, 'Maggona' AS city_en
  UNION ALL
  SELECT '12070' AS postal_code, 'POST_OFFICE' AS type, 'Beruwala' AS city_en
  UNION ALL
  SELECT '12074' AS postal_code, 'POST_OFFICE' AS type, 'Padagoda' AS city_en
  UNION ALL
  SELECT '12078' AS postal_code, 'POST_OFFICE' AS type, 'Kalawila Kiranthidiya' AS city_en
  UNION ALL
  SELECT '12080' AS postal_code, 'POST_OFFICE' AS type, 'Aluthgama' AS city_en
  UNION ALL
  SELECT '12090' AS postal_code, 'POST_OFFICE' AS type, 'Dharga Town' AS city_en
  UNION ALL
  SELECT '12094' AS postal_code, 'POST_OFFICE' AS type, 'Meegama' AS city_en
  UNION ALL
  SELECT '12100' AS postal_code, 'POST_OFFICE' AS type, 'Matugama' AS city_en
  UNION ALL
  SELECT '12104' AS postal_code, 'POST_OFFICE' AS type, 'Yatadolawatta' AS city_en
  UNION ALL
  SELECT '12106' AS postal_code, 'POST_OFFICE' AS type, 'Nawuttuduwa' AS city_en
  UNION ALL
  SELECT '12108' AS postal_code, 'POST_OFFICE' AS type, 'Welipenna' AS city_en
  UNION ALL
  SELECT '12112' AS postal_code, 'POST_OFFICE' AS type, 'Walagedara' AS city_en
  UNION ALL
  SELECT '12114' AS postal_code, 'POST_OFFICE' AS type, 'Pannila' AS city_en
  UNION ALL
  SELECT '12116' AS postal_code, 'POST_OFFICE' AS type, 'Ittepana' AS city_en
  UNION ALL
  SELECT '12118' AS postal_code, 'POST_OFFICE' AS type, 'Halwala' AS city_en
  UNION ALL
  SELECT '12122' AS postal_code, 'POST_OFFICE' AS type, 'Paraigama' AS city_en
  UNION ALL
  SELECT '12124' AS postal_code, 'POST_OFFICE' AS type, 'Yagirala' AS city_en
  UNION ALL
  SELECT '12126' AS postal_code, 'POST_OFFICE' AS type, 'Mahakalupahana' AS city_en
  UNION ALL
  SELECT '12127' AS postal_code, 'POST_OFFICE' AS type, 'Utumgama' AS city_en
  UNION ALL
  SELECT '12130' AS postal_code, 'POST_OFFICE' AS type, 'Meegahatenna' AS city_en
  UNION ALL
  SELECT '12134' AS postal_code, 'POST_OFFICE' AS type, 'Walallawita' AS city_en
  UNION ALL
  SELECT '12136' AS postal_code, 'POST_OFFICE' AS type, 'Polgampola' AS city_en
  UNION ALL
  SELECT '12138' AS postal_code, 'POST_OFFICE' AS type, 'Pelawatta' AS city_en
  UNION ALL
  SELECT '12142' AS postal_code, 'POST_OFFICE' AS type, 'Boralugoda' AS city_en
  UNION ALL
  SELECT '12144' AS postal_code, 'POST_OFFICE' AS type, 'Pahalahewessa' AS city_en
  UNION ALL
  SELECT '12146' AS postal_code, 'POST_OFFICE' AS type, 'Pelawatta Tea.Project' AS city_en
  UNION ALL
  SELECT '12147' AS postal_code, 'POST_OFFICE' AS type, 'Yattapatha Sinharaja Gardens' AS city_en
  UNION ALL
  SELECT '12148' AS postal_code, 'POST_OFFICE' AS type, 'Danawala Thiniyawala' AS city_en
  UNION ALL
  SELECT '12200' AS postal_code, 'POST_OFFICE' AS type, 'Agalawatta' AS city_en
  UNION ALL
  SELECT '12204' AS postal_code, 'POST_OFFICE' AS type, 'Veyangalla' AS city_en
  UNION ALL
  SELECT '12210' AS postal_code, 'POST_OFFICE' AS type, 'Mahagama' AS city_en
  UNION ALL
  SELECT '12214' AS postal_code, 'POST_OFFICE' AS type, 'Pelanda' AS city_en
  UNION ALL
  SELECT '12216' AS postal_code, 'POST_OFFICE' AS type, 'Molkawa' AS city_en
  UNION ALL
  SELECT '12218' AS postal_code, 'POST_OFFICE' AS type, 'Kelinkanda' AS city_en
  UNION ALL
  SELECT '12222' AS postal_code, 'POST_OFFICE' AS type, 'Kitulgoda' AS city_en
  UNION ALL
  SELECT '12224' AS postal_code, 'POST_OFFICE' AS type, 'Bellana' AS city_en
  UNION ALL
  SELECT '12230' AS postal_code, 'POST_OFFICE' AS type, 'Baduraliya' AS city_en
  UNION ALL
  SELECT '12232' AS postal_code, 'POST_OFFICE' AS type, 'Morapitiya' AS city_en
  UNION ALL
  SELECT '12234' AS postal_code, 'POST_OFFICE' AS type, 'Hedigalla Colony' AS city_en
  UNION ALL
  SELECT '12236' AS postal_code, 'POST_OFFICE' AS type, 'Gurulubedda' AS city_en
  UNION ALL
  SELECT '12300' AS postal_code, 'POST_OFFICE' AS type, 'Bulathsinhala' AS city_en
  UNION ALL
  SELECT '12302' AS postal_code, 'POST_OFFICE' AS type, 'Paragoda' AS city_en
  UNION ALL
  SELECT '12304' AS postal_code, 'POST_OFFICE' AS type, 'Delmella' AS city_en
  UNION ALL
  SELECT '12306' AS postal_code, 'POST_OFFICE' AS type, 'Halwatura' AS city_en
  UNION ALL
  SELECT '12307' AS postal_code, 'POST_OFFICE' AS type, 'Botalegama' AS city_en
  UNION ALL
  SELECT '12308' AS postal_code, 'POST_OFFICE' AS type, 'Diwalakada' AS city_en
  UNION ALL
  SELECT '12310' AS postal_code, 'POST_OFFICE' AS type, 'Govinna' AS city_en
  UNION ALL
  SELECT '12320' AS postal_code, 'POST_OFFICE' AS type, 'Anguruwatota' AS city_en
  UNION ALL
  SELECT '12322' AS postal_code, 'POST_OFFICE' AS type, 'Uduwara' AS city_en
  UNION ALL
  SELECT '12400' AS postal_code, 'POST_OFFICE' AS type, 'Horana' AS city_en
  UNION ALL
  SELECT '12404' AS postal_code, 'POST_OFFICE' AS type, 'Pokunuwita' AS city_en
  UNION ALL
  SELECT '12410' AS postal_code, 'POST_OFFICE' AS type, 'Gonapola Junction' AS city_en
  UNION ALL
  SELECT '12412' AS postal_code, 'POST_OFFICE' AS type, 'Millaniya' AS city_en
  UNION ALL
  SELECT '12414' AS postal_code, 'POST_OFFICE' AS type, 'Paragastota' AS city_en
  UNION ALL
  SELECT '12416' AS postal_code, 'POST_OFFICE' AS type, 'Dombagoda' AS city_en
  UNION ALL
  SELECT '12418' AS postal_code, 'POST_OFFICE' AS type, 'Kananwila' AS city_en
  UNION ALL
  SELECT '12422' AS postal_code, 'POST_OFFICE' AS type, 'Millewa' AS city_en
  UNION ALL
  SELECT '12424' AS postal_code, 'POST_OFFICE' AS type, 'Miwanapalana' AS city_en
  UNION ALL
  SELECT '12426' AS postal_code, 'POST_OFFICE' AS type, 'Kuda Uduwa' AS city_en
  UNION ALL
  SELECT '12428' AS postal_code, 'POST_OFFICE' AS type, 'Kandanagama' AS city_en
  UNION ALL
  SELECT '12432' AS postal_code, 'POST_OFFICE' AS type, 'Poruwedanda' AS city_en
  UNION ALL
  SELECT '12440' AS postal_code, 'POST_OFFICE' AS type, 'Ingiriya' AS city_en
  UNION ALL
  SELECT '12500' AS postal_code, 'POST_OFFICE' AS type, 'Panadura' AS city_en
  UNION ALL
  SELECT '12524' AS postal_code, 'POST_OFFICE' AS type, 'Alubomulla' AS city_en
  UNION ALL
  SELECT '12530' AS postal_code, 'POST_OFFICE' AS type, 'Bandaragama' AS city_en
  UNION ALL
  SELECT '12534' AS postal_code, 'POST_OFFICE' AS type, 'Welmilla Junction' AS city_en
  UNION ALL
  SELECT '12538' AS postal_code, 'POST_OFFICE' AS type, 'Haltota' AS city_en
  UNION ALL
  SELECT '12550' AS postal_code, 'POST_OFFICE' AS type, 'Kehelwatta' AS city_en
  UNION ALL
  SELECT '12560' AS postal_code, 'POST_OFFICE' AS type, 'Wadduwa' AS city_en
  UNION ALL
  SELECT '12564' AS postal_code, 'POST_OFFICE' AS type, 'Morontuduwa' AS city_en
  UNION ALL
  SELECT '12580' AS postal_code, 'POST_OFFICE' AS type, 'Waskaduwa' AS city_en
  UNION ALL
  SELECT '20000' AS postal_code, 'POST_OFFICE' AS type, 'Kandy KY)' AS city_en
  UNION ALL
  SELECT '20032' AS postal_code, 'POST_OFFICE' AS type, 'Haloluwa' AS city_en
  UNION ALL
  SELECT '20034' AS postal_code, 'POST_OFFICE' AS type, 'Yatihalagala' AS city_en
  UNION ALL
  SELECT '20042' AS postal_code, 'POST_OFFICE' AS type, 'Ihala Kobbekaduwa' AS city_en
  UNION ALL
  SELECT '20044' AS postal_code, 'POST_OFFICE' AS type, 'Sangarajapura' AS city_en
  UNION ALL
  SELECT '20048' AS postal_code, 'POST_OFFICE' AS type, 'Kulugammana' AS city_en
  UNION ALL
  SELECT '20052' AS postal_code, 'POST_OFFICE' AS type, 'Uduwa' AS city_en
  UNION ALL
  SELECT '20060' AS postal_code, 'POST_OFFICE' AS type, 'Hataraliyadda' AS city_en
  UNION ALL
  SELECT '20062' AS postal_code, 'POST_OFFICE' AS type, 'Aludeniya' AS city_en
  UNION ALL
  SELECT '20068' AS postal_code, 'POST_OFFICE' AS type, 'Dedunupitiya' AS city_en
  UNION ALL
  SELECT '20072' AS postal_code, 'POST_OFFICE' AS type, 'Nugawela' AS city_en
  UNION ALL
  SELECT '20080' AS postal_code, 'POST_OFFICE' AS type, 'Werellagama' AS city_en
  UNION ALL
  SELECT '20084' AS postal_code, 'POST_OFFICE' AS type, 'Pallekotuwa' AS city_en
  UNION ALL
  SELECT '20086' AS postal_code, 'POST_OFFICE' AS type, 'Kumburegama' AS city_en
  UNION ALL
  SELECT '20092' AS postal_code, 'POST_OFFICE' AS type, 'Harankahawa' AS city_en
  UNION ALL
  SELECT '20093' AS postal_code, 'POST_OFFICE' AS type, 'Bokkawela' AS city_en
  UNION ALL
  SELECT '20094' AS postal_code, 'POST_OFFICE' AS type, 'Udahingulwala' AS city_en
  UNION ALL
  SELECT '20095' AS postal_code, 'POST_OFFICE' AS type, 'Gallellagama' AS city_en
  UNION ALL
  SELECT '20100' AS postal_code, 'POST_OFFICE' AS type, 'Galagedara' AS city_en
  UNION ALL
  SELECT '20106' AS postal_code, 'POST_OFFICE' AS type, 'Poholiyadda' AS city_en
  UNION ALL
  SELECT '20108' AS postal_code, 'POST_OFFICE' AS type, 'Wettewa' AS city_en
  UNION ALL
  SELECT '20109' AS postal_code, 'POST_OFFICE' AS type, 'Minigamuwa' AS city_en
  UNION ALL
  SELECT '20112' AS postal_code, 'POST_OFFICE' AS type, 'Pujapitiya' AS city_en
  UNION ALL
  SELECT '20113' AS postal_code, 'POST_OFFICE' AS type, 'Marathugoda' AS city_en
  UNION ALL
  SELECT '20118' AS postal_code, 'POST_OFFICE' AS type, 'Pattiya Watta' AS city_en
  UNION ALL
  SELECT '20120' AS postal_code, 'POST_OFFICE' AS type, 'Medawala Harispattuwa' AS city_en
  UNION ALL
  SELECT '20126' AS postal_code, 'POST_OFFICE' AS type, 'Dolapihilla' AS city_en
  UNION ALL
  SELECT '20128' AS postal_code, 'POST_OFFICE' AS type, 'Rambukewela' AS city_en
  UNION ALL
  SELECT '20132' AS postal_code, 'POST_OFFICE' AS type, 'Batugoda' AS city_en
  UNION ALL
  SELECT '20134' AS postal_code, 'POST_OFFICE' AS type, 'Watagoda Harispattuwa' AS city_en
  UNION ALL
  SELECT '20136' AS postal_code, 'POST_OFFICE' AS type, 'Ambatenna' AS city_en
  UNION ALL
  SELECT '20140' AS postal_code, 'POST_OFFICE' AS type, 'Alawatugoda' AS city_en
  UNION ALL
  SELECT '20142' AS postal_code, 'POST_OFFICE' AS type, 'Wilanagama' AS city_en
  UNION ALL
  SELECT '20150' AS postal_code, 'POST_OFFICE' AS type, 'Ankumbura' AS city_en
  UNION ALL
  SELECT '20152' AS postal_code, 'POST_OFFICE' AS type, 'Galhinna' AS city_en
  UNION ALL
  SELECT '20154' AS postal_code, 'POST_OFFICE' AS type, 'Batagolladeniya' AS city_en
  UNION ALL
  SELECT '20160' AS postal_code, 'POST_OFFICE' AS type, 'Ampitiya' AS city_en
  UNION ALL
  SELECT '20164' AS postal_code, 'POST_OFFICE' AS type, 'Uduwela' AS city_en
  UNION ALL
  SELECT '20166' AS postal_code, 'POST_OFFICE' AS type, 'Tennekumbura' AS city_en
  UNION ALL
  SELECT '20168' AS postal_code, 'POST_OFFICE' AS type, 'Kundasale' AS city_en
  UNION ALL
  SELECT '20170' AS postal_code, 'POST_OFFICE' AS type, 'Menikhinna' AS city_en
  UNION ALL
  SELECT '20172' AS postal_code, 'POST_OFFICE' AS type, 'Lunuketiya Maditta' AS city_en
  UNION ALL
  SELECT '20176' AS postal_code, 'POST_OFFICE' AS type, 'Narampanawa' AS city_en
  UNION ALL
  SELECT '20180' AS postal_code, 'POST_OFFICE' AS type, 'Rajawella' AS city_en
  UNION ALL
  SELECT '20184' AS postal_code, 'POST_OFFICE' AS type, 'Gomagoda' AS city_en
  UNION ALL
  SELECT '20185' AS postal_code, 'POST_OFFICE' AS type, 'Digana' AS city_en
  UNION ALL
  SELECT '20189' AS postal_code, 'POST_OFFICE' AS type, 'Gurudeniya' AS city_en
  UNION ALL
  SELECT '20194' AS postal_code, 'POST_OFFICE' AS type, 'Nattarampotha' AS city_en
  UNION ALL
  SELECT '20196' AS postal_code, 'POST_OFFICE' AS type, 'Pilawala' AS city_en
  UNION ALL
  SELECT '20198' AS postal_code, 'POST_OFFICE' AS type, 'Ketawala Leula' AS city_en
  UNION ALL
  SELECT '20200' AS postal_code, 'POST_OFFICE' AS type, 'Talatuoya' AS city_en
  UNION ALL
  SELECT '20202' AS postal_code, 'POST_OFFICE' AS type, 'Etulgama' AS city_en
  UNION ALL
  SELECT '20204' AS postal_code, 'POST_OFFICE' AS type, 'Nugaliyadda' AS city_en
  UNION ALL
  SELECT '20206' AS postal_code, 'POST_OFFICE' AS type, 'Kapuliyadda' AS city_en
  UNION ALL
  SELECT '20210' AS postal_code, 'POST_OFFICE' AS type, 'Marassana' AS city_en
  UNION ALL
  SELECT '20212' AS postal_code, 'POST_OFFICE' AS type, 'Kolabissa' AS city_en
  UNION ALL
  SELECT '20214' AS postal_code, 'POST_OFFICE' AS type, 'Godamunna' AS city_en
  UNION ALL
  SELECT '20216' AS postal_code, 'POST_OFFICE' AS type, 'Mahamedagama' AS city_en
  UNION ALL
  SELECT '20218' AS postal_code, 'POST_OFFICE' AS type, 'Bawlana' AS city_en
  UNION ALL
  SELECT '20232' AS postal_code, 'POST_OFFICE' AS type, 'Muruthalawa' AS city_en
  UNION ALL
  SELECT '20234' AS postal_code, 'POST_OFFICE' AS type, 'Yahalatenna' AS city_en
  UNION ALL
  SELECT '20237' AS postal_code, 'POST_OFFICE' AS type, 'Maha Alapalawala' AS city_en
  UNION ALL
  SELECT '20250' AS postal_code, 'POST_OFFICE' AS type, 'Polgolla' AS city_en
  UNION ALL
  SELECT '20260' AS postal_code, 'POST_OFFICE' AS type, 'Madawala Bazaar' AS city_en
  UNION ALL
  SELECT '20270' AS postal_code, 'POST_OFFICE' AS type, 'Gunnepana' AS city_en
  UNION ALL
  SELECT '20300' AS postal_code, 'POST_OFFICE' AS type, 'Kadugannawa' AS city_en
  UNION ALL
  SELECT '20306' AS postal_code, 'POST_OFFICE' AS type, 'Ketakumbura' AS city_en
  UNION ALL
  SELECT '20308' AS postal_code, 'POST_OFFICE' AS type, 'Balana' AS city_en
  UNION ALL
  SELECT '20312' AS postal_code, 'POST_OFFICE' AS type, 'Poththapitiya' AS city_en
  UNION ALL
  SELECT '20400' AS postal_code, 'POST_OFFICE' AS type, 'Peradeniya' AS city_en
  UNION ALL
  SELECT '20404' AS postal_code, 'POST_OFFICE' AS type, 'Uda Peradeniya' AS city_en
  UNION ALL
  SELECT '20409' AS postal_code, 'POST_OFFICE' AS type, 'Megoda Kalugamuwa' AS city_en
  UNION ALL
  SELECT '20414' AS postal_code, 'POST_OFFICE' AS type, 'Hindagala' AS city_en
  UNION ALL
  SELECT '20418' AS postal_code, 'POST_OFFICE' AS type, 'Nillambe' AS city_en
  UNION ALL
  SELECT '20420' AS postal_code, 'POST_OFFICE' AS type, 'Galaha' AS city_en
  UNION ALL
  SELECT '20430' AS postal_code, 'POST_OFFICE' AS type, 'Deltota' AS city_en
  UNION ALL
  SELECT '20438' AS postal_code, 'POST_OFFICE' AS type, 'Handawalapitiya' AS city_en
  UNION ALL
  SELECT '20440' AS postal_code, 'POST_OFFICE' AS type, 'Hewaheta' AS city_en
  UNION ALL
  SELECT '20442' AS postal_code, 'POST_OFFICE' AS type, 'Kiribathkumbura' AS city_en
  UNION ALL
  SELECT '20450' AS postal_code, 'POST_OFFICE' AS type, 'Pilimatalawa' AS city_en
  UNION ALL
  SELECT '20454' AS postal_code, 'POST_OFFICE' AS type, 'Wattappola' AS city_en
  UNION ALL
  SELECT '20465' AS postal_code, 'POST_OFFICE' AS type, 'Danture' AS city_en
  UNION ALL
  SELECT '20470' AS postal_code, 'POST_OFFICE' AS type, 'Menikdiwela' AS city_en
  UNION ALL
  SELECT '20480' AS postal_code, 'POST_OFFICE' AS type, 'Handessa' AS city_en
  UNION ALL
  SELECT '20482' AS postal_code, 'POST_OFFICE' AS type, 'Leemagahakotuwa' AS city_en
  UNION ALL
  SELECT '20500' AS postal_code, 'POST_OFFICE' AS type, 'Gampola' AS city_en
  UNION ALL
  SELECT '20506' AS postal_code, 'POST_OFFICE' AS type, 'Udahentenna' AS city_en
  UNION ALL
  SELECT '20508' AS postal_code, 'POST_OFFICE' AS type, 'Watakedeniya' AS city_en
  UNION ALL
  SELECT '20510' AS postal_code, 'POST_OFFICE' AS type, 'Dolosbage' AS city_en
  UNION ALL
  SELECT '20511' AS postal_code, 'POST_OFFICE' AS type, 'Patitalawa' AS city_en
  UNION ALL
  SELECT '20512' AS postal_code, 'POST_OFFICE' AS type, 'Meethalawa' AS city_en
  UNION ALL
  SELECT '20514' AS postal_code, 'POST_OFFICE' AS type, 'Kurunduwatta Bazaar' AS city_en
  UNION ALL
  SELECT '20515' AS postal_code, 'POST_OFFICE' AS type, 'Haloya' AS city_en
  UNION ALL
  SELECT '20524' AS postal_code, 'POST_OFFICE' AS type, 'Hondiyadeniya' AS city_en
  UNION ALL
  SELECT '20526' AS postal_code, 'POST_OFFICE' AS type, 'Muruthagahamula' AS city_en
  UNION ALL
  SELECT '20529' AS postal_code, 'POST_OFFICE' AS type, 'Yatipiyangala' AS city_en
  UNION ALL
  SELECT '20532' AS postal_code, 'POST_OFFICE' AS type, 'Doluwa' AS city_en
  UNION ALL
  SELECT '20544' AS postal_code, 'POST_OFFICE' AS type, 'Panwilatenna' AS city_en
  UNION ALL
  SELECT '20546' AS postal_code, 'POST_OFFICE' AS type, 'Pupuressa' AS city_en
  UNION ALL
  SELECT '20547' AS postal_code, 'POST_OFFICE' AS type, 'Mahamulgama' AS city_en
  UNION ALL
  SELECT '20551' AS postal_code, 'POST_OFFICE' AS type, 'Mahaudagama' AS city_en
  UNION ALL
  SELECT '20562' AS postal_code, 'POST_OFFICE' AS type, 'Ulapane' AS city_en
  UNION ALL
  SELECT '20564' AS postal_code, 'POST_OFFICE' AS type, 'Mawatura' AS city_en
  UNION ALL
  SELECT '20574' AS postal_code, 'POST_OFFICE' AS type, 'Atabage' AS city_en
  UNION ALL
  SELECT '20578' AS postal_code, 'POST_OFFICE' AS type, 'Paradeka' AS city_en
  UNION ALL
  SELECT '20580' AS postal_code, 'POST_OFFICE' AS type, 'Pussellawa' AS city_en
  UNION ALL
  SELECT '20610' AS postal_code, 'POST_OFFICE' AS type, 'Weligalla' AS city_en
  UNION ALL
  SELECT '20620' AS postal_code, 'POST_OFFICE' AS type, 'Gelioya' AS city_en
  UNION ALL
  SELECT '20640' AS postal_code, 'POST_OFFICE' AS type, 'Velamboda' AS city_en
  UNION ALL
  SELECT '20644' AS postal_code, 'POST_OFFICE' AS type, 'Bambaragahaela' AS city_en
  UNION ALL
  SELECT '20650' AS postal_code, 'POST_OFFICE' AS type, 'Nawalapitiya' AS city_en
  UNION ALL
  SELECT '20654' AS postal_code, 'POST_OFFICE' AS type, 'Pasbage' AS city_en
  UNION ALL
  SELECT '20656' AS postal_code, 'POST_OFFICE' AS type, 'Gonawalapatana' AS city_en
  UNION ALL
  SELECT '20658' AS postal_code, 'POST_OFFICE' AS type, 'Dekinda' AS city_en
  UNION ALL
  SELECT '20662' AS postal_code, 'POST_OFFICE' AS type, 'Mapakanda' AS city_en
  UNION ALL
  SELECT '20664' AS postal_code, 'POST_OFFICE' AS type, 'Galaboda' AS city_en
  UNION ALL
  SELECT '20666' AS postal_code, 'POST_OFFICE' AS type, 'Weligampola' AS city_en
  UNION ALL
  SELECT '20676' AS postal_code, 'POST_OFFICE' AS type, 'Rambukpitiya' AS city_en
  UNION ALL
  SELECT '20702' AS postal_code, 'POST_OFFICE' AS type, 'Mailapitiya' AS city_en
  UNION ALL
  SELECT '20708' AS postal_code, 'POST_OFFICE' AS type, 'Unuwinna' AS city_en
  UNION ALL
  SELECT '20710' AS postal_code, 'POST_OFFICE' AS type, 'Hanguranketha' AS city_en
  UNION ALL
  SELECT '20712' AS postal_code, 'POST_OFFICE' AS type, 'Gonagantenna' AS city_en
  UNION ALL
  SELECT '20713' AS postal_code, 'POST_OFFICE' AS type, 'Adhikarigama' AS city_en
  UNION ALL
  SELECT '20714' AS postal_code, 'POST_OFFICE' AS type, 'Marymount Colony' AS city_en
  UNION ALL
  SELECT '20719' AS postal_code, 'POST_OFFICE' AS type, 'Unantenna' AS city_en
  UNION ALL
  SELECT '20722' AS postal_code, 'POST_OFFICE' AS type, 'Udawatta' AS city_en
  UNION ALL
  SELECT '20724' AS postal_code, 'POST_OFFICE' AS type, 'Illagolla' AS city_en
  UNION ALL
  SELECT '20730' AS postal_code, 'POST_OFFICE' AS type, 'Rikillagaskada' AS city_en
  UNION ALL
  SELECT '20732' AS postal_code, 'POST_OFFICE' AS type, 'Ekiriya' AS city_en
  UNION ALL
  SELECT '20734' AS postal_code, 'POST_OFFICE' AS type, 'Pallebowala' AS city_en
  UNION ALL
  SELECT '20735' AS postal_code, 'POST_OFFICE' AS type, 'Gannewa Udagama' AS city_en
  UNION ALL
  SELECT '20738' AS postal_code, 'POST_OFFICE' AS type, 'Karandagolla' AS city_en
  UNION ALL
  SELECT '20739' AS postal_code, 'POST_OFFICE' AS type, 'Dehipe' AS city_en
  UNION ALL
  SELECT '20800' AS postal_code, 'POST_OFFICE' AS type, 'Katugastota' AS city_en
  UNION ALL
  SELECT '20802' AS postal_code, 'POST_OFFICE' AS type, 'Udatalavinna' AS city_en
  UNION ALL
  SELECT '20810' AS postal_code, 'POST_OFFICE' AS type, 'Wattegama' AS city_en
  UNION ALL
  SELECT '20816' AS postal_code, 'POST_OFFICE' AS type, 'Doragamuwa' AS city_en
  UNION ALL
  SELECT '20818' AS postal_code, 'POST_OFFICE' AS type, 'Rathukohodigala' AS city_en
  UNION ALL
  SELECT '20822' AS postal_code, 'POST_OFFICE' AS type, 'Jambugahapitiya' AS city_en
  UNION ALL
  SELECT '20824' AS postal_code, 'POST_OFFICE' AS type, 'Dunuwila' AS city_en
  UNION ALL
  SELECT '20828' AS postal_code, 'POST_OFFICE' AS type, 'Makkanigama' AS city_en
  UNION ALL
  SELECT '20830' AS postal_code, 'POST_OFFICE' AS type, 'Panwila' AS city_en
  UNION ALL
  SELECT '20838' AS postal_code, 'POST_OFFICE' AS type, 'Tawalantenna' AS city_en
  UNION ALL
  SELECT '20840' AS postal_code, 'POST_OFFICE' AS type, 'Madulkele' AS city_en
  UNION ALL
  SELECT '20850' AS postal_code, 'POST_OFFICE' AS type, 'Akurana' AS city_en
  UNION ALL
  SELECT '20900' AS postal_code, 'POST_OFFICE' AS type, 'Teldeniya' AS city_en
  UNION ALL
  SELECT '20902' AS postal_code, 'POST_OFFICE' AS type, 'Kumbukkandura' AS city_en
  UNION ALL
  SELECT '20904' AS postal_code, 'POST_OFFICE' AS type, 'Senarathwala' AS city_en
  UNION ALL
  SELECT '20906' AS postal_code, 'POST_OFFICE' AS type, 'Putuhapuwa' AS city_en
  UNION ALL
  SELECT '20908' AS postal_code, 'POST_OFFICE' AS type, 'Werapitiya' AS city_en
  UNION ALL
  SELECT '20913' AS postal_code, 'POST_OFFICE' AS type, 'Sandasiri Dunuwila' AS city_en
  UNION ALL
  SELECT '20914' AS postal_code, 'POST_OFFICE' AS type, 'Wendaruwa' AS city_en
  UNION ALL
  SELECT '20915' AS postal_code, 'POST_OFFICE' AS type, 'Galabodawatta' AS city_en
  UNION ALL
  SELECT '20916' AS postal_code, 'POST_OFFICE' AS type, 'Udispattuwa' AS city_en
  UNION ALL
  SELECT '20921' AS postal_code, 'POST_OFFICE' AS type, 'Makuldeniya' AS city_en
  UNION ALL
  SELECT '20922' AS postal_code, 'POST_OFFICE' AS type, 'Rangala' AS city_en
  UNION ALL
  SELECT '20923' AS postal_code, 'POST_OFFICE' AS type, 'Mimure' AS city_en
  UNION ALL
  SELECT '20924' AS postal_code, 'POST_OFFICE' AS type, 'Kahataliyadda' AS city_en
  UNION ALL
  SELECT '20926' AS postal_code, 'POST_OFFICE' AS type, 'Kalugala' AS city_en
  UNION ALL
  SELECT '20928' AS postal_code, 'POST_OFFICE' AS type, 'Kobonilla' AS city_en
  UNION ALL
  SELECT '20932' AS postal_code, 'POST_OFFICE' AS type, 'Bopana' AS city_en
  UNION ALL
  SELECT '20934' AS postal_code, 'POST_OFFICE' AS type, 'Uduwahinna' AS city_en
  UNION ALL
  SELECT '20938' AS postal_code, 'POST_OFFICE' AS type, 'Madugalla' AS city_en
  UNION ALL
  SELECT '20940' AS postal_code, 'POST_OFFICE' AS type, 'Medamahanuwara' AS city_en
  UNION ALL
  SELECT '20945' AS postal_code, 'POST_OFFICE' AS type, 'Mahadoraliyadda' AS city_en
  UNION ALL
  SELECT '20948' AS postal_code, 'POST_OFFICE' AS type, 'Hunnasgiriya' AS city_en
  UNION ALL
  SELECT '20950' AS postal_code, 'POST_OFFICE' AS type, 'Udadumbara' AS city_en
  UNION ALL
  SELECT '20951' AS postal_code, 'POST_OFFICE' AS type, 'Poppitiya' AS city_en
  UNION ALL
  SELECT '20960' AS postal_code, 'POST_OFFICE' AS type, 'Hasalaka' AS city_en
  UNION ALL
  SELECT '20965' AS postal_code, 'POST_OFFICE' AS type, 'Ulpothagama' AS city_en
  UNION ALL
  SELECT '20966' AS postal_code, 'POST_OFFICE' AS type, 'Batumulla' AS city_en
  UNION ALL
  SELECT '20967' AS postal_code, 'POST_OFFICE' AS type, 'Barawardhanaoya' AS city_en
  UNION ALL
  SELECT '20971' AS postal_code, 'POST_OFFICE' AS type, 'Kolongoda' AS city_en
  UNION ALL
  SELECT '20982' AS postal_code, 'POST_OFFICE' AS type, 'Weragantota' AS city_en
  UNION ALL
  SELECT '20983' AS postal_code, 'POST_OFFICE' AS type, 'Minipe' AS city_en
  UNION ALL
  SELECT '20984' AS postal_code, 'POST_OFFICE' AS type, 'Handaganawa' AS city_en
  UNION ALL
  SELECT '20986' AS postal_code, 'POST_OFFICE' AS type, 'Ambagahapelassa' AS city_en
  UNION ALL
  SELECT '20990' AS postal_code, 'POST_OFFICE' AS type, 'Rantembe' AS city_en
  UNION ALL
  SELECT '21000' AS postal_code, 'POST_OFFICE' AS type, 'Matale' AS city_en
  UNION ALL
  SELECT '21004' AS postal_code, 'POST_OFFICE' AS type, 'Alwatta' AS city_en
  UNION ALL
  SELECT '21006' AS postal_code, 'POST_OFFICE' AS type, 'Udatenna' AS city_en
  UNION ALL
  SELECT '21008' AS postal_code, 'POST_OFFICE' AS type, 'Leliambe' AS city_en
  UNION ALL
  SELECT '21009' AS postal_code, 'POST_OFFICE' AS type, 'Wehigala' AS city_en
  UNION ALL
  SELECT '21012' AS postal_code, 'POST_OFFICE' AS type, 'Elkaduwa' AS city_en
  UNION ALL
  SELECT '21014' AS postal_code, 'POST_OFFICE' AS type, 'Karagahahinna' AS city_en
  UNION ALL
  SELECT '21016' AS postal_code, 'POST_OFFICE' AS type, 'Katudeniya' AS city_en
  UNION ALL
  SELECT '21020' AS postal_code, 'POST_OFFICE' AS type, 'Ovilikanda' AS city_en
  UNION ALL
  SELECT '21032' AS postal_code, 'POST_OFFICE' AS type, 'Dankanda' AS city_en
  UNION ALL
  SELECT '21042' AS postal_code, 'POST_OFFICE' AS type, 'Kiwula' AS city_en
  UNION ALL
  SELECT '21044' AS postal_code, 'POST_OFFICE' AS type, 'Muwandeniya' AS city_en
  UNION ALL
  SELECT '21046' AS postal_code, 'POST_OFFICE' AS type, 'Dunkolawatte' AS city_en
  UNION ALL
  SELECT '21048' AS postal_code, 'POST_OFFICE' AS type, 'Walawela' AS city_en
  UNION ALL
  SELECT '21051' AS postal_code, 'POST_OFFICE' AS type, 'Udasgiriya' AS city_en
  UNION ALL
  SELECT '21054' AS postal_code, 'POST_OFFICE' AS type, 'Dullewa' AS city_en
  UNION ALL
  SELECT '21055' AS postal_code, 'POST_OFFICE' AS type, 'Melpitiya' AS city_en
  UNION ALL
  SELECT '21056' AS postal_code, 'POST_OFFICE' AS type, 'Yatawatta' AS city_en
  UNION ALL
  SELECT '21058' AS postal_code, 'POST_OFFICE' AS type, 'Selagama' AS city_en
  UNION ALL
  SELECT '21062' AS postal_code, 'POST_OFFICE' AS type, 'Metihakka' AS city_en
  UNION ALL
  SELECT '21064' AS postal_code, 'POST_OFFICE' AS type, 'Imbulgolla' AS city_en
  UNION ALL
  SELECT '21066' AS postal_code, 'POST_OFFICE' AS type, 'Kaikawala' AS city_en
  UNION ALL
  SELECT '21068' AS postal_code, 'POST_OFFICE' AS type, 'Gammaduwa' AS city_en
  UNION ALL
  SELECT '21070' AS postal_code, 'POST_OFFICE' AS type, 'Palapathwala' AS city_en
  UNION ALL
  SELECT '21072' AS postal_code, 'POST_OFFICE' AS type, 'Kavudupelella' AS city_en
  UNION ALL
  SELECT '21074' AS postal_code, 'POST_OFFICE' AS type, 'Madawala Ulpotha' AS city_en
  UNION ALL
  SELECT '21076' AS postal_code, 'POST_OFFICE' AS type, 'Opalgala' AS city_en
  UNION ALL
  SELECT '21077' AS postal_code, 'POST_OFFICE' AS type, 'Andawala Lihinipitiya' AS city_en
  UNION ALL
  SELECT '21082' AS postal_code, 'POST_OFFICE' AS type, 'Nalanda' AS city_en
  UNION ALL
  SELECT '21090' AS postal_code, 'POST_OFFICE' AS type, 'Naula' AS city_en
  UNION ALL
  SELECT '21094' AS postal_code, 'POST_OFFICE' AS type, 'Lenadora' AS city_en
  UNION ALL
  SELECT '21100' AS postal_code, 'POST_OFFICE' AS type, 'Dambulla' AS city_en
  UNION ALL
  SELECT '21105' AS postal_code, 'POST_OFFICE' AS type, 'Pelwehera' AS city_en
  UNION ALL
  SELECT '21106' AS postal_code, 'POST_OFFICE' AS type, 'Kandalama' AS city_en
  UNION ALL
  SELECT '21108' AS postal_code, 'POST_OFFICE' AS type, 'Erawula Junction' AS city_en
  UNION ALL
  SELECT '21112' AS postal_code, 'POST_OFFICE' AS type, 'Kalundewa' AS city_en
  UNION ALL
  SELECT '21114' AS postal_code, 'POST_OFFICE' AS type, 'Wewalawewa' AS city_en
  UNION ALL
  SELECT '21116' AS postal_code, 'POST_OFFICE' AS type, 'Talakiriyagama' AS city_en
  UNION ALL
  SELECT '21120' AS postal_code, 'POST_OFFICE' AS type, 'Sigiriya' AS city_en
  UNION ALL
  SELECT '21122' AS postal_code, 'POST_OFFICE' AS type, 'Kimbissa' AS city_en
  UNION ALL
  SELECT '21124' AS postal_code, 'POST_OFFICE' AS type, 'Inamaluwa' AS city_en
  UNION ALL
  SELECT '21140' AS postal_code, 'POST_OFFICE' AS type, 'Mahawela' AS city_en
  UNION ALL
  SELECT '21142' AS postal_code, 'POST_OFFICE' AS type, 'Akuramboda' AS city_en
  UNION ALL
  SELECT '21144' AS postal_code, 'POST_OFFICE' AS type, 'Mananwatta' AS city_en
  UNION ALL
  SELECT '21152' AS postal_code, 'POST_OFFICE' AS type, 'Pallepola' AS city_en
  UNION ALL
  SELECT '21154' AS postal_code, 'POST_OFFICE' AS type, 'Millawana' AS city_en
  UNION ALL
  SELECT '21156' AS postal_code, 'POST_OFFICE' AS type, 'Madipola' AS city_en
  UNION ALL
  SELECT '21160' AS postal_code, 'POST_OFFICE' AS type, 'Wasalakotte' AS city_en
  UNION ALL
  SELECT '21200' AS postal_code, 'POST_OFFICE' AS type, 'Galewela' AS city_en
  UNION ALL
  SELECT '21203' AS postal_code, 'POST_OFFICE' AS type, 'Nikawehera' AS city_en
  UNION ALL
  SELECT '21206' AS postal_code, 'POST_OFFICE' AS type, 'Dewahuwa' AS city_en
  UNION ALL
  SELECT '21212' AS postal_code, 'POST_OFFICE' AS type, 'Bambaragaswewa' AS city_en
  UNION ALL
  SELECT '21214' AS postal_code, 'POST_OFFICE' AS type, 'Beligamuwa' AS city_en
  UNION ALL
  SELECT '21300' AS postal_code, 'POST_OFFICE' AS type, 'Ukuwela' AS city_en
  UNION ALL
  SELECT '21400' AS postal_code, 'POST_OFFICE' AS type, 'Rattota' AS city_en
  UNION ALL
  SELECT '21402' AS postal_code, 'POST_OFFICE' AS type, 'Etanwala' AS city_en
  UNION ALL
  SELECT '21404' AS postal_code, 'POST_OFFICE' AS type, 'Gangala Puwakpitiya' AS city_en
  UNION ALL
  SELECT '21406' AS postal_code, 'POST_OFFICE' AS type, 'Illukkumbura' AS city_en
  UNION ALL
  SELECT '21408' AS postal_code, 'POST_OFFICE' AS type, 'Welangahawatte' AS city_en
  UNION ALL
  SELECT '21500' AS postal_code, 'POST_OFFICE' AS type, 'Kongahawela' AS city_en
  UNION ALL
  SELECT '21502' AS postal_code, 'POST_OFFICE' AS type, 'Pubbiliya' AS city_en
  UNION ALL
  SELECT '21504' AS postal_code, 'POST_OFFICE' AS type, 'Ambana' AS city_en
  UNION ALL
  SELECT '21506' AS postal_code, 'POST_OFFICE' AS type, 'Maoya' AS city_en
  UNION ALL
  SELECT '21512' AS postal_code, 'POST_OFFICE' AS type, 'Ataragallewa' AS city_en
  UNION ALL
  SELECT '21514' AS postal_code, 'POST_OFFICE' AS type, 'Hattota Amuna' AS city_en
  UNION ALL
  SELECT '21520' AS postal_code, 'POST_OFFICE' AS type, 'Laggala Pallegama' AS city_en
  UNION ALL
  SELECT '21524' AS postal_code, 'POST_OFFICE' AS type, 'Ranamuregama' AS city_en
  UNION ALL
  SELECT '21530' AS postal_code, 'POST_OFFICE' AS type, 'Wilgamuwa' AS city_en
  UNION ALL
  SELECT '21532' AS postal_code, 'POST_OFFICE' AS type, 'Perakanatta' AS city_en
  UNION ALL
  SELECT '21534' AS postal_code, 'POST_OFFICE' AS type, 'Nugagolla' AS city_en
  UNION ALL
  SELECT '21536' AS postal_code, 'POST_OFFICE' AS type, 'Handungamuwa' AS city_en
  UNION ALL
  SELECT '21538' AS postal_code, 'POST_OFFICE' AS type, 'Dunuwilapitiya' AS city_en
  UNION ALL
  SELECT '21552' AS postal_code, 'POST_OFFICE' AS type, 'Devagiriya' AS city_en
  UNION ALL
  SELECT '21554' AS postal_code, 'POST_OFFICE' AS type, 'Maraka' AS city_en
  UNION ALL
  SELECT '22000' AS postal_code, 'POST_OFFICE' AS type, 'Hatton' AS city_en
  UNION ALL
  SELECT '22002' AS postal_code, 'POST_OFFICE' AS type, 'Dunukedeniya' AS city_en
  UNION ALL
  SELECT '22008' AS postal_code, 'POST_OFFICE' AS type, 'Rozella' AS city_en
  UNION ALL
  SELECT '22010' AS postal_code, 'POST_OFFICE' AS type, 'Watawala' AS city_en
  UNION ALL
  SELECT '22012' AS postal_code, 'POST_OFFICE' AS type, 'Patana' AS city_en
  UNION ALL
  SELECT '22018' AS postal_code, 'POST_OFFICE' AS type, 'Wijayabahukanda' AS city_en
  UNION ALL
  SELECT '22021' AS postal_code, 'POST_OFFICE' AS type, 'Maldeniya' AS city_en
  UNION ALL
  SELECT '22024' AS postal_code, 'POST_OFFICE' AS type, 'Hedunuwewa' AS city_en
  UNION ALL
  SELECT '22032' AS postal_code, 'POST_OFFICE' AS type, 'Widulipura' AS city_en
  UNION ALL
  SELECT '22034' AS postal_code, 'POST_OFFICE' AS type, 'Lakshapana' AS city_en
  UNION ALL
  SELECT '22036' AS postal_code, 'POST_OFFICE' AS type, 'Morahenagama' AS city_en
  UNION ALL
  SELECT '22042' AS postal_code, 'POST_OFFICE' AS type, 'Kottellena' AS city_en
  UNION ALL
  SELECT '22044' AS postal_code, 'POST_OFFICE' AS type, 'Hangarapitiya' AS city_en
  UNION ALL
  SELECT '22046' AS postal_code, 'POST_OFFICE' AS type, 'Hitigegama' AS city_en
  UNION ALL
  SELECT '22050' AS postal_code, 'POST_OFFICE' AS type, 'Dikoya' AS city_en
  UNION ALL
  SELECT '22051' AS postal_code, 'POST_OFFICE' AS type, 'Puliyawaththa' AS city_en
  UNION ALL
  SELECT '22058' AS postal_code, 'POST_OFFICE' AS type, 'Norwood' AS city_en
  UNION ALL
  SELECT '22060' AS postal_code, 'POST_OFFICE' AS type, 'Bogawantalawa' AS city_en
  UNION ALL
  SELECT '22070' AS postal_code, 'POST_OFFICE' AS type, 'Maskeliya' AS city_en
  UNION ALL
  SELECT '22075' AS postal_code, 'POST_OFFICE' AS type, 'Nishshanka Uyana' AS city_en
  UNION ALL
  SELECT '22080' AS postal_code, 'POST_OFFICE' AS type, 'Kotagala' AS city_en
  UNION ALL
  SELECT '22090' AS postal_code, 'POST_OFFICE' AS type, 'Lindula' AS city_en
  UNION ALL
  SELECT '22094' AS postal_code, 'POST_OFFICE' AS type, 'Agarapathana' AS city_en
  UNION ALL
  SELECT '22095' AS postal_code, 'POST_OFFICE' AS type, 'Bopattalawa' AS city_en
  UNION ALL
  SELECT '22096' AS postal_code, 'POST_OFFICE' AS type, 'Dayagama Bazaar' AS city_en
  UNION ALL
  SELECT '22100' AS postal_code, 'POST_OFFICE' AS type, 'Talawakele' AS city_en
  UNION ALL
  SELECT '22110' AS postal_code, 'POST_OFFICE' AS type, 'Watagoda' AS city_en
  UNION ALL
  SELECT '22120' AS postal_code, 'POST_OFFICE' AS type, 'Pundaluoya' AS city_en
  UNION ALL
  SELECT '22121' AS postal_code, 'POST_OFFICE' AS type, 'Kumbaloluwegama' AS city_en
  UNION ALL
  SELECT '22150' AS postal_code, 'POST_OFFICE' AS type, 'Nanuoya' AS city_en
  UNION ALL
  SELECT '22200' AS postal_code, 'POST_OFFICE' AS type, 'Nuwara Eliya' AS city_en
  UNION ALL
  SELECT '22202' AS postal_code, 'POST_OFFICE' AS type, 'Shanthipura' AS city_en
  UNION ALL
  SELECT '22207' AS postal_code, 'POST_OFFICE' AS type, 'Seetha Eliya' AS city_en
  UNION ALL
  SELECT '22208' AS postal_code, 'POST_OFFICE' AS type, 'Haggala' AS city_en
  UNION ALL
  SELECT '22212' AS postal_code, 'POST_OFFICE' AS type, 'Ruwaneliya' AS city_en
  UNION ALL
  SELECT '22214' AS postal_code, 'POST_OFFICE' AS type, 'Mipilimana' AS city_en
  UNION ALL
  SELECT '22216' AS postal_code, 'POST_OFFICE' AS type, 'Ambewela' AS city_en
  UNION ALL
  SELECT '22220' AS postal_code, 'POST_OFFICE' AS type, 'Kandapola' AS city_en
  UNION ALL
  SELECT '22226' AS postal_code, 'POST_OFFICE' AS type, 'Gonakele' AS city_en
  UNION ALL
  SELECT '22240' AS postal_code, 'POST_OFFICE' AS type, 'Halgranoya' AS city_en
  UNION ALL
  SELECT '22245' AS postal_code, 'POST_OFFICE' AS type, 'Rupaha' AS city_en
  UNION ALL
  SELECT '22246' AS postal_code, 'POST_OFFICE' AS type, 'Kumbukwela' AS city_en
  UNION ALL
  SELECT '22250' AS postal_code, 'POST_OFFICE' AS type, 'Udapussellawa' AS city_en
  UNION ALL
  SELECT '22252' AS postal_code, 'POST_OFFICE' AS type, 'Kurupanawela' AS city_en
  UNION ALL
  SELECT '22254' AS postal_code, 'POST_OFFICE' AS type, 'Mipanawa' AS city_en
  UNION ALL
  SELECT '22256' AS postal_code, 'POST_OFFICE' AS type, 'Madulla' AS city_en
  UNION ALL
  SELECT '22262' AS postal_code, 'POST_OFFICE' AS type, 'Harasbedda' AS city_en
  UNION ALL
  SELECT '22270' AS postal_code, 'POST_OFFICE' AS type, 'Walapane' AS city_en
  UNION ALL
  SELECT '22272' AS postal_code, 'POST_OFFICE' AS type, 'Kumbalgamuwa' AS city_en
  UNION ALL
  SELECT '22274' AS postal_code, 'POST_OFFICE' AS type, 'Keerthi Bandarapura' AS city_en
  UNION ALL
  SELECT '22280' AS postal_code, 'POST_OFFICE' AS type, 'Nildandahinna' AS city_en
  UNION ALL
  SELECT '22282' AS postal_code, 'POST_OFFICE' AS type, 'Kalaganwatta' AS city_en
  UNION ALL
  SELECT '22284' AS postal_code, 'POST_OFFICE' AS type, 'Ambanella' AS city_en
  UNION ALL
  SELECT '22285' AS postal_code, 'POST_OFFICE' AS type, 'Udamadura' AS city_en
  UNION ALL
  SELECT '22287' AS postal_code, 'POST_OFFICE' AS type, 'Teripeha' AS city_en
  UNION ALL
  SELECT '22560' AS postal_code, 'POST_OFFICE' AS type, 'Kotmale' AS city_en
  UNION ALL
  SELECT '22566' AS postal_code, 'POST_OFFICE' AS type, 'Maswela' AS city_en
  UNION ALL
  SELECT '22567' AS postal_code, 'POST_OFFICE' AS type, 'Doragala' AS city_en
  UNION ALL
  SELECT '22568' AS postal_code, 'POST_OFFICE' AS type, 'Nayapana Colony' AS city_en
  UNION ALL
  SELECT '22588' AS postal_code, 'POST_OFFICE' AS type, 'Katukitula' AS city_en
  UNION ALL
  SELECT '22590' AS postal_code, 'POST_OFFICE' AS type, 'Ramboda' AS city_en
  UNION ALL
  SELECT '22592' AS postal_code, 'POST_OFFICE' AS type, 'Labukele' AS city_en
  UNION ALL
  SELECT '22660' AS postal_code, 'POST_OFFICE' AS type, 'Ketaboola' AS city_en
  UNION ALL
  SELECT '22668' AS postal_code, 'POST_OFFICE' AS type, 'Hapugastalawa' AS city_en
  UNION ALL
  SELECT '22669' AS postal_code, 'POST_OFFICE' AS type, 'Harangalagama' AS city_en
  UNION ALL
  SELECT '22670' AS postal_code, 'POST_OFFICE' AS type, 'Nawathispane' AS city_en
  UNION ALL
  SELECT '22672' AS postal_code, 'POST_OFFICE' AS type, 'Rojarsangama' AS city_en
  UNION ALL
  SELECT '22678' AS postal_code, 'POST_OFFICE' AS type, 'Ambagamuwa Udabulathgama' AS city_en
  UNION ALL
  SELECT '22680' AS postal_code, 'POST_OFFICE' AS type, 'Ginigathhena' AS city_en
  UNION ALL
  SELECT '22682' AS postal_code, 'POST_OFFICE' AS type, 'Pitawala' AS city_en
  UNION ALL
  SELECT '22683' AS postal_code, 'POST_OFFICE' AS type, 'Hebbekanda' AS city_en
  UNION ALL
  SELECT '22684' AS postal_code, 'POST_OFFICE' AS type, 'Kelanigama' AS city_en
  UNION ALL
  SELECT '22686' AS postal_code, 'POST_OFFICE' AS type, 'Ambatalawa' AS city_en
  UNION ALL
  SELECT '22688' AS postal_code, 'POST_OFFICE' AS type, 'Kalaweldeniya' AS city_en
  UNION ALL
  SELECT '22742' AS postal_code, 'POST_OFFICE' AS type, 'Elamulla' AS city_en
  UNION ALL
  SELECT '22744' AS postal_code, 'POST_OFFICE' AS type, 'Mandaram Nuwara' AS city_en
  UNION ALL
  SELECT '22748' AS postal_code, 'POST_OFFICE' AS type, 'Maturata' AS city_en
  UNION ALL
  SELECT '22750' AS postal_code, 'POST_OFFICE' AS type, 'Padiyapelella' AS city_en
  UNION ALL
  SELECT '22752' AS postal_code, 'POST_OFFICE' AS type, 'Munwatta' AS city_en
  UNION ALL
  SELECT '30000' AS postal_code, 'POST_OFFICE' AS type, 'Batticaloa' AS city_en
  UNION ALL
  SELECT '30016' AS postal_code, 'POST_OFFICE' AS type, 'Kannankudah' AS city_en
  UNION ALL
  SELECT '30018' AS postal_code, 'POST_OFFICE' AS type, 'Navatkadu' AS city_en
  UNION ALL
  SELECT '30022' AS postal_code, 'POST_OFFICE' AS type, 'Pillaiyaradi' AS city_en
  UNION ALL
  SELECT '30024' AS postal_code, 'POST_OFFICE' AS type, 'Thannamunai' AS city_en
  UNION ALL
  SELECT '30100' AS postal_code, 'POST_OFFICE' AS type, 'Kattankudi' AS city_en
  UNION ALL
  SELECT '30150' AS postal_code, 'POST_OFFICE' AS type, 'Arayampathy' AS city_en
  UNION ALL
  SELECT '30158' AS postal_code, 'POST_OFFICE' AS type, 'Puthukudiyiruppu' AS city_en
  UNION ALL
  SELECT '30159' AS postal_code, 'POST_OFFICE' AS type, 'Kirankulam' AS city_en
  UNION ALL
  SELECT '30160' AS postal_code, 'POST_OFFICE' AS type, 'Kokkaddichcholai' AS city_en
  UNION ALL
  SELECT '30162' AS postal_code, 'POST_OFFICE' AS type, 'Ampilanthurai' AS city_en
  UNION ALL
  SELECT '30192' AS postal_code, 'POST_OFFICE' AS type, 'Kurukkalmadam' AS city_en
  UNION ALL
  SELECT '30194' AS postal_code, 'POST_OFFICE' AS type, 'Cheddipalayam' AS city_en
  UNION ALL
  SELECT '30196' AS postal_code, 'POST_OFFICE' AS type, 'Thettativu' AS city_en
  UNION ALL
  SELECT '30197' AS postal_code, 'POST_OFFICE' AS type, 'Kaluthavalai' AS city_en
  UNION ALL
  SELECT '30200' AS postal_code, 'POST_OFFICE' AS type, 'Kaluwanchikudi' AS city_en
  UNION ALL
  SELECT '30204' AS postal_code, 'POST_OFFICE' AS type, 'Vellavely' AS city_en
  UNION ALL
  SELECT '30206' AS postal_code, 'POST_OFFICE' AS type, 'Bakiella' AS city_en
  UNION ALL
  SELECT '30220' AS postal_code, 'POST_OFFICE' AS type, 'Mandur' AS city_en
  UNION ALL
  SELECT '30230' AS postal_code, 'POST_OFFICE' AS type, 'Periyaporativu' AS city_en
  UNION ALL
  SELECT '30234' AS postal_code, 'POST_OFFICE' AS type, 'Thirupalugamam' AS city_en
  UNION ALL
  SELECT '30236' AS postal_code, 'POST_OFFICE' AS type, 'Thikkodai' AS city_en
  UNION ALL
  SELECT '30238' AS postal_code, 'POST_OFFICE' AS type, 'Navagirinagar' AS city_en
  UNION ALL
  SELECT '30249' AS postal_code, 'POST_OFFICE' AS type, 'Koddaikallar' AS city_en
  UNION ALL
  SELECT '30250' AS postal_code, 'POST_OFFICE' AS type, 'Kallar' AS city_en
  UNION ALL
  SELECT '30254' AS postal_code, 'POST_OFFICE' AS type, 'Thuraineelavanai' AS city_en
  UNION ALL
  SELECT '30300' AS postal_code, 'POST_OFFICE' AS type, 'Eravur' AS city_en
  UNION ALL
  SELECT '30350' AS postal_code, 'POST_OFFICE' AS type, 'Chenkaladi' AS city_en
  UNION ALL
  SELECT '30352' AS postal_code, 'POST_OFFICE' AS type, 'Pankudavely' AS city_en
  UNION ALL
  SELECT '30354' AS postal_code, 'POST_OFFICE' AS type, 'Karadiyanaru' AS city_en
  UNION ALL
  SELECT '30358' AS postal_code, 'POST_OFFICE' AS type, 'Periyapullumalai' AS city_en
  UNION ALL
  SELECT '30362' AS postal_code, 'POST_OFFICE' AS type, 'Ayithiyamalai' AS city_en
  UNION ALL
  SELECT '30364' AS postal_code, 'POST_OFFICE' AS type, 'Unnichchai' AS city_en
  UNION ALL
  SELECT '30372' AS postal_code, 'POST_OFFICE' AS type, 'Kaluwankerny' AS city_en
  UNION ALL
  SELECT '30376' AS postal_code, 'POST_OFFICE' AS type, 'Vantharumoolai' AS city_en
  UNION ALL
  SELECT '30378' AS postal_code, 'POST_OFFICE' AS type, 'Sittandy' AS city_en
  UNION ALL
  SELECT '30392' AS postal_code, 'POST_OFFICE' AS type, 'Morakottanchenai' AS city_en
  UNION ALL
  SELECT '30394' AS postal_code, 'POST_OFFICE' AS type, 'Kiran' AS city_en
  UNION ALL
  SELECT '30400' AS postal_code, 'POST_OFFICE' AS type, 'Valaichenai' AS city_en
  UNION ALL
  SELECT '30410' AS postal_code, 'POST_OFFICE' AS type, 'Kalkudah' AS city_en
  UNION ALL
  SELECT '30420' AS postal_code, 'POST_OFFICE' AS type, 'Oddamavadi' AS city_en
  UNION ALL
  SELECT '30424' AS postal_code, 'POST_OFFICE' AS type, 'Vakaneri' AS city_en
  UNION ALL
  SELECT '30426' AS postal_code, 'POST_OFFICE' AS type, 'Miravodai' AS city_en
  UNION ALL
  SELECT '30428' AS postal_code, 'POST_OFFICE' AS type, 'Punanai' AS city_en
  UNION ALL
  SELECT '30442' AS postal_code, 'POST_OFFICE' AS type, 'Mankerni' AS city_en
  UNION ALL
  SELECT '30444' AS postal_code, 'POST_OFFICE' AS type, 'Panichankerni' AS city_en
  UNION ALL
  SELECT '30450' AS postal_code, 'POST_OFFICE' AS type, 'Vakarai' AS city_en
  UNION ALL
  SELECT '30456' AS postal_code, 'POST_OFFICE' AS type, 'Kathiraveli' AS city_en
  UNION ALL
  SELECT '31000' AS postal_code, 'POST_OFFICE' AS type, 'Trincomalee' AS city_en
  UNION ALL
  SELECT '31006' AS postal_code, 'POST_OFFICE' AS type, 'Sampaltivu' AS city_en
  UNION ALL
  SELECT '31010' AS postal_code, 'POST_OFFICE' AS type, 'Nilaveli' AS city_en
  UNION ALL
  SELECT '31012' AS postal_code, 'POST_OFFICE' AS type, 'Kumburupiddy' AS city_en
  UNION ALL
  SELECT '31014' AS postal_code, 'POST_OFFICE' AS type, 'Kuchchaveli' AS city_en
  UNION ALL
  SELECT '31016' AS postal_code, 'POST_OFFICE' AS type, 'Tiriyai' AS city_en
  UNION ALL
  SELECT '31017' AS postal_code, 'POST_OFFICE' AS type, 'Pulmoddai' AS city_en
  UNION ALL
  SELECT '31019' AS postal_code, 'POST_OFFICE' AS type, 'Tennamaravady' AS city_en
  UNION ALL
  SELECT '31026' AS postal_code, 'POST_OFFICE' AS type, 'Gomarankadawala' AS city_en
  UNION ALL
  SELECT '31028' AS postal_code, 'POST_OFFICE' AS type, 'Bakmeegama' AS city_en
  UNION ALL
  SELECT '31032' AS postal_code, 'POST_OFFICE' AS type, 'Kanniya' AS city_en
  UNION ALL
  SELECT '31034' AS postal_code, 'POST_OFFICE' AS type, 'Pankulam' AS city_en
  UNION ALL
  SELECT '31036' AS postal_code, 'POST_OFFICE' AS type, 'Mahadivulwewa' AS city_en
  UNION ALL
  SELECT '31038' AS postal_code, 'POST_OFFICE' AS type, 'Rotawewa' AS city_en
  UNION ALL
  SELECT '31046' AS postal_code, 'POST_OFFICE' AS type, 'Tampalakamam' AS city_en
  UNION ALL
  SELECT '31050' AS postal_code, 'POST_OFFICE' AS type, 'Chinabay' AS city_en
  UNION ALL
  SELECT '31053' AS postal_code, 'POST_OFFICE' AS type, 'Vellamanal' AS city_en
  UNION ALL
  SELECT '31055' AS postal_code, 'POST_OFFICE' AS type, 'Kapalthurai' AS city_en
  UNION ALL
  SELECT '31100' AS postal_code, 'POST_OFFICE' AS type, 'Kinniya' AS city_en
  UNION ALL
  SELECT '31106' AS postal_code, 'POST_OFFICE' AS type, 'Maharugiramam' AS city_en
  UNION ALL
  SELECT '31112' AS postal_code, 'POST_OFFICE' AS type, 'Kurinchakerny' AS city_en
  UNION ALL
  SELECT '31200' AS postal_code, 'POST_OFFICE' AS type, 'Mutur' AS city_en
  UNION ALL
  SELECT '31212' AS postal_code, 'POST_OFFICE' AS type, 'Kaddaiparichchan' AS city_en
  UNION ALL
  SELECT '31216' AS postal_code, 'POST_OFFICE' AS type, 'Sampoor' AS city_en
  UNION ALL
  SELECT '31220' AS postal_code, 'POST_OFFICE' AS type, 'Kiliveddy' AS city_en
  UNION ALL
  SELECT '31222' AS postal_code, 'POST_OFFICE' AS type, 'Somapura' AS city_en
  UNION ALL
  SELECT '31224' AS postal_code, 'POST_OFFICE' AS type, 'Mallikativu' AS city_en
  UNION ALL
  SELECT '31226' AS postal_code, 'POST_OFFICE' AS type, 'Dehiwatte' AS city_en
  UNION ALL
  SELECT '31228' AS postal_code, 'POST_OFFICE' AS type, 'Neelapola' AS city_en
  UNION ALL
  SELECT '31232' AS postal_code, 'POST_OFFICE' AS type, 'Serunuwara' AS city_en
  UNION ALL
  SELECT '31234' AS postal_code, 'POST_OFFICE' AS type, 'Lankapatuna' AS city_en
  UNION ALL
  SELECT '31236' AS postal_code, 'POST_OFFICE' AS type, 'Ichchilampattai' AS city_en
  UNION ALL
  SELECT '31238' AS postal_code, 'POST_OFFICE' AS type, 'Mawadichchenai' AS city_en
  UNION ALL
  SELECT '31250' AS postal_code, 'POST_OFFICE' AS type, 'Toppur' AS city_en
  UNION ALL
  SELECT '31260' AS postal_code, 'POST_OFFICE' AS type, 'Seruwila' AS city_en
  UNION ALL
  SELECT '31300' AS postal_code, 'POST_OFFICE' AS type, 'Kantale' AS city_en
  UNION ALL
  SELECT '31304' AS postal_code, 'POST_OFFICE' AS type, 'Agbopura' AS city_en
  UNION ALL
  SELECT '31306' AS postal_code, 'POST_OFFICE' AS type, 'Kantale Sugar Factory' AS city_en
  UNION ALL
  SELECT '31307' AS postal_code, 'POST_OFFICE' AS type, 'Sooriyapura' AS city_en
  UNION ALL
  SELECT '31308' AS postal_code, 'POST_OFFICE' AS type, 'Wanela' AS city_en
  UNION ALL
  SELECT '31312' AS postal_code, 'POST_OFFICE' AS type, 'Mullipothana' AS city_en
  UNION ALL
  SELECT '31314' AS postal_code, 'POST_OFFICE' AS type, 'Sirajnagar' AS city_en
  UNION ALL
  SELECT '31318' AS postal_code, 'POST_OFFICE' AS type, 'Galmetiyawa' AS city_en
  UNION ALL
  SELECT '32000' AS postal_code, 'POST_OFFICE' AS type, 'Ampara' AS city_en
  UNION ALL
  SELECT '32006' AS postal_code, 'POST_OFFICE' AS type, 'Deegawapiya' AS city_en
  UNION ALL
  SELECT '32008' AS postal_code, 'POST_OFFICE' AS type, 'Digamadulla Weeragoda' AS city_en
  UNION ALL
  SELECT '32010' AS postal_code, 'POST_OFFICE' AS type, 'Hingurana' AS city_en
  UNION ALL
  SELECT '32012' AS postal_code, 'POST_OFFICE' AS type, 'Moragahapallama' AS city_en
  UNION ALL
  SELECT '32014' AS postal_code, 'POST_OFFICE' AS type, 'Damana' AS city_en
  UNION ALL
  SELECT '32016' AS postal_code, 'POST_OFFICE' AS type, 'Madawalalanda' AS city_en
  UNION ALL
  SELECT '32018' AS postal_code, 'POST_OFFICE' AS type, 'Mahanagapura' AS city_en
  UNION ALL
  SELECT '32022' AS postal_code, 'POST_OFFICE' AS type, 'Pannalagama' AS city_en
  UNION ALL
  SELECT '32024' AS postal_code, 'POST_OFFICE' AS type, 'Bakmitiyawa' AS city_en
  UNION ALL
  SELECT '32031' AS postal_code, 'POST_OFFICE' AS type, 'Paragahakele' AS city_en
  UNION ALL
  SELECT '32032' AS postal_code, 'POST_OFFICE' AS type, 'Polwaga Janapadaya' AS city_en
  UNION ALL
  SELECT '32034' AS postal_code, 'POST_OFFICE' AS type, 'Pahalalanda' AS city_en
  UNION ALL
  SELECT '32035' AS postal_code, 'POST_OFFICE' AS type, 'Koknahara' AS city_en
  UNION ALL
  SELECT '32037' AS postal_code, 'POST_OFFICE' AS type, 'Namaloya' AS city_en
  UNION ALL
  SELECT '32038' AS postal_code, 'POST_OFFICE' AS type, 'Devalahinda' AS city_en
  UNION ALL
  SELECT '32039' AS postal_code, 'POST_OFFICE' AS type, 'Wadinagala' AS city_en
  UNION ALL
  SELECT '32040' AS postal_code, 'POST_OFFICE' AS type, 'Inginiyagala' AS city_en
  UNION ALL
  SELECT '32042' AS postal_code, 'POST_OFFICE' AS type, 'Nelliyadda' AS city_en
  UNION ALL
  SELECT '32046' AS postal_code, 'POST_OFFICE' AS type, 'Dadayamtalawa' AS city_en
  UNION ALL
  SELECT '32048' AS postal_code, 'POST_OFFICE' AS type, 'Siyambalawewa' AS city_en
  UNION ALL
  SELECT '32050' AS postal_code, 'POST_OFFICE' AS type, 'Central Camp' AS city_en
  UNION ALL
  SELECT '32060' AS postal_code, 'POST_OFFICE' AS type, 'Uhana' AS city_en
  UNION ALL
  SELECT '32062' AS postal_code, 'POST_OFFICE' AS type, 'Weranketagoda' AS city_en
  UNION ALL
  SELECT '32064' AS postal_code, 'POST_OFFICE' AS type, 'Gonagolla' AS city_en
  UNION ALL
  SELECT '32066' AS postal_code, 'POST_OFFICE' AS type, 'Galapitagala' AS city_en
  UNION ALL
  SELECT '32068' AS postal_code, 'POST_OFFICE' AS type, 'Rajagalatenna' AS city_en
  UNION ALL
  SELECT '32069' AS postal_code, 'POST_OFFICE' AS type, 'Mangalagama' AS city_en
  UNION ALL
  SELECT '32070' AS postal_code, 'POST_OFFICE' AS type, 'Mahaoya' AS city_en
  UNION ALL
  SELECT '32072' AS postal_code, 'POST_OFFICE' AS type, 'Tempitiya' AS city_en
  UNION ALL
  SELECT '32073' AS postal_code, 'POST_OFFICE' AS type, 'Borapola' AS city_en
  UNION ALL
  SELECT '32074' AS postal_code, 'POST_OFFICE' AS type, 'Kekirihena' AS city_en
  UNION ALL
  SELECT '32100' AS postal_code, 'POST_OFFICE' AS type, 'Padiyatalawa' AS city_en
  UNION ALL
  SELECT '32101' AS postal_code, 'POST_OFFICE' AS type, 'Serankada' AS city_en
  UNION ALL
  SELECT '32102' AS postal_code, 'POST_OFFICE' AS type, 'Kolamanthalawa' AS city_en
  UNION ALL
  SELECT '32104' AS postal_code, 'POST_OFFICE' AS type, 'Dorakumbura' AS city_en
  UNION ALL
  SELECT '32120' AS postal_code, 'POST_OFFICE' AS type, 'Nawamedagama' AS city_en
  UNION ALL
  SELECT '32126' AS postal_code, 'POST_OFFICE' AS type, 'Damanewela' AS city_en
  UNION ALL
  SELECT '32150' AS postal_code, 'POST_OFFICE' AS type, 'Dehiattakandiya' AS city_en
  UNION ALL
  SELECT '32158' AS postal_code, 'POST_OFFICE' AS type, 'Mawanagama' AS city_en
  UNION ALL
  SELECT '32163' AS postal_code, 'POST_OFFICE' AS type, 'Mawanawela' AS city_en
  UNION ALL
  SELECT '32198' AS postal_code, 'POST_OFFICE' AS type, 'Malwatta' AS city_en
  UNION ALL
  SELECT '32200' AS postal_code, 'POST_OFFICE' AS type, 'Sammanthurai' AS city_en
  UNION ALL
  SELECT '32250' AS postal_code, 'POST_OFFICE' AS type, 'Karativu' AS city_en
  UNION ALL
  SELECT '32280' AS postal_code, 'POST_OFFICE' AS type, 'Sainthamaruthu' AS city_en
  UNION ALL
  SELECT '32300' AS postal_code, 'POST_OFFICE' AS type, 'Kalmunai' AS city_en
  UNION ALL
  SELECT '32306' AS postal_code, 'POST_OFFICE' AS type, 'Chavalakadai' AS city_en
  UNION ALL
  SELECT '32308' AS postal_code, 'POST_OFFICE' AS type, 'Navithanveli' AS city_en
  UNION ALL
  SELECT '32314' AS postal_code, 'POST_OFFICE' AS type, 'Marathamune' AS city_en
  UNION ALL
  SELECT '32316' AS postal_code, 'POST_OFFICE' AS type, 'Periyaneelavanai' AS city_en
  UNION ALL
  SELECT '32340' AS postal_code, 'POST_OFFICE' AS type, 'Nintavur' AS city_en
  UNION ALL
  SELECT '32350' AS postal_code, 'POST_OFFICE' AS type, 'Addalaichenai' AS city_en
  UNION ALL
  SELECT '32354' AS postal_code, 'POST_OFFICE' AS type, 'Palamunai' AS city_en
  UNION ALL
  SELECT '32360' AS postal_code, 'POST_OFFICE' AS type, 'Oluwil' AS city_en
  UNION ALL
  SELECT '32400' AS postal_code, 'POST_OFFICE' AS type, 'Akkarapattu' AS city_en
  UNION ALL
  SELECT '32405' AS postal_code, 'POST_OFFICE' AS type, 'Kannagipuram' AS city_en
  UNION ALL
  SELECT '32415' AS postal_code, 'POST_OFFICE' AS type, 'Thambiluvil' AS city_en
  UNION ALL
  SELECT '32417' AS postal_code, 'POST_OFFICE' AS type, 'Koralkalapu' AS city_en
  UNION ALL
  SELECT '32418' AS postal_code, 'POST_OFFICE' AS type, 'Komari' AS city_en
  UNION ALL
  SELECT '32420' AS postal_code, 'POST_OFFICE' AS type, 'Tirukkovil' AS city_en
  UNION ALL
  SELECT '32450' AS postal_code, 'POST_OFFICE' AS type, 'Irakkamam' AS city_en
  UNION ALL
  SELECT '32454' AS postal_code, 'POST_OFFICE' AS type, 'Wanagamuwa' AS city_en
  UNION ALL
  SELECT '32500' AS postal_code, 'POST_OFFICE' AS type, 'Pottuvil' AS city_en
  UNION ALL
  SELECT '32506' AS postal_code, 'POST_OFFICE' AS type, 'Pasarichchenai' AS city_en
  UNION ALL
  SELECT '32508' AS postal_code, 'POST_OFFICE' AS type, 'Panama' AS city_en
  UNION ALL
  SELECT '32512' AS postal_code, 'POST_OFFICE' AS type, 'Lahugala' AS city_en
  UNION ALL
  SELECT '32514' AS postal_code, 'POST_OFFICE' AS type, 'Hulannuge' AS city_en
  UNION ALL
  SELECT '40000' AS postal_code, 'POST_OFFICE' AS type, 'Jaffna' AS city_en
  UNION ALL
  SELECT '40045' AS postal_code, 'POST_OFFICE' AS type, 'Mandativu' AS city_en
  UNION ALL
  SELECT '40048' AS postal_code, 'POST_OFFICE' AS type, 'Allaipiddy' AS city_en
  UNION ALL
  SELECT '40060' AS postal_code, 'POST_OFFICE' AS type, 'Kokkuvil' AS city_en
  UNION ALL
  SELECT '40062' AS postal_code, 'POST_OFFICE' AS type, 'Kondavil' AS city_en
  UNION ALL
  SELECT '40075' AS postal_code, 'POST_OFFICE' AS type, 'Chunnakam' AS city_en
  UNION ALL
  SELECT '40080' AS postal_code, 'POST_OFFICE' AS type, 'Erlalai' AS city_en
  UNION ALL
  SELECT '40095' AS postal_code, 'POST_OFFICE' AS type, 'Inuvil' AS city_en
  UNION ALL
  SELECT '40098' AS postal_code, 'POST_OFFICE' AS type, 'Sandilipay' AS city_en
  UNION ALL
  SELECT '40100' AS postal_code, 'POST_OFFICE' AS type, 'Pandaterippu' AS city_en
  UNION ALL
  SELECT '40108' AS postal_code, 'POST_OFFICE' AS type, 'Ilavalai' AS city_en
  UNION ALL
  SELECT '40110' AS postal_code, 'POST_OFFICE' AS type, 'Mathagal' AS city_en
  UNION ALL
  SELECT '40120' AS postal_code, 'POST_OFFICE' AS type, 'Alaveddy' AS city_en
  UNION ALL
  SELECT '40130' AS postal_code, 'POST_OFFICE' AS type, 'Tellipalai' AS city_en
  UNION ALL
  SELECT '40142' AS postal_code, 'POST_OFFICE' AS type, 'Mallakam' AS city_en
  UNION ALL
  SELECT '40145' AS postal_code, 'POST_OFFICE' AS type, 'Vasavilan' AS city_en
  UNION ALL
  SELECT '40150' AS postal_code, 'POST_OFFICE' AS type, 'Achchuvely' AS city_en
  UNION ALL
  SELECT '40158' AS postal_code, 'POST_OFFICE' AS type, 'Puttur' AS city_en
  UNION ALL
  SELECT '40165' AS postal_code, 'POST_OFFICE' AS type, 'Neervely' AS city_en
  UNION ALL
  SELECT '40170' AS postal_code, 'POST_OFFICE' AS type, 'Kopay' AS city_en
  UNION ALL
  SELECT '40180' AS postal_code, 'POST_OFFICE' AS type, 'Urumpirai' AS city_en
  UNION ALL
  SELECT '40190' AS postal_code, 'POST_OFFICE' AS type, 'Kankasanthurai' AS city_en
  UNION ALL
  SELECT '40198' AS postal_code, 'POST_OFFICE' AS type, 'Anaicoddai' AS city_en
  UNION ALL
  SELECT '40200' AS postal_code, 'POST_OFFICE' AS type, 'Manipay' AS city_en
  UNION ALL
  SELECT '40212' AS postal_code, 'POST_OFFICE' AS type, 'Chankanai' AS city_en
  UNION ALL
  SELECT '40220' AS postal_code, 'POST_OFFICE' AS type, 'Vaddukoddai' AS city_en
  UNION ALL
  SELECT '40229' AS postal_code, 'POST_OFFICE' AS type, 'Sithankerny' AS city_en
  UNION ALL
  SELECT '40230' AS postal_code, 'POST_OFFICE' AS type, 'Chulipuram' AS city_en
  UNION ALL
  SELECT '40250' AS postal_code, 'POST_OFFICE' AS type, 'Karainagar' AS city_en
  UNION ALL
  SELECT '40270' AS postal_code, 'POST_OFFICE' AS type, 'Kayts' AS city_en
  UNION ALL
  SELECT '40275' AS postal_code, 'POST_OFFICE' AS type, 'Elluvaithivu' AS city_en
  UNION ALL
  SELECT '40280' AS postal_code, 'POST_OFFICE' AS type, 'Analaithivu' AS city_en
  UNION ALL
  SELECT '40300' AS postal_code, 'POST_OFFICE' AS type, 'Velanai' AS city_en
  UNION ALL
  SELECT '40330' AS postal_code, 'POST_OFFICE' AS type, 'Punguduthivu' AS city_en
  UNION ALL
  SELECT '40360' AS postal_code, 'POST_OFFICE' AS type, 'Nainativu' AS city_en
  UNION ALL
  SELECT '40370' AS postal_code, 'POST_OFFICE' AS type, 'Delft' AS city_en
  UNION ALL
  SELECT '40378' AS postal_code, 'POST_OFFICE' AS type, 'Delft West' AS city_en
  UNION ALL
  SELECT '40400' AS postal_code, 'POST_OFFICE' AS type, 'Kaitadi' AS city_en
  UNION ALL
  SELECT '40500' AS postal_code, 'POST_OFFICE' AS type, 'Chavakachcheri' AS city_en
  UNION ALL
  SELECT '40510' AS postal_code, 'POST_OFFICE' AS type, 'Meesalai' AS city_en
  UNION ALL
  SELECT '40520' AS postal_code, 'POST_OFFICE' AS type, 'Karaveddi' AS city_en
  UNION ALL
  SELECT '40540' AS postal_code, 'POST_OFFICE' AS type, 'Velvetiturai' AS city_en
  UNION ALL
  SELECT '40545' AS postal_code, 'POST_OFFICE' AS type, 'Thondamanaru' AS city_en
  UNION ALL
  SELECT '40600' AS postal_code, 'POST_OFFICE' AS type, 'Point Pedro' AS city_en
  UNION ALL
  SELECT '40615' AS postal_code, 'POST_OFFICE' AS type, 'Puloly' AS city_en
  UNION ALL
  SELECT '40620' AS postal_code, 'POST_OFFICE' AS type, 'Kudathanai' AS city_en
  UNION ALL
  SELECT '40630' AS postal_code, 'POST_OFFICE' AS type, 'Nagarkovil' AS city_en
  UNION ALL
  SELECT '40635' AS postal_code, 'POST_OFFICE' AS type, 'Alvai' AS city_en
  UNION ALL
  SELECT '40640' AS postal_code, 'POST_OFFICE' AS type, 'Varany' AS city_en
  UNION ALL
  SELECT '40700' AS postal_code, 'POST_OFFICE' AS type, 'Kodikamam' AS city_en
  UNION ALL
  SELECT '40750' AS postal_code, 'POST_OFFICE' AS type, 'Mirusuvil' AS city_en
  UNION ALL
  SELECT '41000' AS postal_code, 'POST_OFFICE' AS type, 'Mannar' AS city_en
  UNION ALL
  SELECT '41010' AS postal_code, 'POST_OFFICE' AS type, 'Madu Church' AS city_en
  UNION ALL
  SELECT '41015' AS postal_code, 'POST_OFFICE' AS type, 'Palampiddy' AS city_en
  UNION ALL
  SELECT '41020' AS postal_code, 'POST_OFFICE' AS type, 'Madu Road' AS city_en
  UNION ALL
  SELECT '41025' AS postal_code, 'POST_OFFICE' AS type, 'Periyakunchukkulam' AS city_en
  UNION ALL
  SELECT '41030' AS postal_code, 'POST_OFFICE' AS type, 'Murunkan' AS city_en
  UNION ALL
  SELECT '41033' AS postal_code, 'POST_OFFICE' AS type, 'Nanattan' AS city_en
  UNION ALL
  SELECT '41045' AS postal_code, 'POST_OFFICE' AS type, 'P.P.Potkerny' AS city_en
  UNION ALL
  SELECT '41055' AS postal_code, 'POST_OFFICE' AS type, 'Marichchikaddi' AS city_en
  UNION ALL
  SELECT '41060' AS postal_code, 'POST_OFFICE' AS type, 'Arippu' AS city_en
  UNION ALL
  SELECT '41100' AS postal_code, 'POST_OFFICE' AS type, 'Vankalai' AS city_en
  UNION ALL
  SELECT '41110' AS postal_code, 'POST_OFFICE' AS type, 'Uylankulam' AS city_en
  UNION ALL
  SELECT '41120' AS postal_code, 'POST_OFFICE' AS type, 'Thruketheeswaram Kovil' AS city_en
  UNION ALL
  SELECT '41140' AS postal_code, 'POST_OFFICE' AS type, 'Chilavathurai' AS city_en
  UNION ALL
  SELECT '41150' AS postal_code, 'POST_OFFICE' AS type, 'Vaddakandal' AS city_en
  UNION ALL
  SELECT '41160' AS postal_code, 'POST_OFFICE' AS type, 'Adampan' AS city_en
  UNION ALL
  SELECT '41165' AS postal_code, 'POST_OFFICE' AS type, 'Vidaththaltivu' AS city_en
  UNION ALL
  SELECT '41170' AS postal_code, 'POST_OFFICE' AS type, 'Periyamadu' AS city_en
  UNION ALL
  SELECT '41175' AS postal_code, 'POST_OFFICE' AS type, 'Iluppaikadavai' AS city_en
  UNION ALL
  SELECT '41180' AS postal_code, 'POST_OFFICE' AS type, 'Aththimottai' AS city_en
  UNION ALL
  SELECT '41185' AS postal_code, 'POST_OFFICE' AS type, 'Vellankulam' AS city_en
  UNION ALL
  SELECT '41190' AS postal_code, 'POST_OFFICE' AS type, 'Tharapuram' AS city_en
  UNION ALL
  SELECT '41200' AS postal_code, 'POST_OFFICE' AS type, 'Erukkalampiddy' AS city_en
  UNION ALL
  SELECT '41210' AS postal_code, 'POST_OFFICE' AS type, 'Pesalai' AS city_en
  UNION ALL
  SELECT '41220' AS postal_code, 'POST_OFFICE' AS type, 'Talaimannar' AS city_en
  UNION ALL
  SELECT '42000' AS postal_code, 'POST_OFFICE' AS type, 'Mullaitivu' AS city_en
  UNION ALL
  SELECT '42005' AS postal_code, 'POST_OFFICE' AS type, 'Alampil' AS city_en
  UNION ALL
  SELECT '42010' AS postal_code, 'POST_OFFICE' AS type, 'Kokkuthoduvai' AS city_en
  UNION ALL
  SELECT '42020' AS postal_code, 'POST_OFFICE' AS type, 'Kokkilai' AS city_en
  UNION ALL
  SELECT '42025' AS postal_code, 'POST_OFFICE' AS type, 'Mullivaikkal' AS city_en
  UNION ALL
  SELECT '42100' AS postal_code, 'POST_OFFICE' AS type, 'Mulliyawalai' AS city_en
  UNION ALL
  SELECT '42200' AS postal_code, 'POST_OFFICE' AS type, 'Oddusuddan' AS city_en
  UNION ALL
  SELECT '42210' AS postal_code, 'POST_OFFICE' AS type, 'Muthayankaddakulam' AS city_en
  UNION ALL
  SELECT '42300' AS postal_code, 'POST_OFFICE' AS type, 'Mankulam' AS city_en
  UNION ALL
  SELECT '42303' AS postal_code, 'POST_OFFICE' AS type, 'Karipaddamurippu' AS city_en
  UNION ALL
  SELECT '42305' AS postal_code, 'POST_OFFICE' AS type, 'Vavunikulam' AS city_en
  UNION ALL
  SELECT '42308' AS postal_code, 'POST_OFFICE' AS type, 'Naddankandal' AS city_en
  UNION ALL
  SELECT '42315' AS postal_code, 'POST_OFFICE' AS type, 'Yogapuram' AS city_en
  UNION ALL
  SELECT '42320' AS postal_code, 'POST_OFFICE' AS type, 'Thunukkai' AS city_en
  UNION ALL
  SELECT '42330' AS postal_code, 'POST_OFFICE' AS type, 'Puthuvedduvan' AS city_en
  UNION ALL
  SELECT '42400' AS postal_code, 'POST_OFFICE' AS type, 'Kilinochchi' AS city_en
  UNION ALL
  SELECT '42405' AS postal_code, 'POST_OFFICE' AS type, 'Vaddakachchi' AS city_en
  UNION ALL
  SELECT '42408' AS postal_code, 'POST_OFFICE' AS type, 'Ramanathapuram' AS city_en
  UNION ALL
  SELECT '42415' AS postal_code, 'POST_OFFICE' AS type, 'Skandapuram' AS city_en
  UNION ALL
  SELECT '42420' AS postal_code, 'POST_OFFICE' AS type, 'Konavil' AS city_en
  UNION ALL
  SELECT '42425' AS postal_code, 'POST_OFFICE' AS type, 'Akkarayankulam' AS city_en
  UNION ALL
  SELECT '42430' AS postal_code, 'POST_OFFICE' AS type, 'Vannerikulam' AS city_en
  UNION ALL
  SELECT '42500' AS postal_code, 'POST_OFFICE' AS type, 'Paranthan' AS city_en
  UNION ALL
  SELECT '42502' AS postal_code, 'POST_OFFICE' AS type, 'Uruthirapuram' AS city_en
  UNION ALL
  SELECT '42505' AS postal_code, 'POST_OFFICE' AS type, 'Murasumoddai' AS city_en
  UNION ALL
  SELECT '42508' AS postal_code, 'POST_OFFICE' AS type, 'Kandavalai' AS city_en
  UNION ALL
  SELECT '42509' AS postal_code, 'POST_OFFICE' AS type, 'Puliyampokkanai' AS city_en
  UNION ALL
  SELECT '42512' AS postal_code, 'POST_OFFICE' AS type, 'Tharmapuram' AS city_en
  UNION ALL
  SELECT '42530' AS postal_code, 'POST_OFFICE' AS type, 'Puthukkudiyiruppu' AS city_en
  UNION ALL
  SELECT '42532' AS postal_code, 'POST_OFFICE' AS type, 'Udayarkaddu' AS city_en
  UNION ALL
  SELECT '42534' AS postal_code, 'POST_OFFICE' AS type, 'Visvamadukkulam' AS city_en
  UNION ALL
  SELECT '42550' AS postal_code, 'POST_OFFICE' AS type, 'Pallai' AS city_en
  UNION ALL
  SELECT '42556' AS postal_code, 'POST_OFFICE' AS type, 'Iyakachchi' AS city_en
  UNION ALL
  SELECT '42558' AS postal_code, 'POST_OFFICE' AS type, 'Thadduvankoddy' AS city_en
  UNION ALL
  SELECT '42563' AS postal_code, 'POST_OFFICE' AS type, 'Thalayady' AS city_en
  UNION ALL
  SELECT '42565' AS postal_code, 'POST_OFFICE' AS type, 'Aliyawalai' AS city_en
  UNION ALL
  SELECT '42570' AS postal_code, 'POST_OFFICE' AS type, 'Mulliyan' AS city_en
  UNION ALL
  SELECT '42580' AS postal_code, 'POST_OFFICE' AS type, 'Eluthumadduval' AS city_en
  UNION ALL
  SELECT '42600' AS postal_code, 'POST_OFFICE' AS type, 'Punakary' AS city_en
  UNION ALL
  SELECT '42606' AS postal_code, 'POST_OFFICE' AS type, 'Poonakary Nallur' AS city_en
  UNION ALL
  SELECT '42608' AS postal_code, 'POST_OFFICE' AS type, 'Kautharimunai' AS city_en
  UNION ALL
  SELECT '42615' AS postal_code, 'POST_OFFICE' AS type, 'Pallavarayankaddu' AS city_en
  UNION ALL
  SELECT '42618' AS postal_code, 'POST_OFFICE' AS type, 'Sivapuram' AS city_en
  UNION ALL
  SELECT '42620' AS postal_code, 'POST_OFFICE' AS type, 'Veravil' AS city_en
  UNION ALL
  SELECT '42625' AS postal_code, 'POST_OFFICE' AS type, 'Vinayagapuram' AS city_en
  UNION ALL
  SELECT '42630' AS postal_code, 'POST_OFFICE' AS type, 'Iranaitivu' AS city_en
  UNION ALL
  SELECT '43000' AS postal_code, 'POST_OFFICE' AS type, 'Vavuniya' AS city_en
  UNION ALL
  SELECT '43050' AS postal_code, 'POST_OFFICE' AS type, 'Omanthai' AS city_en
  UNION ALL
  SELECT '43055' AS postal_code, 'POST_OFFICE' AS type, 'Maraiyadithakulam' AS city_en
  UNION ALL
  SELECT '43060' AS postal_code, 'POST_OFFICE' AS type, 'Chemamadukkulam' AS city_en
  UNION ALL
  SELECT '43065' AS postal_code, 'POST_OFFICE' AS type, 'Palamoddai' AS city_en
  UNION ALL
  SELECT '43070' AS postal_code, 'POST_OFFICE' AS type, 'Puliyankulam' AS city_en
  UNION ALL
  SELECT '43072' AS postal_code, 'POST_OFFICE' AS type, 'Kanagarayankulam' AS city_en
  UNION ALL
  SELECT '43075' AS postal_code, 'POST_OFFICE' AS type, 'Nedunkerny' AS city_en
  UNION ALL
  SELECT '43078' AS postal_code, 'POST_OFFICE' AS type, 'Mamaduwa' AS city_en
  UNION ALL
  SELECT '43080' AS postal_code, 'POST_OFFICE' AS type, 'Mahakachchakodiya' AS city_en
  UNION ALL
  SELECT '43090' AS postal_code, 'POST_OFFICE' AS type, 'Sasthirikoolankulam' AS city_en
  UNION ALL
  SELECT '43095' AS postal_code, 'POST_OFFICE' AS type, 'Iranaiiluppaikulam' AS city_en
  UNION ALL
  SELECT '43100' AS postal_code, 'POST_OFFICE' AS type, 'Neriyakulam' AS city_en
  UNION ALL
  SELECT '43105' AS postal_code, 'POST_OFFICE' AS type, 'Pavatkulam' AS city_en
  UNION ALL
  SELECT '43110' AS postal_code, 'POST_OFFICE' AS type, 'Periyaulukkulam' AS city_en
  UNION ALL
  SELECT '43120' AS postal_code, 'POST_OFFICE' AS type, 'Cheddikulam' AS city_en
  UNION ALL
  SELECT '43123' AS postal_code, 'POST_OFFICE' AS type, 'Varikuddiyoor' AS city_en
  UNION ALL
  SELECT '43135' AS postal_code, 'POST_OFFICE' AS type, 'Pampaimadu' AS city_en
  UNION ALL
  SELECT '43140' AS postal_code, 'POST_OFFICE' AS type, 'Puvarasankulam' AS city_en
  UNION ALL
  SELECT '43145' AS postal_code, 'POST_OFFICE' AS type, 'Periyathampanai' AS city_en
  UNION ALL
  SELECT '43583' AS postal_code, 'POST_OFFICE' AS type, 'Bogaswewa' AS city_en
  UNION ALL
  SELECT '50000' AS postal_code, 'POST_OFFICE' AS type, 'Anuradhapura' AS city_en
  UNION ALL
  SELECT '50004' AS postal_code, 'POST_OFFICE' AS type, 'Perimiyankulama' AS city_en
  UNION ALL
  SELECT '50006' AS postal_code, 'POST_OFFICE' AS type, 'Galkadawala' AS city_en
  UNION ALL
  SELECT '50008' AS postal_code, 'POST_OFFICE' AS type, 'Saliyapura' AS city_en
  UNION ALL
  SELECT '50009' AS postal_code, 'POST_OFFICE' AS type, 'Paniyankadawala' AS city_en
  UNION ALL
  SELECT '50012' AS postal_code, 'POST_OFFICE' AS type, 'Viharapalugama' AS city_en
  UNION ALL
  SELECT '50014' AS postal_code, 'POST_OFFICE' AS type, 'Elayapattuwa' AS city_en
  UNION ALL
  SELECT '50016' AS postal_code, 'POST_OFFICE' AS type, 'Tantirimale' AS city_en
  UNION ALL
  SELECT '50020' AS postal_code, 'POST_OFFICE' AS type, 'Pemaduwa' AS city_en
  UNION ALL
  SELECT '50022' AS postal_code, 'POST_OFFICE' AS type, 'Mahawilachchiya' AS city_en
  UNION ALL
  SELECT '50027' AS postal_code, 'POST_OFFICE' AS type, 'Dewanampiyatissapura' AS city_en
  UNION ALL
  SELECT '50029' AS postal_code, 'POST_OFFICE' AS type, 'Pandulagama' AS city_en
  UNION ALL
  SELECT '50033' AS postal_code, 'POST_OFFICE' AS type, 'Anura Wijayapura' AS city_en
  UNION ALL
  SELECT '50036' AS postal_code, 'POST_OFFICE' AS type, 'Gnanikulam' AS city_en
  UNION ALL
  SELECT '50042' AS postal_code, 'POST_OFFICE' AS type, 'Shravasthipura' AS city_en
  UNION ALL
  SELECT '50044' AS postal_code, 'POST_OFFICE' AS type, 'Hidogama' AS city_en
  UNION ALL
  SELECT '50046' AS postal_code, 'POST_OFFICE' AS type, 'Nachchaduwa' AS city_en
  UNION ALL
  SELECT '50055' AS postal_code, 'POST_OFFICE' AS type, 'Parasangahawewa' AS city_en
  UNION ALL
  SELECT '50057' AS postal_code, 'POST_OFFICE' AS type, 'Gambirigaswewa' AS city_en
  UNION ALL
  SELECT '50062' AS postal_code, 'POST_OFFICE' AS type, 'Kurundankulama' AS city_en
  UNION ALL
  SELECT '50064' AS postal_code, 'POST_OFFICE' AS type, 'Galkulama' AS city_en
  UNION ALL
  SELECT '50067' AS postal_code, 'POST_OFFICE' AS type, 'Uttimaduwa' AS city_en
  UNION ALL
  SELECT '50068' AS postal_code, 'POST_OFFICE' AS type, 'Sivalakulama' AS city_en
  UNION ALL
  SELECT '50072' AS postal_code, 'POST_OFFICE' AS type, 'Tirappane' AS city_en
  UNION ALL
  SELECT '50080' AS postal_code, 'POST_OFFICE' AS type, 'Maradankadawala' AS city_en
  UNION ALL
  SELECT '50086' AS postal_code, 'POST_OFFICE' AS type, 'Walagambahuwa' AS city_en
  UNION ALL
  SELECT '50088' AS postal_code, 'POST_OFFICE' AS type, 'Labunoruwa' AS city_en
  UNION ALL
  SELECT '50100' AS postal_code, 'POST_OFFICE' AS type, 'Kekirawa' AS city_en
  UNION ALL
  SELECT '50104' AS postal_code, 'POST_OFFICE' AS type, 'Tammennawa' AS city_en
  UNION ALL
  SELECT '50110' AS postal_code, 'POST_OFFICE' AS type, 'Vijithapura' AS city_en
  UNION ALL
  SELECT '50111' AS postal_code, 'POST_OFFICE' AS type, 'Palagala' AS city_en
  UNION ALL
  SELECT '50112' AS postal_code, 'POST_OFFICE' AS type, 'Andiyagala' AS city_en
  UNION ALL
  SELECT '50120' AS postal_code, 'POST_OFFICE' AS type, 'Galkiriyagama' AS city_en
  UNION ALL
  SELECT '50122' AS postal_code, 'POST_OFFICE' AS type, 'Pubbogama' AS city_en
  UNION ALL
  SELECT '50124' AS postal_code, 'POST_OFFICE' AS type, 'Halmillewa Dambulla' AS city_en
  UNION ALL
  SELECT '50126' AS postal_code, 'POST_OFFICE' AS type, 'Maha Elagamuwa' AS city_en
  UNION ALL
  SELECT '50130' AS postal_code, 'POST_OFFICE' AS type, 'Madatugama' AS city_en
  UNION ALL
  SELECT '50132' AS postal_code, 'POST_OFFICE' AS type, 'Kitulhitiyawa' AS city_en
  UNION ALL
  SELECT '50142' AS postal_code, 'POST_OFFICE' AS type, 'Ganewalpola' AS city_en
  UNION ALL
  SELECT '50144' AS postal_code, 'POST_OFFICE' AS type, 'Palugaswewa' AS city_en
  UNION ALL
  SELECT '50150' AS postal_code, 'POST_OFFICE' AS type, 'Habarana' AS city_en
  UNION ALL
  SELECT '50169' AS postal_code, 'POST_OFFICE' AS type, 'Awukana' AS city_en
  UNION ALL
  SELECT '50170' AS postal_code, 'POST_OFFICE' AS type, 'Galnewa' AS city_en
  UNION ALL
  SELECT '50174' AS postal_code, 'POST_OFFICE' AS type, 'Kalankuttiya' AS city_en
  UNION ALL
  SELECT '50176' AS postal_code, 'POST_OFFICE' AS type, 'Hurigaswewa' AS city_en
  UNION ALL
  SELECT '50180' AS postal_code, 'POST_OFFICE' AS type, 'Negampaha' AS city_en
  UNION ALL
  SELECT '50182' AS postal_code, 'POST_OFFICE' AS type, 'Maneruwa' AS city_en
  UNION ALL
  SELECT '50184' AS postal_code, 'POST_OFFICE' AS type, 'Siyambalewa' AS city_en
  UNION ALL
  SELECT '50196' AS postal_code, 'POST_OFFICE' AS type, 'Mahabulankulama' AS city_en
  UNION ALL
  SELECT '50200' AS postal_code, 'POST_OFFICE' AS type, 'Nochchiyagama' AS city_en
  UNION ALL
  SELECT '50206' AS postal_code, 'POST_OFFICE' AS type, 'Pahala Halmillewa' AS city_en
  UNION ALL
  SELECT '50207' AS postal_code, 'POST_OFFICE' AS type, 'Udunuwara Colony' AS city_en
  UNION ALL
  SELECT '50210' AS postal_code, 'POST_OFFICE' AS type, 'Galadivulwewa' AS city_en
  UNION ALL
  SELECT '50212' AS postal_code, 'POST_OFFICE' AS type, 'Ranorawa' AS city_en
  UNION ALL
  SELECT '50214' AS postal_code, 'POST_OFFICE' AS type, 'Dunumadalawa' AS city_en
  UNION ALL
  SELECT '50220' AS postal_code, 'POST_OFFICE' AS type, 'Pahala Maragahawewa' AS city_en
  UNION ALL
  SELECT '50222' AS postal_code, 'POST_OFFICE' AS type, 'Horiwila' AS city_en
  UNION ALL
  SELECT '50224' AS postal_code, 'POST_OFFICE' AS type, 'Gemunupura' AS city_en
  UNION ALL
  SELECT '50226' AS postal_code, 'POST_OFFICE' AS type, 'Kalaoya' AS city_en
  UNION ALL
  SELECT '50230' AS postal_code, 'POST_OFFICE' AS type, 'Talawa' AS city_en
  UNION ALL
  SELECT '50232' AS postal_code, 'POST_OFFICE' AS type, 'Karagahawewa' AS city_en
  UNION ALL
  SELECT '50236' AS postal_code, 'POST_OFFICE' AS type, 'Malwanegama' AS city_en
  UNION ALL
  SELECT '50240' AS postal_code, 'POST_OFFICE' AS type, 'Tambuttegama' AS city_en
  UNION ALL
  SELECT '50242' AS postal_code, 'POST_OFFICE' AS type, 'Telhiriyawa' AS city_en
  UNION ALL
  SELECT '50244' AS postal_code, 'POST_OFFICE' AS type, 'Pahalagama' AS city_en
  UNION ALL
  SELECT '50246' AS postal_code, 'POST_OFFICE' AS type, 'Rajanganaya' AS city_en
  UNION ALL
  SELECT '50248' AS postal_code, 'POST_OFFICE' AS type, 'Angamuwa' AS city_en
  UNION ALL
  SELECT '50259' AS postal_code, 'POST_OFFICE' AS type, 'Kiralogama' AS city_en
  UNION ALL
  SELECT '50260' AS postal_code, 'POST_OFFICE' AS type, 'Eppawala' AS city_en
  UNION ALL
  SELECT '50261' AS postal_code, 'POST_OFFICE' AS type, 'Katiyawa' AS city_en
  UNION ALL
  SELECT '50262' AS postal_code, 'POST_OFFICE' AS type, 'Ihala Halmillewa' AS city_en
  UNION ALL
  SELECT '50263' AS postal_code, 'POST_OFFICE' AS type, 'Selweheragama' AS city_en
  UNION ALL
  SELECT '50265' AS postal_code, 'POST_OFFICE' AS type, 'Endagala' AS city_en
  UNION ALL
  SELECT '50270' AS postal_code, 'POST_OFFICE' AS type, 'Mahailluppallama' AS city_en
  UNION ALL
  SELECT '50280' AS postal_code, 'POST_OFFICE' AS type, 'Ipologama' AS city_en
  UNION ALL
  SELECT '50282' AS postal_code, 'POST_OFFICE' AS type, 'Kagama' AS city_en
  UNION ALL
  SELECT '50284' AS postal_code, 'POST_OFFICE' AS type, 'Senapura' AS city_en
  UNION ALL
  SELECT '50288' AS postal_code, 'POST_OFFICE' AS type, 'Kalakarambewa' AS city_en
  UNION ALL
  SELECT '50300' AS postal_code, 'POST_OFFICE' AS type, 'Mihintale' AS city_en
  UNION ALL
  SELECT '50304' AS postal_code, 'POST_OFFICE' AS type, 'Ihalagama' AS city_en
  UNION ALL
  SELECT '50306' AS postal_code, 'POST_OFFICE' AS type, 'Mahakanadarawa' AS city_en
  UNION ALL
  SELECT '50308' AS postal_code, 'POST_OFFICE' AS type, 'Maradankalla' AS city_en
  UNION ALL
  SELECT '50320' AS postal_code, 'POST_OFFICE' AS type, 'Kahatagasdigiliya' AS city_en
  UNION ALL
  SELECT '50324' AS postal_code, 'POST_OFFICE' AS type, 'Mukiriyawa' AS city_en
  UNION ALL
  SELECT '50326' AS postal_code, 'POST_OFFICE' AS type, 'Parakumpura' AS city_en
  UNION ALL
  SELECT '50327' AS postal_code, 'POST_OFFICE' AS type, 'Mahapothana' AS city_en
  UNION ALL
  SELECT '50328' AS postal_code, 'POST_OFFICE' AS type, 'Puliyankadawala' AS city_en
  UNION ALL
  SELECT '50329' AS postal_code, 'POST_OFFICE' AS type, 'Meeminnawala' AS city_en
  UNION ALL
  SELECT '50334' AS postal_code, 'POST_OFFICE' AS type, 'Megodawewa' AS city_en
  UNION ALL
  SELECT '50338' AS postal_code, 'POST_OFFICE' AS type, 'Padikaramaduwa' AS city_en
  UNION ALL
  SELECT '50339' AS postal_code, 'POST_OFFICE' AS type, 'Namalpura' AS city_en
  UNION ALL
  SELECT '50344' AS postal_code, 'POST_OFFICE' AS type, 'Muriyakadawala' AS city_en
  UNION ALL
  SELECT '50349' AS postal_code, 'POST_OFFICE' AS type, 'Morakewa' AS city_en
  UNION ALL
  SELECT '50350' AS postal_code, 'POST_OFFICE' AS type, 'Horawpatana' AS city_en
  UNION ALL
  SELECT '50354' AS postal_code, 'POST_OFFICE' AS type, 'Parangiyawadiya' AS city_en
  UNION ALL
  SELECT '50356' AS postal_code, 'POST_OFFICE' AS type, 'Dematawewa' AS city_en
  UNION ALL
  SELECT '50358' AS postal_code, 'POST_OFFICE' AS type, 'Welimuwapotana' AS city_en
  UNION ALL
  SELECT '50370' AS postal_code, 'POST_OFFICE' AS type, 'Kapugollewa' AS city_en
  UNION ALL
  SELECT '50380' AS postal_code, 'POST_OFFICE' AS type, 'Seeppukulam' AS city_en
  UNION ALL
  SELECT '50382' AS postal_code, 'POST_OFFICE' AS type, 'Upuldeniya' AS city_en
  UNION ALL
  SELECT '50384' AS postal_code, 'POST_OFFICE' AS type, 'Mailagaswewa' AS city_en
  UNION ALL
  SELECT '50386' AS postal_code, 'POST_OFFICE' AS type, 'Rampathwila' AS city_en
  UNION ALL
  SELECT '50390' AS postal_code, 'POST_OFFICE' AS type, 'Galenbindunuwewa' AS city_en
  UNION ALL
  SELECT '50392' AS postal_code, 'POST_OFFICE' AS type, 'Getalawa' AS city_en
  UNION ALL
  SELECT '50393' AS postal_code, 'POST_OFFICE' AS type, 'Dutuwewa' AS city_en
  UNION ALL
  SELECT '50394' AS postal_code, 'POST_OFFICE' AS type, 'Hurulunikawewa' AS city_en
  UNION ALL
  SELECT '50448' AS postal_code, 'POST_OFFICE' AS type, 'Pandukabayapura' AS city_en
  UNION ALL
  SELECT '50450' AS postal_code, 'POST_OFFICE' AS type, 'Rambewa' AS city_en
  UNION ALL
  SELECT '50452' AS postal_code, 'POST_OFFICE' AS type, 'Kendewa' AS city_en
  UNION ALL
  SELECT '50454' AS postal_code, 'POST_OFFICE' AS type, 'Kallanchiya' AS city_en
  UNION ALL
  SELECT '50492' AS postal_code, 'POST_OFFICE' AS type, 'Wahamalgollewa' AS city_en
  UNION ALL
  SELECT '50500' AS postal_code, 'POST_OFFICE' AS type, 'Medawachchiya' AS city_en
  UNION ALL
  SELECT '50506' AS postal_code, 'POST_OFFICE' AS type, 'Punewa' AS city_en
  UNION ALL
  SELECT '50511' AS postal_code, 'POST_OFFICE' AS type, 'Kirigalwewa' AS city_en
  UNION ALL
  SELECT '50512' AS postal_code, 'POST_OFFICE' AS type, 'Pihimbiyagollewa' AS city_en
  UNION ALL
  SELECT '50514' AS postal_code, 'POST_OFFICE' AS type, 'Rathmalgahawewa' AS city_en
  UNION ALL
  SELECT '50516' AS postal_code, 'POST_OFFICE' AS type, 'Walahaviddawewa' AS city_en
  UNION ALL
  SELECT '50518' AS postal_code, 'POST_OFFICE' AS type, 'Etaweeragollewa' AS city_en
  UNION ALL
  SELECT '50550' AS postal_code, 'POST_OFFICE' AS type, 'Kebithigollewa' AS city_en
  UNION ALL
  SELECT '50552' AS postal_code, 'POST_OFFICE' AS type, 'Halmillawetiya' AS city_en
  UNION ALL
  SELECT '50554' AS postal_code, 'POST_OFFICE' AS type, 'Gonahaddenawa' AS city_en
  UNION ALL
  SELECT '50556' AS postal_code, 'POST_OFFICE' AS type, 'Kalawedi Ulpotha' AS city_en
  UNION ALL
  SELECT '50558' AS postal_code, 'POST_OFFICE' AS type, 'Tittagonewa' AS city_en
  UNION ALL
  SELECT '50562' AS postal_code, 'POST_OFFICE' AS type, 'Kahatagollewa' AS city_en
  UNION ALL
  SELECT '50564' AS postal_code, 'POST_OFFICE' AS type, 'Wahalkada' AS city_en
  UNION ALL
  SELECT '50566' AS postal_code, 'POST_OFFICE' AS type, 'Bogahawewa' AS city_en
  UNION ALL
  SELECT '50570' AS postal_code, 'POST_OFFICE' AS type, 'Padaviya' AS city_en
  UNION ALL
  SELECT '50572' AS postal_code, 'POST_OFFICE' AS type, 'Padavi Maithripura' AS city_en
  UNION ALL
  SELECT '50574' AS postal_code, 'POST_OFFICE' AS type, 'Mahasenpura' AS city_en
  UNION ALL
  SELECT '50582' AS postal_code, 'POST_OFFICE' AS type, 'Padavi Parakramapura' AS city_en
  UNION ALL
  SELECT '50584' AS postal_code, 'POST_OFFICE' AS type, 'Etawatunuwewa' AS city_en
  UNION ALL
  SELECT '50586' AS postal_code, 'POST_OFFICE' AS type, 'Welioya Project' AS city_en
  UNION ALL
  SELECT '50587' AS postal_code, 'POST_OFFICE' AS type, 'Padavi Sripura' AS city_en
  UNION ALL
  SELECT '50588' AS postal_code, 'POST_OFFICE' AS type, 'Padavi Sri tissapura' AS city_en
  UNION ALL
  SELECT '51000' AS postal_code, 'POST_OFFICE' AS type, 'Polonnaruwa' AS city_en
  UNION ALL
  SELECT '51002' AS postal_code, 'POST_OFFICE' AS type, 'Kalingaela' AS city_en
  UNION ALL
  SELECT '51003' AS postal_code, 'POST_OFFICE' AS type, 'Divulana' AS city_en
  UNION ALL
  SELECT '51004' AS postal_code, 'POST_OFFICE' AS type, 'Onegama' AS city_en
  UNION ALL
  SELECT '51006' AS postal_code, 'POST_OFFICE' AS type, 'Lakshauyana' AS city_en
  UNION ALL
  SELECT '51008' AS postal_code, 'POST_OFFICE' AS type, 'Unagalavehera' AS city_en
  UNION ALL
  SELECT '51014' AS postal_code, 'POST_OFFICE' AS type, 'Aluthwewa' AS city_en
  UNION ALL
  SELECT '51016' AS postal_code, 'POST_OFFICE' AS type, 'Parakrama Samudraya' AS city_en
  UNION ALL
  SELECT '51022' AS postal_code, 'POST_OFFICE' AS type, 'Singhaudagama' AS city_en
  UNION ALL
  SELECT '51024' AS postal_code, 'POST_OFFICE' AS type, 'Jayanthipura' AS city_en
  UNION ALL
  SELECT '51026' AS postal_code, 'POST_OFFICE' AS type, 'Giritale' AS city_en
  UNION ALL
  SELECT '51031' AS postal_code, 'POST_OFFICE' AS type, 'Dimbulagala' AS city_en
  UNION ALL
  SELECT '51032' AS postal_code, 'POST_OFFICE' AS type, 'Kashyapapura' AS city_en
  UNION ALL
  SELECT '51033' AS postal_code, 'POST_OFFICE' AS type, 'Pelatiyawa' AS city_en
  UNION ALL
  SELECT '51034' AS postal_code, 'POST_OFFICE' AS type, 'Ellewewa' AS city_en
  UNION ALL
  SELECT '51037' AS postal_code, 'POST_OFFICE' AS type, 'Kalukele Bandanagala' AS city_en
  UNION ALL
  SELECT '51039' AS postal_code, 'POST_OFFICE' AS type, 'Nuwaragala' AS city_en
  UNION ALL
  SELECT '51042' AS postal_code, 'POST_OFFICE' AS type, 'Wijayabahupura' AS city_en
  UNION ALL
  SELECT '51044' AS postal_code, 'POST_OFFICE' AS type, 'Talpotha' AS city_en
  UNION ALL
  SELECT '51046' AS postal_code, 'POST_OFFICE' AS type, 'Palugasdamana' AS city_en
  UNION ALL
  SELECT '51049' AS postal_code, 'POST_OFFICE' AS type, 'Tambala' AS city_en
  UNION ALL
  SELECT '51050' AS postal_code, 'POST_OFFICE' AS type, 'Pulastigama' AS city_en
  UNION ALL
  SELECT '51052' AS postal_code, 'POST_OFFICE' AS type, 'Sungavila' AS city_en
  UNION ALL
  SELECT '51062' AS postal_code, 'POST_OFFICE' AS type, 'Sevanapitiya' AS city_en
  UNION ALL
  SELECT '51064' AS postal_code, 'POST_OFFICE' AS type, 'Mutugala' AS city_en
  UNION ALL
  SELECT '51066' AS postal_code, 'POST_OFFICE' AS type, 'Nawasenapura' AS city_en
  UNION ALL
  SELECT '51070' AS postal_code, 'POST_OFFICE' AS type, 'Welikanda' AS city_en
  UNION ALL
  SELECT '51071' AS postal_code, 'POST_OFFICE' AS type, 'Nawamahasenpura' AS city_en
  UNION ALL
  SELECT '51072' AS postal_code, 'POST_OFFICE' AS type, 'Aselapura' AS city_en
  UNION ALL
  SELECT '51076' AS postal_code, 'POST_OFFICE' AS type, 'Mahaweli Sinhapura' AS city_en
  UNION ALL
  SELECT '51089' AS postal_code, 'POST_OFFICE' AS type, 'Tamankaduwa' AS city_en
  UNION ALL
  SELECT '51090' AS postal_code, 'POST_OFFICE' AS type, 'Manampitiya' AS city_en
  UNION ALL
  SELECT '51092' AS postal_code, 'POST_OFFICE' AS type, 'Dalukana' AS city_en
  UNION ALL
  SELECT '51094' AS postal_code, 'POST_OFFICE' AS type, 'Dewagala' AS city_en
  UNION ALL
  SELECT '51096' AS postal_code, 'POST_OFFICE' AS type, 'Nelumwewa' AS city_en
  UNION ALL
  SELECT '51098' AS postal_code, 'POST_OFFICE' AS type, 'Hansayapalama' AS city_en
  UNION ALL
  SELECT '51100' AS postal_code, 'POST_OFFICE' AS type, 'Aralaganwila' AS city_en
  UNION ALL
  SELECT '51102' AS postal_code, 'POST_OFFICE' AS type, 'Pimburattewa' AS city_en
  UNION ALL
  SELECT '51104' AS postal_code, 'POST_OFFICE' AS type, 'Divuldamana' AS city_en
  UNION ALL
  SELECT '51106' AS postal_code, 'POST_OFFICE' AS type, 'Damminna' AS city_en
  UNION ALL
  SELECT '51108' AS postal_code, 'POST_OFFICE' AS type, 'Maduruoya' AS city_en
  UNION ALL
  SELECT '51112' AS postal_code, 'POST_OFFICE' AS type, 'Ruhunugama' AS city_en
  UNION ALL
  SELECT '51155' AS postal_code, 'POST_OFFICE' AS type, 'Siripura' AS city_en
  UNION ALL
  SELECT '51168' AS postal_code, 'POST_OFFICE' AS type, 'Kekuluwela' AS city_en
  UNION ALL
  SELECT '51225' AS postal_code, 'POST_OFFICE' AS type, 'Diyabeduma' AS city_en
  UNION ALL
  SELECT '51235' AS postal_code, 'POST_OFFICE' AS type, 'Attanakadawala' AS city_en
  UNION ALL
  SELECT '51244' AS postal_code, 'POST_OFFICE' AS type, 'Kottapitiya' AS city_en
  UNION ALL
  SELECT '51246' AS postal_code, 'POST_OFFICE' AS type, 'Jayasiripura' AS city_en
  UNION ALL
  SELECT '51250' AS postal_code, 'POST_OFFICE' AS type, 'Bakamuna' AS city_en
  UNION ALL
  SELECT '51256' AS postal_code, 'POST_OFFICE' AS type, 'Orubendisiyambalawa' AS city_en
  UNION ALL
  SELECT '51258' AS postal_code, 'POST_OFFICE' AS type, 'Elahera' AS city_en
  UNION ALL
  SELECT '51375' AS postal_code, 'POST_OFFICE' AS type, 'Galoya Junction' AS city_en
  UNION ALL
  SELECT '51378' AS postal_code, 'POST_OFFICE' AS type, 'Singhagama' AS city_en
  UNION ALL
  SELECT '51400' AS postal_code, 'POST_OFFICE' AS type, 'Hingurakgoda' AS city_en
  UNION ALL
  SELECT '51408' AS postal_code, 'POST_OFFICE' AS type, 'Hingurakdamana' AS city_en
  UNION ALL
  SELECT '51410' AS postal_code, 'POST_OFFICE' AS type, 'Minneriya' AS city_en
  UNION ALL
  SELECT '51412' AS postal_code, 'POST_OFFICE' AS type, 'Kumaragama' AS city_en
  UNION ALL
  SELECT '51414' AS postal_code, 'POST_OFFICE' AS type, 'Kawudulla' AS city_en
  UNION ALL
  SELECT '51416' AS postal_code, 'POST_OFFICE' AS type, 'Galamuna' AS city_en
  UNION ALL
  SELECT '51422' AS postal_code, 'POST_OFFICE' AS type, 'Yodaela' AS city_en
  UNION ALL
  SELECT '51424' AS postal_code, 'POST_OFFICE' AS type, 'Yudaganawa' AS city_en
  UNION ALL
  SELECT '51428' AS postal_code, 'POST_OFFICE' AS type, 'Divulankadawala' AS city_en
  UNION ALL
  SELECT '51500' AS postal_code, 'POST_OFFICE' AS type, 'Medirigiriya' AS city_en
  UNION ALL
  SELECT '51504' AS postal_code, 'POST_OFFICE' AS type, 'Diyasenpura' AS city_en
  UNION ALL
  SELECT '51506' AS postal_code, 'POST_OFFICE' AS type, 'Mahatalakolawewa' AS city_en
  UNION ALL
  SELECT '51508' AS postal_code, 'POST_OFFICE' AS type, 'Meegaswewa' AS city_en
  UNION ALL
  SELECT '51514' AS postal_code, 'POST_OFFICE' AS type, 'Kawuduluwewa Stage II' AS city_en
  UNION ALL
  SELECT '51518' AS postal_code, 'POST_OFFICE' AS type, 'Maha Ambagaswewa' AS city_en
  UNION ALL
  SELECT '60000' AS postal_code, 'POST_OFFICE' AS type, 'Kurunegala' AS city_en
  UNION ALL
  SELECT '60003' AS postal_code, 'POST_OFFICE' AS type, 'Kudagalgamuwa' AS city_en
  UNION ALL
  SELECT '60004' AS postal_code, 'POST_OFFICE' AS type, 'Minhettiya' AS city_en
  UNION ALL
  SELECT '60005' AS postal_code, 'POST_OFFICE' AS type, 'Gonagama' AS city_en
  UNION ALL
  SELECT '60013' AS postal_code, 'POST_OFFICE' AS type, 'Doratiyawa' AS city_en
  UNION ALL
  SELECT '60016' AS postal_code, 'POST_OFFICE' AS type, 'Indulgodakanda' AS city_en
  UNION ALL
  SELECT '60024' AS postal_code, 'POST_OFFICE' AS type, 'Demataluwa' AS city_en
  UNION ALL
  SELECT '60025' AS postal_code, 'POST_OFFICE' AS type, 'Ithanawatta' AS city_en
  UNION ALL
  SELECT '60027' AS postal_code, 'POST_OFFICE' AS type, 'Boyagane' AS city_en
  UNION ALL
  SELECT '60028' AS postal_code, 'POST_OFFICE' AS type, 'Kohilegedara' AS city_en
  UNION ALL
  SELECT '60029' AS postal_code, 'POST_OFFICE' AS type, 'Kosgolla' AS city_en
  UNION ALL
  SELECT '60034' AS postal_code, 'POST_OFFICE' AS type, 'Hindagolla' AS city_en
  UNION ALL
  SELECT '60036' AS postal_code, 'POST_OFFICE' AS type, 'Ambakote' AS city_en
  UNION ALL
  SELECT '60038' AS postal_code, 'POST_OFFICE' AS type, 'Morathiha' AS city_en
  UNION ALL
  SELECT '60040' AS postal_code, 'POST_OFFICE' AS type, 'Ridigama' AS city_en
  UNION ALL
  SELECT '60043' AS postal_code, 'POST_OFFICE' AS type, 'Udahorombuwa' AS city_en
  UNION ALL
  SELECT '60044' AS postal_code, 'POST_OFFICE' AS type, 'Delwita' AS city_en
  UNION ALL
  SELECT '60045' AS postal_code, 'POST_OFFICE' AS type, 'Iriyagolla' AS city_en
  UNION ALL
  SELECT '60046' AS postal_code, 'POST_OFFICE' AS type, 'Mirissala' AS city_en
  UNION ALL
  SELECT '60047' AS postal_code, 'POST_OFFICE' AS type, 'Alawatuwala' AS city_en
  UNION ALL
  SELECT '60052' AS postal_code, 'POST_OFFICE' AS type, 'Panagamuwa' AS city_en
  UNION ALL
  SELECT '60053' AS postal_code, 'POST_OFFICE' AS type, 'Pihimbuwa' AS city_en
  UNION ALL
  SELECT '60054' AS postal_code, 'POST_OFFICE' AS type, 'Kanadeniyawala' AS city_en
  UNION ALL
  SELECT '60058' AS postal_code, 'POST_OFFICE' AS type, 'Pilessa' AS city_en
  UNION ALL
  SELECT '60060' AS postal_code, 'POST_OFFICE' AS type, 'Mawathagama' AS city_en
  UNION ALL
  SELECT '60062' AS postal_code, 'POST_OFFICE' AS type, 'Kahapathwala' AS city_en
  UNION ALL
  SELECT '60064' AS postal_code, 'POST_OFFICE' AS type, 'Inguruwatta' AS city_en
  UNION ALL
  SELECT '60066' AS postal_code, 'POST_OFFICE' AS type, 'Meetanwala' AS city_en
  UNION ALL
  SELECT '60071' AS postal_code, 'POST_OFFICE' AS type, 'Paragahadeniya' AS city_en
  UNION ALL
  SELECT '60072' AS postal_code, 'POST_OFFICE' AS type, 'Puswelitenna' AS city_en
  UNION ALL
  SELECT '60074' AS postal_code, 'POST_OFFICE' AS type, 'Anhandiya' AS city_en
  UNION ALL
  SELECT '60076' AS postal_code, 'POST_OFFICE' AS type, 'Buluwala' AS city_en
  UNION ALL
  SELECT '60080' AS postal_code, 'POST_OFFICE' AS type, 'Weuda' AS city_en
  UNION ALL
  SELECT '60094' AS postal_code, 'POST_OFFICE' AS type, 'Uhumiya' AS city_en
  UNION ALL
  SELECT '60095' AS postal_code, 'POST_OFFICE' AS type, 'Ranjanagama' AS city_en
  UNION ALL
  SELECT '60096' AS postal_code, 'POST_OFFICE' AS type, 'Kalugamuwa' AS city_en
  UNION ALL
  SELECT '60097' AS postal_code, 'POST_OFFICE' AS type, 'Weerambugedara' AS city_en
  UNION ALL
  SELECT '60100' AS postal_code, 'POST_OFFICE' AS type, 'Narammala' AS city_en
  UNION ALL
  SELECT '60106' AS postal_code, 'POST_OFFICE' AS type, 'Karagahagedara' AS city_en
  UNION ALL
  SELECT '60107' AS postal_code, 'POST_OFFICE' AS type, 'Bogamulla' AS city_en
  UNION ALL
  SELECT '60108' AS postal_code, 'POST_OFFICE' AS type, 'Lokahettiya' AS city_en
  UNION ALL
  SELECT '60112' AS postal_code, 'POST_OFFICE' AS type, 'Pahamune' AS city_en
  UNION ALL
  SELECT '60113' AS postal_code, 'POST_OFFICE' AS type, 'Siyambalagaskotuwa' AS city_en
  UNION ALL
  SELECT '60121' AS postal_code, 'POST_OFFICE' AS type, 'Metiyagane' AS city_en
  UNION ALL
  SELECT '60122' AS postal_code, 'POST_OFFICE' AS type, 'Muruthenge' AS city_en
  UNION ALL
  SELECT '60123' AS postal_code, 'POST_OFFICE' AS type, 'Deekirikewa' AS city_en
  UNION ALL
  SELECT '60130' AS postal_code, 'POST_OFFICE' AS type, 'Dambadeniya' AS city_en
  UNION ALL
  SELECT '60135' AS postal_code, 'POST_OFFICE' AS type, 'Ihala Katugampala' AS city_en
  UNION ALL
  SELECT '60140' AS postal_code, 'POST_OFFICE' AS type, 'Giriulla' AS city_en
  UNION ALL
  SELECT '60152' AS postal_code, 'POST_OFFICE' AS type, 'Narangoda' AS city_en
  UNION ALL
  SELECT '60155' AS postal_code, 'POST_OFFICE' AS type, 'Bopitiya' AS city_en
  UNION ALL
  SELECT '60156' AS postal_code, 'POST_OFFICE' AS type, 'Elibichchiya' AS city_en
  UNION ALL
  SELECT '60157' AS postal_code, 'POST_OFFICE' AS type, 'Kirimetiyana' AS city_en
  UNION ALL
  SELECT '60160' AS postal_code, 'POST_OFFICE' AS type, 'Pannala' AS city_en
  UNION ALL
  SELECT '60162' AS postal_code, 'POST_OFFICE' AS type, 'Labbala' AS city_en
  UNION ALL
  SELECT '60165' AS postal_code, 'POST_OFFICE' AS type, 'Elabadagama' AS city_en
  UNION ALL
  SELECT '60170' AS postal_code, 'POST_OFFICE' AS type, 'Gonawila' AS city_en
  UNION ALL
  SELECT '60174' AS postal_code, 'POST_OFFICE' AS type, 'Daraluwa' AS city_en
  UNION ALL
  SELECT '60176' AS postal_code, 'POST_OFFICE' AS type, 'Sandalankawa' AS city_en
  UNION ALL
  SELECT '60181' AS postal_code, 'POST_OFFICE' AS type, 'Horombawa' AS city_en
  UNION ALL
  SELECT '60182' AS postal_code, 'POST_OFFICE' AS type, 'Alahitiyawa' AS city_en
  UNION ALL
  SELECT '60183' AS postal_code, 'POST_OFFICE' AS type, 'Kekunagolla' AS city_en
  UNION ALL
  SELECT '60184' AS postal_code, 'POST_OFFICE' AS type, 'Kirimetiyawa' AS city_en
  UNION ALL
  SELECT '60186' AS postal_code, 'POST_OFFICE' AS type, 'Nakkawatta' AS city_en
  UNION ALL
  SELECT '60188' AS postal_code, 'POST_OFFICE' AS type, 'Kithalawa' AS city_en
  UNION ALL
  SELECT '60193' AS postal_code, 'POST_OFFICE' AS type, 'Pahala Diyadora' AS city_en
  UNION ALL
  SELECT '60195' AS postal_code, 'POST_OFFICE' AS type, 'Wewagama' AS city_en
  UNION ALL
  SELECT '60198' AS postal_code, 'POST_OFFICE' AS type, 'Walakumburumulla' AS city_en
  UNION ALL
  SELECT '60200' AS postal_code, 'POST_OFFICE' AS type, 'Kuliyapitiya' AS city_en
  UNION ALL
  SELECT '60202' AS postal_code, 'POST_OFFICE' AS type, 'Yakwila' AS city_en
  UNION ALL
  SELECT '60204' AS postal_code, 'POST_OFFICE' AS type, 'Wadumunnegedara' AS city_en
  UNION ALL
  SELECT '60206' AS postal_code, 'POST_OFFICE' AS type, 'Welpalla' AS city_en
  UNION ALL
  SELECT '60208' AS postal_code, 'POST_OFFICE' AS type, 'Thalahitimulla' AS city_en
  UNION ALL
  SELECT '60209' AS postal_code, 'POST_OFFICE' AS type, 'Madakumburumulla' AS city_en
  UNION ALL
  SELECT '60211' AS postal_code, 'POST_OFFICE' AS type, 'Ihala Gomugomuwa' AS city_en
  UNION ALL
  SELECT '60212' AS postal_code, 'POST_OFFICE' AS type, 'Kirindawa' AS city_en
  UNION ALL
  SELECT '60214' AS postal_code, 'POST_OFFICE' AS type, 'Anukkane' AS city_en
  UNION ALL
  SELECT '60218' AS postal_code, 'POST_OFFICE' AS type, 'Munamaldeniya' AS city_en
  UNION ALL
  SELECT '60221' AS postal_code, 'POST_OFFICE' AS type, 'Magulagama' AS city_en
  UNION ALL
  SELECT '60226' AS postal_code, 'POST_OFFICE' AS type, 'Nagollagoda' AS city_en
  UNION ALL
  SELECT '60227' AS postal_code, 'POST_OFFICE' AS type, 'Tharana Udawela' AS city_en
  UNION ALL
  SELECT '60228' AS postal_code, 'POST_OFFICE' AS type, 'Deegalla' AS city_en
  UNION ALL
  SELECT '60232' AS postal_code, 'POST_OFFICE' AS type, 'Ilukhena' AS city_en
  UNION ALL
  SELECT '60236' AS postal_code, 'POST_OFFICE' AS type, 'Padiwela' AS city_en
  UNION ALL
  SELECT '60238' AS postal_code, 'POST_OFFICE' AS type, 'Ihala Kadigamuwa' AS city_en
  UNION ALL
  SELECT '60240' AS postal_code, 'POST_OFFICE' AS type, 'Welipennagahamulla' AS city_en
  UNION ALL
  SELECT '60241' AS postal_code, 'POST_OFFICE' AS type, 'Udadeniyagama' AS city_en
  UNION ALL
  SELECT '60243' AS postal_code, 'POST_OFFICE' AS type, 'Arachchikattuwa' AS city_en
  UNION ALL
  SELECT '60250' AS postal_code, 'POST_OFFICE' AS type, 'Udubaddawa' AS city_en
  UNION ALL
  SELECT '60260' AS postal_code, 'POST_OFFICE' AS type, 'Dummalasuriya' AS city_en
  UNION ALL
  SELECT '60262' AS postal_code, 'POST_OFFICE' AS type, 'Watuwatta' AS city_en
  UNION ALL
  SELECT '60266' AS postal_code, 'POST_OFFICE' AS type, 'Etungahakotuwa' AS city_en
  UNION ALL
  SELECT '60267' AS postal_code, 'POST_OFFICE' AS type, 'Weerakodiyana' AS city_en
  UNION ALL
  SELECT '60280' AS postal_code, 'POST_OFFICE' AS type, 'Alawwa' AS city_en
  UNION ALL
  SELECT '60284' AS postal_code, 'POST_OFFICE' AS type, 'Wennoruwa' AS city_en
  UNION ALL
  SELECT '60286' AS postal_code, 'POST_OFFICE' AS type, 'Maharachchimulla' AS city_en
  UNION ALL
  SELECT '60288' AS postal_code, 'POST_OFFICE' AS type, 'Keppitiwalana' AS city_en
  UNION ALL
  SELECT '60291' AS postal_code, 'POST_OFFICE' AS type, 'Bujjomuwa' AS city_en
  UNION ALL
  SELECT '60292' AS postal_code, 'POST_OFFICE' AS type, 'Nawatalwatta' AS city_en
  UNION ALL
  SELECT '60300' AS postal_code, 'POST_OFFICE' AS type, 'Polgahawela' AS city_en
  UNION ALL
  SELECT '60304' AS postal_code, 'POST_OFFICE' AS type, 'Metikumbura' AS city_en
  UNION ALL
  SELECT '60306' AS postal_code, 'POST_OFFICE' AS type, 'Talawattegedara' AS city_en
  UNION ALL
  SELECT '60308' AS postal_code, 'POST_OFFICE' AS type, 'Aragoda' AS city_en
  UNION ALL
  SELECT '60312' AS postal_code, 'POST_OFFICE' AS type, 'Panaliya' AS city_en
  UNION ALL
  SELECT '60314' AS postal_code, 'POST_OFFICE' AS type, 'Yatigaloluwa' AS city_en
  UNION ALL
  SELECT '60318' AS postal_code, 'POST_OFFICE' AS type, 'Wadakada' AS city_en
  UNION ALL
  SELECT '60330' AS postal_code, 'POST_OFFICE' AS type, 'Pothuhera' AS city_en
  UNION ALL
  SELECT '60344' AS postal_code, 'POST_OFFICE' AS type, 'Maspotha' AS city_en
  UNION ALL
  SELECT '60345' AS postal_code, 'POST_OFFICE' AS type, 'Yatikaduruwa' AS city_en
  UNION ALL
  SELECT '60346' AS postal_code, 'POST_OFFICE' AS type, 'Mahakeliya' AS city_en
  UNION ALL
  SELECT '60347' AS postal_code, 'POST_OFFICE' AS type, 'Bamunakotuwa' AS city_en
  UNION ALL
  SELECT '60348' AS postal_code, 'POST_OFFICE' AS type, 'Panadaragama' AS city_en
  UNION ALL
  SELECT '60350' AS postal_code, 'POST_OFFICE' AS type, 'Katupota' AS city_en
  UNION ALL
  SELECT '60354' AS postal_code, 'POST_OFFICE' AS type, 'Moragane' AS city_en
  UNION ALL
  SELECT '60356' AS postal_code, 'POST_OFFICE' AS type, 'Kosdeniya' AS city_en
  UNION ALL
  SELECT '60400' AS postal_code, 'POST_OFFICE' AS type, 'Wariyapola' AS city_en
  UNION ALL
  SELECT '60402' AS postal_code, 'POST_OFFICE' AS type, 'Wellegala' AS city_en
  UNION ALL
  SELECT '60404' AS postal_code, 'POST_OFFICE' AS type, 'Malagane' AS city_en
  UNION ALL
  SELECT '60406' AS postal_code, 'POST_OFFICE' AS type, 'Minuwangete' AS city_en
  UNION ALL
  SELECT '60408' AS postal_code, 'POST_OFFICE' AS type, 'Mirihanegama' AS city_en
  UNION ALL
  SELECT '60410' AS postal_code, 'POST_OFFICE' AS type, 'Kobeigane' AS city_en
  UNION ALL
  SELECT '60414' AS postal_code, 'POST_OFFICE' AS type, 'Hengamuwa' AS city_en
  UNION ALL
  SELECT '60416' AS postal_code, 'POST_OFFICE' AS type, 'Alahenegama' AS city_en
  UNION ALL
  SELECT '60422' AS postal_code, 'POST_OFFICE' AS type, 'Kanattewewa' AS city_en
  UNION ALL
  SELECT '60424' AS postal_code, 'POST_OFFICE' AS type, 'Bandara Koswatta' AS city_en
  UNION ALL
  SELECT '60426' AS postal_code, 'POST_OFFICE' AS type, 'Tuttiripitigama' AS city_en
  UNION ALL
  SELECT '60430' AS postal_code, 'POST_OFFICE' AS type, 'Hettipola' AS city_en
  UNION ALL
  SELECT '60434' AS postal_code, 'POST_OFFICE' AS type, 'Mandapola' AS city_en
  UNION ALL
  SELECT '60436' AS postal_code, 'POST_OFFICE' AS type, 'Sunandapura' AS city_en
  UNION ALL
  SELECT '60437' AS postal_code, 'POST_OFFICE' AS type, 'Boraluwewa' AS city_en
  UNION ALL
  SELECT '60438' AS postal_code, 'POST_OFFICE' AS type, 'Kuratihena' AS city_en
  UNION ALL
  SELECT '60439' AS postal_code, 'POST_OFFICE' AS type, 'Pihimbiya Ratmale' AS city_en
  UNION ALL
  SELECT '60441' AS postal_code, 'POST_OFFICE' AS type, 'Halmillawewa' AS city_en
  UNION ALL
  SELECT '60450' AS postal_code, 'POST_OFFICE' AS type, 'Bingiriya' AS city_en
  UNION ALL
  SELECT '60453' AS postal_code, 'POST_OFFICE' AS type, 'Tisogama' AS city_en
  UNION ALL
  SELECT '60454' AS postal_code, 'POST_OFFICE' AS type, 'Weerapokuna' AS city_en
  UNION ALL
  SELECT '60456' AS postal_code, 'POST_OFFICE' AS type, 'Wellarawa' AS city_en
  UNION ALL
  SELECT '60458' AS postal_code, 'POST_OFFICE' AS type, 'Hiruwalpola' AS city_en
  UNION ALL
  SELECT '60461' AS postal_code, 'POST_OFFICE' AS type, 'Padeniya' AS city_en
  UNION ALL
  SELECT '60462' AS postal_code, 'POST_OFFICE' AS type, 'Awulegama' AS city_en
  UNION ALL
  SELECT '60464' AS postal_code, 'POST_OFFICE' AS type, 'Welawa Junction' AS city_en
  UNION ALL
  SELECT '60465' AS postal_code, 'POST_OFFICE' AS type, 'Withikuliya' AS city_en
  UNION ALL
  SELECT '60470' AS postal_code, 'POST_OFFICE' AS type, 'Nikaweratiya' AS city_en
  UNION ALL
  SELECT '60472' AS postal_code, 'POST_OFFICE' AS type, 'Divullegoda' AS city_en
  UNION ALL
  SELECT '60474' AS postal_code, 'POST_OFFICE' AS type, 'Hulogedara' AS city_en
  UNION ALL
  SELECT '60476' AS postal_code, 'POST_OFFICE' AS type, 'Thimbiriyawa' AS city_en
  UNION ALL
  SELECT '60477' AS postal_code, 'POST_OFFICE' AS type, 'Hulugalla' AS city_en
  UNION ALL
  SELECT '60478' AS postal_code, 'POST_OFFICE' AS type, 'Sirisethagama' AS city_en
  UNION ALL
  SELECT '60479' AS postal_code, 'POST_OFFICE' AS type, 'Mahagirilla' AS city_en
  UNION ALL
  SELECT '60482' AS postal_code, 'POST_OFFICE' AS type, 'Nabadewa' AS city_en
  UNION ALL
  SELECT '60483' AS postal_code, 'POST_OFFICE' AS type, 'Kotawehera' AS city_en
  UNION ALL
  SELECT '60484' AS postal_code, 'POST_OFFICE' AS type, 'Meewellawa' AS city_en
  UNION ALL
  SELECT '60485' AS postal_code, 'POST_OFFICE' AS type, 'Digannewa' AS city_en
  UNION ALL
  SELECT '60486' AS postal_code, 'POST_OFFICE' AS type, 'Hilogama' AS city_en
  UNION ALL
  SELECT '60490' AS postal_code, 'POST_OFFICE' AS type, 'Wannirasnayakapura' AS city_en
  UNION ALL
  SELECT '60492' AS postal_code, 'POST_OFFICE' AS type, 'Kadigawa' AS city_en
  UNION ALL
  SELECT '60495' AS postal_code, 'POST_OFFICE' AS type, 'Monnekulama' AS city_en
  UNION ALL
  SELECT '60499' AS postal_code, 'POST_OFFICE' AS type, 'Torayaya' AS city_en
  UNION ALL
  SELECT '60500' AS postal_code, 'POST_OFFICE' AS type, 'Ibbagamuwa' AS city_en
  UNION ALL
  SELECT '60502' AS postal_code, 'POST_OFFICE' AS type, 'Kirindigalla' AS city_en
  UNION ALL
  SELECT '60506' AS postal_code, 'POST_OFFICE' AS type, 'Kumbukwewa' AS city_en
  UNION ALL
  SELECT '60508' AS postal_code, 'POST_OFFICE' AS type, 'Kumbukgeta' AS city_en
  UNION ALL
  SELECT '60512' AS postal_code, 'POST_OFFICE' AS type, 'Maeliya' AS city_en
  UNION ALL
  SELECT '60514' AS postal_code, 'POST_OFFICE' AS type, 'Makulpotha' AS city_en
  UNION ALL
  SELECT '60516' AS postal_code, 'POST_OFFICE' AS type, 'Mahamukalanyaya' AS city_en
  UNION ALL
  SELECT '60517' AS postal_code, 'POST_OFFICE' AS type, 'Tammennawatiya' AS city_en
  UNION ALL
  SELECT '60518' AS postal_code, 'POST_OFFICE' AS type, 'Periyakadunelawa' AS city_en
  UNION ALL
  SELECT '60522' AS postal_code, 'POST_OFFICE' AS type, 'Gokarella' AS city_en
  UNION ALL
  SELECT '60530' AS postal_code, 'POST_OFFICE' AS type, 'Dodangaslanda' AS city_en
  UNION ALL
  SELECT '60532' AS postal_code, 'POST_OFFICE' AS type, 'Maduragoda' AS city_en
  UNION ALL
  SELECT '60533' AS postal_code, 'POST_OFFICE' AS type, 'Udahena' AS city_en
  UNION ALL
  SELECT '60540' AS postal_code, 'POST_OFFICE' AS type, 'Melsiripura' AS city_en
  UNION ALL
  SELECT '60544' AS postal_code, 'POST_OFFICE' AS type, 'Diddeniya' AS city_en
  UNION ALL
  SELECT '60546' AS postal_code, 'POST_OFFICE' AS type, 'Hiriyala Lenawa' AS city_en
  UNION ALL
  SELECT '60548' AS postal_code, 'POST_OFFICE' AS type, 'Kimbulwanaoya' AS city_en
  UNION ALL
  SELECT '60549' AS postal_code, 'POST_OFFICE' AS type, 'Nelliya' AS city_en
  UNION ALL
  SELECT '60552' AS postal_code, 'POST_OFFICE' AS type, 'Madahapola' AS city_en
  UNION ALL
  SELECT '60554' AS postal_code, 'POST_OFFICE' AS type, 'Pansiyagama' AS city_en
  UNION ALL
  SELECT '60558' AS postal_code, 'POST_OFFICE' AS type, 'Panliyadda' AS city_en
  UNION ALL
  SELECT '60570' AS postal_code, 'POST_OFFICE' AS type, 'Wellawa' AS city_en
  UNION ALL
  SELECT '60572' AS postal_code, 'POST_OFFICE' AS type, 'Thalwita' AS city_en
  UNION ALL
  SELECT '60578' AS postal_code, 'POST_OFFICE' AS type, 'Makulwewa' AS city_en
  UNION ALL
  SELECT '60580' AS postal_code, 'POST_OFFICE' AS type, 'Nikadalupotha' AS city_en
  UNION ALL
  SELECT '60582' AS postal_code, 'POST_OFFICE' AS type, 'Hunupola' AS city_en
  UNION ALL
  SELECT '60584' AS postal_code, 'POST_OFFICE' AS type, 'Thambagalla' AS city_en
  UNION ALL
  SELECT '60590' AS postal_code, 'POST_OFFICE' AS type, 'Nagollagama' AS city_en
  UNION ALL
  SELECT '60591' AS postal_code, 'POST_OFFICE' AS type, 'Hiriyala Ambagaswewa' AS city_en
  UNION ALL
  SELECT '60600' AS postal_code, 'POST_OFFICE' AS type, 'Maho' AS city_en
  UNION ALL
  SELECT '60602' AS postal_code, 'POST_OFFICE' AS type, 'Karambe' AS city_en
  UNION ALL
  SELECT '60604' AS postal_code, 'POST_OFFICE' AS type, 'Balalla' AS city_en
  UNION ALL
  SELECT '60606' AS postal_code, 'POST_OFFICE' AS type, 'Ridibendiella' AS city_en
  UNION ALL
  SELECT '60612' AS postal_code, 'POST_OFFICE' AS type, 'Mediyawa' AS city_en
  UNION ALL
  SELECT '60620' AS postal_code, 'POST_OFFICE' AS type, 'Polpitigama' AS city_en
  UNION ALL
  SELECT '60622' AS postal_code, 'POST_OFFICE' AS type, 'Ulpotha Pallekele' AS city_en
  UNION ALL
  SELECT '60624' AS postal_code, 'POST_OFFICE' AS type, 'Thalakolawewa' AS city_en
  UNION ALL
  SELECT '60630' AS postal_code, 'POST_OFFICE' AS type, 'Konwewa' AS city_en
  UNION ALL
  SELECT '60640' AS postal_code, 'POST_OFFICE' AS type, 'Moragollagama' AS city_en
  UNION ALL
  SELECT '60646' AS postal_code, 'POST_OFFICE' AS type, 'Siyambalangamuwa' AS city_en
  UNION ALL
  SELECT '60650' AS postal_code, 'POST_OFFICE' AS type, 'Ambanpola' AS city_en
  UNION ALL
  SELECT '60700' AS postal_code, 'POST_OFFICE' AS type, 'Galgamuwa' AS city_en
  UNION ALL
  SELECT '60704' AS postal_code, 'POST_OFFICE' AS type, 'Palukadawala' AS city_en
  UNION ALL
  SELECT '60706' AS postal_code, 'POST_OFFICE' AS type, 'Ataragalla' AS city_en
  UNION ALL
  SELECT '60712' AS postal_code, 'POST_OFFICE' AS type, 'Gallewa' AS city_en
  UNION ALL
  SELECT '60714' AS postal_code, 'POST_OFFICE' AS type, 'Makulewa' AS city_en
  UNION ALL
  SELECT '60716' AS postal_code, 'POST_OFFICE' AS type, 'Ehetuwewa' AS city_en
  UNION ALL
  SELECT '60718' AS postal_code, 'POST_OFFICE' AS type, 'Embogama' AS city_en
  UNION ALL
  SELECT '60721' AS postal_code, 'POST_OFFICE' AS type, 'Wannikudawewa' AS city_en
  UNION ALL
  SELECT '60722' AS postal_code, 'POST_OFFICE' AS type, 'Wannilhalagama' AS city_en
  UNION ALL
  SELECT '60724' AS postal_code, 'POST_OFFICE' AS type, 'Mahananneriya' AS city_en
  UNION ALL
  SELECT '60726' AS postal_code, 'POST_OFFICE' AS type, 'Palugolla' AS city_en
  UNION ALL
  SELECT '60731' AS postal_code, 'POST_OFFICE' AS type, 'Mahagalkadawala' AS city_en
  UNION ALL
  SELECT '60732' AS postal_code, 'POST_OFFICE' AS type, 'Usgala Siyambalangamuwa' AS city_en
  UNION ALL
  SELECT '60734' AS postal_code, 'POST_OFFICE' AS type, 'Tambutta' AS city_en
  UNION ALL
  SELECT '60735' AS postal_code, 'POST_OFFICE' AS type, 'Pahalagiribawa' AS city_en
  UNION ALL
  SELECT '60736' AS postal_code, 'POST_OFFICE' AS type, 'Saliya Asokapura' AS city_en
  UNION ALL
  SELECT '60737' AS postal_code, 'POST_OFFICE' AS type, 'Solepura' AS city_en
  UNION ALL
  SELECT '60738' AS postal_code, 'POST_OFFICE' AS type, 'Solewewa' AS city_en
  UNION ALL
  SELECT '60739' AS postal_code, 'POST_OFFICE' AS type, 'Warawewa' AS city_en
  UNION ALL
  SELECT '60750' AS postal_code, 'POST_OFFICE' AS type, 'Meegalewa' AS city_en
  UNION ALL
  SELECT '60752' AS postal_code, 'POST_OFFICE' AS type, 'Girathalana' AS city_en
  UNION ALL
  SELECT '60754' AS postal_code, 'POST_OFFICE' AS type, 'Kudakathnoruwa' AS city_en
  UNION ALL
  SELECT '61000' AS postal_code, 'POST_OFFICE' AS type, 'Chilaw' AS city_en
  UNION ALL
  SELECT '61004' AS postal_code, 'POST_OFFICE' AS type, 'Udappuwa' AS city_en
  UNION ALL
  SELECT '61006' AS postal_code, 'POST_OFFICE' AS type, 'Wijayakatupotha' AS city_en
  UNION ALL
  SELECT '61008' AS postal_code, 'POST_OFFICE' AS type, 'Wilpotha' AS city_en
  UNION ALL
  SELECT '61012' AS postal_code, 'POST_OFFICE' AS type, 'Adippala' AS city_en
  UNION ALL
  SELECT '61014' AS postal_code, 'POST_OFFICE' AS type, 'Mugunuwatawana' AS city_en
  UNION ALL
  SELECT '61018' AS postal_code, 'POST_OFFICE' AS type, 'Ilippadeniya' AS city_en
  UNION ALL
  SELECT '61022' AS postal_code, 'POST_OFFICE' AS type, 'Karawitagara' AS city_en
  UNION ALL
  SELECT '61024' AS postal_code, 'POST_OFFICE' AS type, 'Ambakandawila' AS city_en
  UNION ALL
  SELECT '61032' AS postal_code, 'POST_OFFICE' AS type, 'Kumarakattuwa' AS city_en
  UNION ALL
  SELECT '61040' AS postal_code, 'POST_OFFICE' AS type, 'Pallama' AS city_en
  UNION ALL
  SELECT '61042' AS postal_code, 'POST_OFFICE' AS type, 'Serukele' AS city_en
  UNION ALL
  SELECT '61110' AS postal_code, 'POST_OFFICE' AS type, 'Waikkala' AS city_en
  UNION ALL
  SELECT '61120' AS postal_code, 'POST_OFFICE' AS type, 'Nainamadama' AS city_en
  UNION ALL
  SELECT '61130' AS postal_code, 'POST_OFFICE' AS type, 'Dankotuwa' AS city_en
  UNION ALL
  SELECT '61135' AS postal_code, 'POST_OFFICE' AS type, 'Haldanduwana' AS city_en
  UNION ALL
  SELECT '61136' AS postal_code, 'POST_OFFICE' AS type, 'Bujjampola' AS city_en
  UNION ALL
  SELECT '61138' AS postal_code, 'POST_OFFICE' AS type, 'Lihiriyagama' AS city_en
  UNION ALL
  SELECT '61141' AS postal_code, 'POST_OFFICE' AS type, 'Etiyawala' AS city_en
  UNION ALL
  SELECT '61144' AS postal_code, 'POST_OFFICE' AS type, 'Yogiyana' AS city_en
  UNION ALL
  SELECT '61150' AS postal_code, 'POST_OFFICE' AS type, 'Lunuwila' AS city_en
  UNION ALL
  SELECT '61152' AS postal_code, 'POST_OFFICE' AS type, 'Boralessa' AS city_en
  UNION ALL
  SELECT '61154' AS postal_code, 'POST_OFFICE' AS type, 'Ihala Kottaramulla' AS city_en
  UNION ALL
  SELECT '61158' AS postal_code, 'POST_OFFICE' AS type, 'Koswatte' AS city_en
  UNION ALL
  SELECT '61162' AS postal_code, 'POST_OFFICE' AS type, 'Pothuwatawana' AS city_en
  UNION ALL
  SELECT '61170' AS postal_code, 'POST_OFFICE' AS type, 'Wennappuwa' AS city_en
  UNION ALL
  SELECT '61180' AS postal_code, 'POST_OFFICE' AS type, 'Katuneriya' AS city_en
  UNION ALL
  SELECT '61190' AS postal_code, 'POST_OFFICE' AS type, 'Nattandiya' AS city_en
  UNION ALL
  SELECT '61192' AS postal_code, 'POST_OFFICE' AS type, 'Dunkannawa' AS city_en
  UNION ALL
  SELECT '61195' AS postal_code, 'POST_OFFICE' AS type, 'Muttibendivila' AS city_en
  UNION ALL
  SELECT '61198' AS postal_code, 'POST_OFFICE' AS type, 'Watugahamulla' AS city_en
  UNION ALL
  SELECT '61210' AS postal_code, 'POST_OFFICE' AS type, 'Marawila' AS city_en
  UNION ALL
  SELECT '61220' AS postal_code, 'POST_OFFICE' AS type, 'Mahawewa' AS city_en
  UNION ALL
  SELECT '61224' AS postal_code, 'POST_OFFICE' AS type, 'Toduwawa' AS city_en
  UNION ALL
  SELECT '61226' AS postal_code, 'POST_OFFICE' AS type, 'Kudawewa' AS city_en
  UNION ALL
  SELECT '61230' AS postal_code, 'POST_OFFICE' AS type, 'Madampe' AS city_en
  UNION ALL
  SELECT '61233' AS postal_code, 'POST_OFFICE' AS type, 'Galmuruwa' AS city_en
  UNION ALL
  SELECT '61234' AS postal_code, 'POST_OFFICE' AS type, 'Panirendawa' AS city_en
  UNION ALL
  SELECT '61236' AS postal_code, 'POST_OFFICE' AS type, 'Kakkapalliya' AS city_en
  UNION ALL
  SELECT '61238' AS postal_code, 'POST_OFFICE' AS type, 'Bangadeniya' AS city_en
  UNION ALL
  SELECT '61242' AS postal_code, 'POST_OFFICE' AS type, 'Rajakadaluwa' AS city_en
  UNION ALL
  SELECT '61244' AS postal_code, 'POST_OFFICE' AS type, 'Nalladarankattuwa' AS city_en
  UNION ALL
  SELECT '61246' AS postal_code, 'POST_OFFICE' AS type, 'Battuluoya' AS city_en
  UNION ALL
  SELECT '61250' AS postal_code, 'POST_OFFICE' AS type, 'Mundel' AS city_en
  UNION ALL
  SELECT '61252' AS postal_code, 'POST_OFFICE' AS type, 'Kottantivu' AS city_en
  UNION ALL
  SELECT '61262' AS postal_code, 'POST_OFFICE' AS type, 'Baranankattuwa' AS city_en
  UNION ALL
  SELECT '61264' AS postal_code, 'POST_OFFICE' AS type, 'Angunawila' AS city_en
  UNION ALL
  SELECT '61266' AS postal_code, 'POST_OFFICE' AS type, 'Mangalaeliya' AS city_en
  UNION ALL
  SELECT '61270' AS postal_code, 'POST_OFFICE' AS type, 'Madurankuliya' AS city_en
  UNION ALL
  SELECT '61272' AS postal_code, 'POST_OFFICE' AS type, 'Mahakumbukkadawala' AS city_en
  UNION ALL
  SELECT '61273' AS postal_code, 'POST_OFFICE' AS type, 'Kanamule' AS city_en
  UNION ALL
  SELECT '61274' AS postal_code, 'POST_OFFICE' AS type, 'Mukkutoduwawa' AS city_en
  UNION ALL
  SELECT '61280' AS postal_code, 'POST_OFFICE' AS type, 'Palaviya' AS city_en
  UNION ALL
  SELECT '61300' AS postal_code, 'POST_OFFICE' AS type, 'Puttalam' AS city_en
  UNION ALL
  SELECT '61302' AS postal_code, 'POST_OFFICE' AS type, 'Ismailpuram' AS city_en
  UNION ALL
  SELECT '61306' AS postal_code, 'POST_OFFICE' AS type, 'Wanathawilluwa' AS city_en
  UNION ALL
  SELECT '61307' AS postal_code, 'POST_OFFICE' AS type, 'Ponparappi' AS city_en
  UNION ALL
  SELECT '61308' AS postal_code, 'POST_OFFICE' AS type, 'Eluwankulama' AS city_en
  UNION ALL
  SELECT '61312' AS postal_code, 'POST_OFFICE' AS type, 'Sirambiadiya' AS city_en
  UNION ALL
  SELECT '61314' AS postal_code, 'POST_OFFICE' AS type, 'Karuwalagaswewa' AS city_en
  UNION ALL
  SELECT '61316' AS postal_code, 'POST_OFFICE' AS type, 'Ihala Puliyankulama' AS city_en
  UNION ALL
  SELECT '61318' AS postal_code, 'POST_OFFICE' AS type, 'Kumbukkalla' AS city_en
  UNION ALL
  SELECT '61322' AS postal_code, 'POST_OFFICE' AS type, 'Tabbowa' AS city_en
  UNION ALL
  SELECT '61324' AS postal_code, 'POST_OFFICE' AS type, 'Saliyawewa Junction' AS city_en
  UNION ALL
  SELECT '61326' AS postal_code, 'POST_OFFICE' AS type, 'Puttalam Cement Factory' AS city_en
  UNION ALL
  SELECT '61328' AS postal_code, 'POST_OFFICE' AS type, 'Attawilluwa' AS city_en
  UNION ALL
  SELECT '61341' AS postal_code, 'POST_OFFICE' AS type, 'Mampuri' AS city_en
  UNION ALL
  SELECT '61342' AS postal_code, 'POST_OFFICE' AS type, 'Norachcholai' AS city_en
  UNION ALL
  SELECT '61343' AS postal_code, 'POST_OFFICE' AS type, 'Ettale' AS city_en
  UNION ALL
  SELECT '61344' AS postal_code, 'POST_OFFICE' AS type, 'Talawila Church' AS city_en
  UNION ALL
  SELECT '61354' AS postal_code, 'POST_OFFICE' AS type, 'Palliwasalturai' AS city_en
  UNION ALL
  SELECT '61356' AS postal_code, 'POST_OFFICE' AS type, 'Kurinjanpitiya' AS city_en
  UNION ALL
  SELECT '61358' AS postal_code, 'POST_OFFICE' AS type, 'Kandakuliya' AS city_en
  UNION ALL
  SELECT '61360' AS postal_code, 'POST_OFFICE' AS type, 'Kalpitiya' AS city_en
  UNION ALL
  SELECT '61362' AS postal_code, 'POST_OFFICE' AS type, 'Kirimundalama' AS city_en
  UNION ALL
  SELECT '61500' AS postal_code, 'POST_OFFICE' AS type, 'Anamaduwa' AS city_en
  UNION ALL
  SELECT '61502' AS postal_code, 'POST_OFFICE' AS type, 'Uriyawa' AS city_en
  UNION ALL
  SELECT '61504' AS postal_code, 'POST_OFFICE' AS type, 'Siyambalagashena' AS city_en
  UNION ALL
  SELECT '61506' AS postal_code, 'POST_OFFICE' AS type, 'Mudalakkuliya' AS city_en
  UNION ALL
  SELECT '61508' AS postal_code, 'POST_OFFICE' AS type, 'Andigama' AS city_en
  UNION ALL
  SELECT '61509' AS postal_code, 'POST_OFFICE' AS type, 'Medawakkulama' AS city_en
  UNION ALL
  SELECT '61512' AS postal_code, 'POST_OFFICE' AS type, 'Mahauswewa' AS city_en
  UNION ALL
  SELECT '61514' AS postal_code, 'POST_OFFICE' AS type, 'Inginimitiya' AS city_en
  UNION ALL
  SELECT '61516' AS postal_code, 'POST_OFFICE' AS type, 'Kuruketiyawa' AS city_en
  UNION ALL
  SELECT '61520' AS postal_code, 'POST_OFFICE' AS type, 'Nawagattegama' AS city_en
  UNION ALL
  SELECT '61532' AS postal_code, 'POST_OFFICE' AS type, 'Kottukachchiya' AS city_en
  UNION ALL
  SELECT '61534' AS postal_code, 'POST_OFFICE' AS type, 'Kaladiya' AS city_en
  UNION ALL
  SELECT '70000' AS postal_code, 'POST_OFFICE' AS type, 'Ratnapura' AS city_en
  UNION ALL
  SELECT '70001' AS postal_code, 'POST_OFFICE' AS type, 'Malwala Junction' AS city_en
  UNION ALL
  SELECT '70002' AS postal_code, 'POST_OFFICE' AS type, 'Gillimale' AS city_en
  UNION ALL
  SELECT '70004' AS postal_code, 'POST_OFFICE' AS type, 'Sri Palabaddala' AS city_en
  UNION ALL
  SELECT '70005' AS postal_code, 'POST_OFFICE' AS type, 'Kudawa' AS city_en
  UNION ALL
  SELECT '70012' AS postal_code, 'POST_OFFICE' AS type, 'Hidellana' AS city_en
  UNION ALL
  SELECT '70016' AS postal_code, 'POST_OFFICE' AS type, 'Kahangama' AS city_en
  UNION ALL
  SELECT '70017' AS postal_code, 'POST_OFFICE' AS type, 'Dodampe' AS city_en
  UNION ALL
  SELECT '70018' AS postal_code, 'POST_OFFICE' AS type, 'Karangoda' AS city_en
  UNION ALL
  SELECT '70019' AS postal_code, 'POST_OFFICE' AS type, 'Dambuluwana' AS city_en
  UNION ALL
  SELECT '70021' AS postal_code, 'POST_OFFICE' AS type, 'Medagalatura' AS city_en
  UNION ALL
  SELECT '70024' AS postal_code, 'POST_OFFICE' AS type, 'Ayagama' AS city_en
  UNION ALL
  SELECT '70026' AS postal_code, 'POST_OFFICE' AS type, 'Gawaragiriya' AS city_en
  UNION ALL
  SELECT '70032' AS postal_code, 'POST_OFFICE' AS type, 'Elapatha' AS city_en
  UNION ALL
  SELECT '70034' AS postal_code, 'POST_OFFICE' AS type, 'Udaniriella' AS city_en
  UNION ALL
  SELECT '70036' AS postal_code, 'POST_OFFICE' AS type, 'Ratna Hangamuwa' AS city_en
  UNION ALL
  SELECT '70037' AS postal_code, 'POST_OFFICE' AS type, 'Diganakanda' AS city_en
  UNION ALL
  SELECT '70038' AS postal_code, 'POST_OFFICE' AS type, 'Niralgama' AS city_en
  UNION ALL
  SELECT '70039' AS postal_code, 'POST_OFFICE' AS type, 'Ihala hakamuwa' AS city_en
  UNION ALL
  SELECT '70041' AS postal_code, 'POST_OFFICE' AS type, 'Marapana' AS city_en
  UNION ALL
  SELECT '70042' AS postal_code, 'POST_OFFICE' AS type, 'Dela' AS city_en
  UNION ALL
  SELECT '70044' AS postal_code, 'POST_OFFICE' AS type, 'Udakarawita' AS city_en
  UNION ALL
  SELECT '70045' AS postal_code, 'POST_OFFICE' AS type, 'Pebotuwa' AS city_en
  UNION ALL
  SELECT '70046' AS postal_code, 'POST_OFFICE' AS type, 'Delwala' AS city_en
  UNION ALL
  SELECT '70053' AS postal_code, 'POST_OFFICE' AS type, 'Pelwadiya' AS city_en
  UNION ALL
  SELECT '70056' AS postal_code, 'POST_OFFICE' AS type, 'Lellopitiya' AS city_en
  UNION ALL
  SELECT '70058' AS postal_code, 'POST_OFFICE' AS type, 'Hettikanda' AS city_en
  UNION ALL
  SELECT '70062' AS postal_code, 'POST_OFFICE' AS type, 'Gallella' AS city_en
  UNION ALL
  SELECT '70066' AS postal_code, 'POST_OFFICE' AS type, 'Wewelwatta' AS city_en
  UNION ALL
  SELECT '70070' AS postal_code, 'POST_OFFICE' AS type, 'Pelmadulla' AS city_en
  UNION ALL
  SELECT '70080' AS postal_code, 'POST_OFFICE' AS type, 'Opanayake' AS city_en
  UNION ALL
  SELECT '70082' AS postal_code, 'POST_OFFICE' AS type, 'Akarella' AS city_en
  UNION ALL
  SELECT '70097' AS postal_code, 'POST_OFFICE' AS type, 'Gawaranhena' AS city_en
  UNION ALL
  SELECT '70100' AS postal_code, 'POST_OFFICE' AS type, 'Balangoda' AS city_en
  UNION ALL
  SELECT '70101' AS postal_code, 'POST_OFFICE' AS type, 'Talakolahinna' AS city_en
  UNION ALL
  SELECT '70102' AS postal_code, 'POST_OFFICE' AS type, 'Kirimatitenna' AS city_en
  UNION ALL
  SELECT '70104' AS postal_code, 'POST_OFFICE' AS type, 'Weligepola' AS city_en
  UNION ALL
  SELECT '70105' AS postal_code, 'POST_OFFICE' AS type, 'Hatangala' AS city_en
  UNION ALL
  SELECT '70106' AS postal_code, 'POST_OFFICE' AS type, 'Handagiriya' AS city_en
  UNION ALL
  SELECT '70108' AS postal_code, 'POST_OFFICE' AS type, 'Hatarabage' AS city_en
  UNION ALL
  SELECT '70112' AS postal_code, 'POST_OFFICE' AS type, 'Mahawalatenna' AS city_en
  UNION ALL
  SELECT '70114' AS postal_code, 'POST_OFFICE' AS type, 'Wikiliya' AS city_en
  UNION ALL
  SELECT '70116' AS postal_code, 'POST_OFFICE' AS type, 'Rajawaka' AS city_en
  UNION ALL
  SELECT '70117' AS postal_code, 'POST_OFFICE' AS type, 'Mulgama' AS city_en
  UNION ALL
  SELECT '70118' AS postal_code, 'POST_OFFICE' AS type, 'Tanjantenna' AS city_en
  UNION ALL
  SELECT '70122' AS postal_code, 'POST_OFFICE' AS type, 'Kaltota' AS city_en
  UNION ALL
  SELECT '70124' AS postal_code, 'POST_OFFICE' AS type, 'Welipathayaya' AS city_en
  UNION ALL
  SELECT '70127' AS postal_code, 'POST_OFFICE' AS type, 'Meddekanda' AS city_en
  UNION ALL
  SELECT '70129' AS postal_code, 'POST_OFFICE' AS type, 'Morahela' AS city_en
  UNION ALL
  SELECT '70130' AS postal_code, 'POST_OFFICE' AS type, 'Pinnawala' AS city_en
  UNION ALL
  SELECT '70131' AS postal_code, 'POST_OFFICE' AS type, 'Bolthumbe' AS city_en
  UNION ALL
  SELECT '70132' AS postal_code, 'POST_OFFICE' AS type, 'Alakola Ella' AS city_en
  UNION ALL
  SELECT '70133' AS postal_code, 'POST_OFFICE' AS type, 'Pambagolla' AS city_en
  UNION ALL
  SELECT '70134' AS postal_code, 'POST_OFFICE' AS type, 'Imbulpe' AS city_en
  UNION ALL
  SELECT '70135' AS postal_code, 'POST_OFFICE' AS type, 'Rassagala' AS city_en
  UNION ALL
  SELECT '70136' AS postal_code, 'POST_OFFICE' AS type, 'Gurubewilagama' AS city_en
  UNION ALL
  SELECT '70138' AS postal_code, 'POST_OFFICE' AS type, 'Waleboda' AS city_en
  UNION ALL
  SELECT '70140' AS postal_code, 'POST_OFFICE' AS type, 'Belihuloya' AS city_en
  UNION ALL
  SELECT '70142' AS postal_code, 'POST_OFFICE' AS type, 'Samanalawewa' AS city_en
  UNION ALL
  SELECT '70144' AS postal_code, 'POST_OFFICE' AS type, 'Ihalagalagama' AS city_en
  UNION ALL
  SELECT '70145' AS postal_code, 'POST_OFFICE' AS type, 'Halpe' AS city_en
  UNION ALL
  SELECT '70150' AS postal_code, 'POST_OFFICE' AS type, 'Kahawatta' AS city_en
  UNION ALL
  SELECT '70151' AS postal_code, 'POST_OFFICE' AS type, 'Sri Godankumbura' AS city_en
  UNION ALL
  SELECT '70152' AS postal_code, 'POST_OFFICE' AS type, 'Panapitiya' AS city_en
  UNION ALL
  SELECT '70154' AS postal_code, 'POST_OFFICE' AS type, 'Udahawupe' AS city_en
  UNION ALL
  SELECT '70156' AS postal_code, 'POST_OFFICE' AS type, 'Endana' AS city_en
  UNION ALL
  SELECT '70158' AS postal_code, 'POST_OFFICE' AS type, 'Madalagama' AS city_en
  UNION ALL
  SELECT '70160' AS postal_code, 'POST_OFFICE' AS type, 'Godakawela' AS city_en
  UNION ALL
  SELECT '70161' AS postal_code, 'POST_OFFICE' AS type, 'Palugahawela' AS city_en
  UNION ALL
  SELECT '70162' AS postal_code, 'POST_OFFICE' AS type, 'Ranwala' AS city_en
  UNION ALL
  SELECT '70164' AS postal_code, 'POST_OFFICE' AS type, 'Hapugastenna' AS city_en
  UNION ALL
  SELECT '70165' AS postal_code, 'POST_OFFICE' AS type, 'Nawinnapinnakanda' AS city_en
  UNION ALL
  SELECT '70170' AS postal_code, 'POST_OFFICE' AS type, 'Pallebedda' AS city_en
  UNION ALL
  SELECT '70171' AS postal_code, 'POST_OFFICE' AS type, 'Halwinna' AS city_en
  UNION ALL
  SELECT '70180' AS postal_code, 'POST_OFFICE' AS type, 'Kolambageara' AS city_en
  UNION ALL
  SELECT '70190' AS postal_code, 'POST_OFFICE' AS type, 'Udawalawe' AS city_en
  UNION ALL
  SELECT '70195' AS postal_code, 'POST_OFFICE' AS type, 'Gangeyaya' AS city_en
  UNION ALL
  SELECT '70200' AS postal_code, 'POST_OFFICE' AS type, 'Embilipitiya' AS city_en
  UNION ALL
  SELECT '70205' AS postal_code, 'POST_OFFICE' AS type, 'Tunkama' AS city_en
  UNION ALL
  SELECT '70212' AS postal_code, 'POST_OFFICE' AS type, 'Mulendiyawala' AS city_en
  UNION ALL
  SELECT '70215' AS postal_code, 'POST_OFFICE' AS type, 'Omalpe' AS city_en
  UNION ALL
  SELECT '70218' AS postal_code, 'POST_OFFICE' AS type, 'Panamura' AS city_en
  UNION ALL
  SELECT '70230' AS postal_code, 'POST_OFFICE' AS type, 'Padalangala' AS city_en
  UNION ALL
  SELECT '70250' AS postal_code, 'POST_OFFICE' AS type, 'Sevanagala' AS city_en
  UNION ALL
  SELECT '70293' AS postal_code, 'POST_OFFICE' AS type, 'Wellandura' AS city_en
  UNION ALL
  SELECT '70294' AS postal_code, 'POST_OFFICE' AS type, 'Atakalanpanna' AS city_en
  UNION ALL
  SELECT '70296' AS postal_code, 'POST_OFFICE' AS type, 'Hiramadagama' AS city_en
  UNION ALL
  SELECT '70298' AS postal_code, 'POST_OFFICE' AS type, 'Makandura' AS city_en
  UNION ALL
  SELECT '70300' AS postal_code, 'POST_OFFICE' AS type, 'Rakwana' AS city_en
  UNION ALL
  SELECT '70332' AS postal_code, 'POST_OFFICE' AS type, 'Demuwatha' AS city_en
  UNION ALL
  SELECT '70334' AS postal_code, 'POST_OFFICE' AS type, 'Mahapannila' AS city_en
  UNION ALL
  SELECT '70338' AS postal_code, 'POST_OFFICE' AS type, 'Pothupitiya' AS city_en
  UNION ALL
  SELECT '70342' AS postal_code, 'POST_OFFICE' AS type, 'Ittekanda' AS city_en
  UNION ALL
  SELECT '70344' AS postal_code, 'POST_OFFICE' AS type, 'Boraluwageaina' AS city_en
  UNION ALL
  SELECT '70345' AS postal_code, 'POST_OFFICE' AS type, 'Ullinduwawa' AS city_en
  UNION ALL
  SELECT '70346' AS postal_code, 'POST_OFFICE' AS type, 'Bulutota' AS city_en
  UNION ALL
  SELECT '70348' AS postal_code, 'POST_OFFICE' AS type, 'Vijeriya' AS city_en
  UNION ALL
  SELECT '70350' AS postal_code, 'POST_OFFICE' AS type, 'Kolonna' AS city_en
  UNION ALL
  SELECT '70352' AS postal_code, 'POST_OFFICE' AS type, 'Kella Junction' AS city_en
  UNION ALL
  SELECT '70400' AS postal_code, 'POST_OFFICE' AS type, 'Nivithigala' AS city_en
  UNION ALL
  SELECT '70403' AS postal_code, 'POST_OFFICE' AS type, 'Kolombugama' AS city_en
  UNION ALL
  SELECT '70404' AS postal_code, 'POST_OFFICE' AS type, 'Doloswalakanda' AS city_en
  UNION ALL
  SELECT '70408' AS postal_code, 'POST_OFFICE' AS type, 'Watapotha' AS city_en
  UNION ALL
  SELECT '70450' AS postal_code, 'POST_OFFICE' AS type, 'Kalawana' AS city_en
  UNION ALL
  SELECT '70455' AS postal_code, 'POST_OFFICE' AS type, 'Daugala' AS city_en
  UNION ALL
  SELECT '70456' AS postal_code, 'POST_OFFICE' AS type, 'Waturawa' AS city_en
  UNION ALL
  SELECT '70459' AS postal_code, 'POST_OFFICE' AS type, 'Veddagala' AS city_en
  UNION ALL
  SELECT '70461' AS postal_code, 'POST_OFFICE' AS type, 'Panapola' AS city_en
  UNION ALL
  SELECT '70469' AS postal_code, 'POST_OFFICE' AS type, 'Nawalakanda' AS city_en
  UNION ALL
  SELECT '70472' AS postal_code, 'POST_OFFICE' AS type, 'Pimbura' AS city_en
  UNION ALL
  SELECT '70480' AS postal_code, 'POST_OFFICE' AS type, 'Kiriella' AS city_en
  UNION ALL
  SELECT '70482' AS postal_code, 'POST_OFFICE' AS type, 'Matuwagalagama' AS city_en
  UNION ALL
  SELECT '70488' AS postal_code, 'POST_OFFICE' AS type, 'Karandana' AS city_en
  UNION ALL
  SELECT '70492' AS postal_code, 'POST_OFFICE' AS type, 'Ellagawa' AS city_en
  UNION ALL
  SELECT '70494' AS postal_code, 'POST_OFFICE' AS type, 'Minipura Dumbara' AS city_en
  UNION ALL
  SELECT '70495' AS postal_code, 'POST_OFFICE' AS type, 'Dumbara Manana' AS city_en
  UNION ALL
  SELECT '70500' AS postal_code, 'POST_OFFICE' AS type, 'Kuruwita' AS city_en
  UNION ALL
  SELECT '70502' AS postal_code, 'POST_OFFICE' AS type, 'Sudagala' AS city_en
  UNION ALL
  SELECT '70504' AS postal_code, 'POST_OFFICE' AS type, 'Batatota' AS city_en
  UNION ALL
  SELECT '70506' AS postal_code, 'POST_OFFICE' AS type, 'Eratna' AS city_en
  UNION ALL
  SELECT '70509' AS postal_code, 'POST_OFFICE' AS type, 'Devipahala' AS city_en
  UNION ALL
  SELECT '70512' AS postal_code, 'POST_OFFICE' AS type, 'Teppanawa' AS city_en
  UNION ALL
  SELECT '70550' AS postal_code, 'POST_OFFICE' AS type, 'Parakaduwa' AS city_en
  UNION ALL
  SELECT '70552' AS postal_code, 'POST_OFFICE' AS type, 'Ellaulla' AS city_en
  UNION ALL
  SELECT '70556' AS postal_code, 'POST_OFFICE' AS type, 'Godagampola' AS city_en
  UNION ALL
  SELECT '70562' AS postal_code, 'POST_OFFICE' AS type, 'Pohorabawa' AS city_en
  UNION ALL
  SELECT '70600' AS postal_code, 'POST_OFFICE' AS type, 'Eheliyagoda' AS city_en
  UNION ALL
  SELECT '70602' AS postal_code, 'POST_OFFICE' AS type, 'Erepola' AS city_en
  UNION ALL
  SELECT '70604' AS postal_code, 'POST_OFFICE' AS type, 'Mitipola' AS city_en
  UNION ALL
  SELECT '70606' AS postal_code, 'POST_OFFICE' AS type, 'Ellawala' AS city_en
  UNION ALL
  SELECT '70607' AS postal_code, 'POST_OFFICE' AS type, 'Paleegala' AS city_en
  UNION ALL
  SELECT '70612' AS postal_code, 'POST_OFFICE' AS type, 'Panawala' AS city_en
  UNION ALL
  SELECT '70620' AS postal_code, 'POST_OFFICE' AS type, 'Getahetta' AS city_en
  UNION ALL
  SELECT '71000' AS postal_code, 'POST_OFFICE' AS type, 'Kegalle' AS city_en
  UNION ALL
  SELECT '71009' AS postal_code, 'POST_OFFICE' AS type, 'Deldeniya' AS city_en
  UNION ALL
  SELECT '71014' AS postal_code, 'POST_OFFICE' AS type, 'Hiriwadunna' AS city_en
  UNION ALL
  SELECT '71016' AS postal_code, 'POST_OFFICE' AS type, 'Molagoda' AS city_en
  UNION ALL
  SELECT '71022' AS postal_code, 'POST_OFFICE' AS type, 'Deewala Pallegama' AS city_en
  UNION ALL
  SELECT '71029' AS postal_code, 'POST_OFFICE' AS type, 'Yattogoda' AS city_en
  UNION ALL
  SELECT '71034' AS postal_code, 'POST_OFFICE' AS type, 'Damunupola' AS city_en
  UNION ALL
  SELECT '71035' AS postal_code, 'POST_OFFICE' AS type, 'Watura' AS city_en
  UNION ALL
  SELECT '71037' AS postal_code, 'POST_OFFICE' AS type, 'Debathgama' AS city_en
  UNION ALL
  SELECT '71039' AS postal_code, 'POST_OFFICE' AS type, 'Pothukoladeniya' AS city_en
  UNION ALL
  SELECT '71041' AS postal_code, 'POST_OFFICE' AS type, 'Aruggammana' AS city_en
  UNION ALL
  SELECT '71044' AS postal_code, 'POST_OFFICE' AS type, 'Beligala' AS city_en
  UNION ALL
  SELECT '71046' AS postal_code, 'POST_OFFICE' AS type, 'Helamada' AS city_en
  UNION ALL
  SELECT '71050' AS postal_code, 'POST_OFFICE' AS type, 'Dewalegama' AS city_en
  UNION ALL
  SELECT '71055' AS postal_code, 'POST_OFFICE' AS type, 'Imbulgasdeniya' AS city_en
  UNION ALL
  SELECT '71060' AS postal_code, 'POST_OFFICE' AS type, 'Nelundeniya' AS city_en
  UNION ALL
  SELECT '71062' AS postal_code, 'POST_OFFICE' AS type, 'Tuntota' AS city_en
  UNION ALL
  SELECT '71063' AS postal_code, 'POST_OFFICE' AS type, 'Mahapallegama' AS city_en
  UNION ALL
  SELECT '71100' AS postal_code, 'POST_OFFICE' AS type, 'Rambukkana' AS city_en
  UNION ALL
  SELECT '71105' AS postal_code, 'POST_OFFICE' AS type, 'Parape' AS city_en
  UNION ALL
  SELECT '71106' AS postal_code, 'POST_OFFICE' AS type, 'Kotawella' AS city_en
  UNION ALL
  SELECT '71108' AS postal_code, 'POST_OFFICE' AS type, 'Hewadiwela' AS city_en
  UNION ALL
  SELECT '71113' AS postal_code, 'POST_OFFICE' AS type, 'Udagaldeniya' AS city_en
  UNION ALL
  SELECT '71115' AS postal_code, 'POST_OFFICE' AS type, 'Dombemada' AS city_en
  UNION ALL
  SELECT '71116' AS postal_code, 'POST_OFFICE' AS type, 'Yatagama' AS city_en
  UNION ALL
  SELECT '71130' AS postal_code, 'POST_OFFICE' AS type, 'Pattampitiya' AS city_en
  UNION ALL
  SELECT '71200' AS postal_code, 'POST_OFFICE' AS type, 'Undugoda' AS city_en
  UNION ALL
  SELECT '71202' AS postal_code, 'POST_OFFICE' AS type, 'Kabagamuwa' AS city_en
  UNION ALL
  SELECT '71204' AS postal_code, 'POST_OFFICE' AS type, 'Alawatura' AS city_en
  UNION ALL
  SELECT '71208' AS postal_code, 'POST_OFFICE' AS type, 'Bossella' AS city_en
  UNION ALL
  SELECT '71210' AS postal_code, 'POST_OFFICE' AS type, 'Hettimulla' AS city_en
  UNION ALL
  SELECT '71211' AS postal_code, 'POST_OFFICE' AS type, 'Maharangalla' AS city_en
  UNION ALL
  SELECT '71220' AS postal_code, 'POST_OFFICE' AS type, 'Morontota' AS city_en
  UNION ALL
  SELECT '71222' AS postal_code, 'POST_OFFICE' AS type, 'Gantuna' AS city_en
  UNION ALL
  SELECT '71230' AS postal_code, 'POST_OFFICE' AS type, 'Bulathkohupitiya' AS city_en
  UNION ALL
  SELECT '71232' AS postal_code, 'POST_OFFICE' AS type, 'Ampagala' AS city_en
  UNION ALL
  SELECT '71234' AS postal_code, 'POST_OFFICE' AS type, 'Wegalla' AS city_en
  UNION ALL
  SELECT '71236' AS postal_code, 'POST_OFFICE' AS type, 'Udapotha' AS city_en
  UNION ALL
  SELECT '71237' AS postal_code, 'POST_OFFICE' AS type, 'Dedugala' AS city_en
  UNION ALL
  SELECT '71300' AS postal_code, 'POST_OFFICE' AS type, 'Ruwanwella' AS city_en
  UNION ALL
  SELECT '71303' AS postal_code, 'POST_OFFICE' AS type, 'Wahakula' AS city_en
  UNION ALL
  SELECT '71304' AS postal_code, 'POST_OFFICE' AS type, 'Waharaka' AS city_en
  UNION ALL
  SELECT '71312' AS postal_code, 'POST_OFFICE' AS type, 'Galpatha' AS city_en
  UNION ALL
  SELECT '71313' AS postal_code, 'POST_OFFICE' AS type, 'Imbulana' AS city_en
  UNION ALL
  SELECT '71315' AS postal_code, 'POST_OFFICE' AS type, 'Lewangama' AS city_en
  UNION ALL
  SELECT '71318' AS postal_code, 'POST_OFFICE' AS type, 'Gonagala' AS city_en
  UNION ALL
  SELECT '71320' AS postal_code, 'POST_OFFICE' AS type, 'Amitirigala' AS city_en
  UNION ALL
  SELECT '71321' AS postal_code, 'POST_OFFICE' AS type, 'Batuwita' AS city_en
  UNION ALL
  SELECT '71325' AS postal_code, 'POST_OFFICE' AS type, 'Malmaduwa' AS city_en
  UNION ALL
  SELECT '71326' AS postal_code, 'POST_OFFICE' AS type, 'Yatapana' AS city_en
  UNION ALL
  SELECT '71350' AS postal_code, 'POST_OFFICE' AS type, 'Galigamuwa Town' AS city_en
  UNION ALL
  SELECT '71352' AS postal_code, 'POST_OFFICE' AS type, 'Hakahinna' AS city_en
  UNION ALL
  SELECT '71360' AS postal_code, 'POST_OFFICE' AS type, 'Pitagaldeniya' AS city_en
  UNION ALL
  SELECT '71363' AS postal_code, 'POST_OFFICE' AS type, 'Atale' AS city_en
  UNION ALL
  SELECT '71370' AS postal_code, 'POST_OFFICE' AS type, 'Kotiyakumbura' AS city_en
  UNION ALL
  SELECT '71372' AS postal_code, 'POST_OFFICE' AS type, 'Kannattota KE)' AS city_en
  UNION ALL
  SELECT '71400' AS postal_code, 'POST_OFFICE' AS type, 'Dehiowita' AS city_en
  UNION ALL
  SELECT '71401' AS postal_code, 'POST_OFFICE' AS type, 'Deloluwa' AS city_en
  UNION ALL
  SELECT '71403' AS postal_code, 'POST_OFFICE' AS type, 'Anhettigama' AS city_en
  UNION ALL
  SELECT '71407' AS postal_code, 'POST_OFFICE' AS type, 'Noori' AS city_en
  UNION ALL
  SELECT '71411' AS postal_code, 'POST_OFFICE' AS type, 'Maliboda' AS city_en
  UNION ALL
  SELECT '71417' AS postal_code, 'POST_OFFICE' AS type, 'Hinguralakanda' AS city_en
  UNION ALL
  SELECT '71418' AS postal_code, 'POST_OFFICE' AS type, 'Boralankada' AS city_en
  UNION ALL
  SELECT '71430' AS postal_code, 'POST_OFFICE' AS type, 'Daraniyagala' AS city_en
  UNION ALL
  SELECT '71432' AS postal_code, 'POST_OFFICE' AS type, 'Miyanawita' AS city_en
  UNION ALL
  SELECT '71500' AS postal_code, 'POST_OFFICE' AS type, 'Mawanella' AS city_en
  UNION ALL
  SELECT '71501' AS postal_code, 'POST_OFFICE' AS type, 'Kondeniya' AS city_en
  UNION ALL
  SELECT '71503' AS postal_code, 'POST_OFFICE' AS type, 'Ambulugala' AS city_en
  UNION ALL
  SELECT '71505' AS postal_code, 'POST_OFFICE' AS type, 'Galatara' AS city_en
  UNION ALL
  SELECT '71507' AS postal_code, 'POST_OFFICE' AS type, 'Makehelwala' AS city_en
  UNION ALL
  SELECT '71508' AS postal_code, 'POST_OFFICE' AS type, 'Aluthnuwara' AS city_en
  UNION ALL
  SELECT '71510' AS postal_code, 'POST_OFFICE' AS type, 'Ussapitiya' AS city_en
  UNION ALL
  SELECT '71520' AS postal_code, 'POST_OFFICE' AS type, 'Hingula' AS city_en
  UNION ALL
  SELECT '71521' AS postal_code, 'POST_OFFICE' AS type, 'Udumulla' AS city_en
  UNION ALL
  SELECT '71527' AS postal_code, 'POST_OFFICE' AS type, 'Dewanagala' AS city_en
  UNION ALL
  SELECT '71530' AS postal_code, 'POST_OFFICE' AS type, 'Hemmatagama' AS city_en
  UNION ALL
  SELECT '71533' AS postal_code, 'POST_OFFICE' AS type, 'Kehelpannala' AS city_en
  UNION ALL
  SELECT '71540' AS postal_code, 'POST_OFFICE' AS type, 'Aranayaka' AS city_en
  UNION ALL
  SELECT '71541' AS postal_code, 'POST_OFFICE' AS type, 'Talgaspitiya' AS city_en
  UNION ALL
  SELECT '71546' AS postal_code, 'POST_OFFICE' AS type, 'Ambalakanda' AS city_en
  UNION ALL
  SELECT '71600' AS postal_code, 'POST_OFFICE' AS type, 'Warakapola' AS city_en
  UNION ALL
  SELECT '71601' AS postal_code, 'POST_OFFICE' AS type, 'Dorawaka' AS city_en
  UNION ALL
  SELECT '71602' AS postal_code, 'POST_OFFICE' AS type, 'Niyadurupola' AS city_en
  UNION ALL
  SELECT '71603' AS postal_code, 'POST_OFFICE' AS type, 'Galapitamada' AS city_en
  UNION ALL
  SELECT '71605' AS postal_code, 'POST_OFFICE' AS type, 'Dunumala' AS city_en
  UNION ALL
  SELECT '71607' AS postal_code, 'POST_OFFICE' AS type, 'Algama' AS city_en
  UNION ALL
  SELECT '71608' AS postal_code, 'POST_OFFICE' AS type, 'Niwatuwa' AS city_en
  UNION ALL
  SELECT '71610' AS postal_code, 'POST_OFFICE' AS type, 'Tulhiriya' AS city_en
  UNION ALL
  SELECT '71612' AS postal_code, 'POST_OFFICE' AS type, 'Bopitiya' AS city_en
  UNION ALL
  SELECT '71619' AS postal_code, 'POST_OFFICE' AS type, 'Tholangamuwa' AS city_en
  UNION ALL
  SELECT '71622' AS postal_code, 'POST_OFFICE' AS type, 'Weragala' AS city_en
  UNION ALL
  SELECT '71700' AS postal_code, 'POST_OFFICE' AS type, 'Yatiyantota' AS city_en
  UNION ALL
  SELECT '71702' AS postal_code, 'POST_OFFICE' AS type, 'Weeoya' AS city_en
  UNION ALL
  SELECT '71704' AS postal_code, 'POST_OFFICE' AS type, 'Malalpola' AS city_en
  UNION ALL
  SELECT '71706' AS postal_code, 'POST_OFFICE' AS type, 'Berannawa' AS city_en
  UNION ALL
  SELECT '71708' AS postal_code, 'POST_OFFICE' AS type, 'Seaforth Colony' AS city_en
  UNION ALL
  SELECT '71712' AS postal_code, 'POST_OFFICE' AS type, 'Welihelatenna' AS city_en
  UNION ALL
  SELECT '71715' AS postal_code, 'POST_OFFICE' AS type, 'Hakabellawaka' AS city_en
  UNION ALL
  SELECT '71716' AS postal_code, 'POST_OFFICE' AS type, 'Migastenna' AS city_en
  UNION ALL
  SELECT '71720' AS postal_code, 'POST_OFFICE' AS type, 'Kitulgala' AS city_en
  UNION ALL
  SELECT '71722' AS postal_code, 'POST_OFFICE' AS type, 'Mahabage' AS city_en
  UNION ALL
  SELECT '71724' AS postal_code, 'POST_OFFICE' AS type, 'Teligama' AS city_en
  UNION ALL
  SELECT '80000' AS postal_code, 'POST_OFFICE' AS type, 'Galle' AS city_en
  UNION ALL
  SELECT '80042' AS postal_code, 'POST_OFFICE' AS type, 'Wakwella' AS city_en
  UNION ALL
  SELECT '80044' AS postal_code, 'POST_OFFICE' AS type, 'Anangoda' AS city_en
  UNION ALL
  SELECT '80046' AS postal_code, 'POST_OFFICE' AS type, 'Walahanduwa' AS city_en
  UNION ALL
  SELECT '80048' AS postal_code, 'POST_OFFICE' AS type, 'Ankokkawala' AS city_en
  UNION ALL
  SELECT '80054' AS postal_code, 'POST_OFFICE' AS type, 'Gonamulla Junction' AS city_en
  UNION ALL
  SELECT '80056' AS postal_code, 'POST_OFFICE' AS type, 'Hiyare' AS city_en
  UNION ALL
  SELECT '80058' AS postal_code, 'POST_OFFICE' AS type, 'Talgampala' AS city_en
  UNION ALL
  SELECT '80062' AS postal_code, 'POST_OFFICE' AS type, 'Kottawagama' AS city_en
  UNION ALL
  SELECT '80064' AS postal_code, 'POST_OFFICE' AS type, 'Nakiyadeniya' AS city_en
  UNION ALL
  SELECT '80070' AS postal_code, 'POST_OFFICE' AS type, 'Udugama' AS city_en
  UNION ALL
  SELECT '80075' AS postal_code, 'POST_OFFICE' AS type, 'Panangala' AS city_en
  UNION ALL
  SELECT '80080' AS postal_code, 'POST_OFFICE' AS type, 'Hiniduma' AS city_en
  UNION ALL
  SELECT '80082' AS postal_code, 'POST_OFFICE' AS type, 'Neluwa' AS city_en
  UNION ALL
  SELECT '80084' AS postal_code, 'POST_OFFICE' AS type, 'Warukandeniya' AS city_en
  UNION ALL
  SELECT '80086' AS postal_code, 'POST_OFFICE' AS type, 'Pannimulla Panagoda' AS city_en
  UNION ALL
  SELECT '80090' AS postal_code, 'POST_OFFICE' AS type, 'Akmeemana' AS city_en
  UNION ALL
  SELECT '80092' AS postal_code, 'POST_OFFICE' AS type, 'Meda Keembiya' AS city_en
  UNION ALL
  SELECT '80100' AS postal_code, 'POST_OFFICE' AS type, 'Wanduramba' AS city_en
  UNION ALL
  SELECT '80107' AS postal_code, 'POST_OFFICE' AS type, 'Yatalamatta' AS city_en
  UNION ALL
  SELECT '80108' AS postal_code, 'POST_OFFICE' AS type, 'Udalamatta' AS city_en
  UNION ALL
  SELECT '80110' AS postal_code, 'POST_OFFICE' AS type, 'Nagoda' AS city_en
  UNION ALL
  SELECT '80112' AS postal_code, 'POST_OFFICE' AS type, 'Ethumale' AS city_en
  UNION ALL
  SELECT '80114' AS postal_code, 'POST_OFFICE' AS type, 'Mapalagama' AS city_en
  UNION ALL
  SELECT '80116' AS postal_code, 'POST_OFFICE' AS type, 'Mapalagama Central' AS city_en
  UNION ALL
  SELECT '80120' AS postal_code, 'POST_OFFICE' AS type, 'Wanchawala' AS city_en
  UNION ALL
  SELECT '80122' AS postal_code, 'POST_OFFICE' AS type, 'Angulugaha' AS city_en
  UNION ALL
  SELECT '80130' AS postal_code, 'POST_OFFICE' AS type, 'Imaduwa' AS city_en
  UNION ALL
  SELECT '80132' AS postal_code, 'POST_OFFICE' AS type, 'Hawpe' AS city_en
  UNION ALL
  SELECT '80134' AS postal_code, 'POST_OFFICE' AS type, 'Ihala Walpola' AS city_en
  UNION ALL
  SELECT '80136' AS postal_code, 'POST_OFFICE' AS type, 'Kananke Bazaar' AS city_en
  UNION ALL
  SELECT '80142' AS postal_code, 'POST_OFFICE' AS type, 'Opatha' AS city_en
  UNION ALL
  SELECT '80143' AS postal_code, 'POST_OFFICE' AS type, 'Banagala' AS city_en
  UNION ALL
  SELECT '80144' AS postal_code, 'POST_OFFICE' AS type, 'Malgalla Talangalla' AS city_en
  UNION ALL
  SELECT '80146' AS postal_code, 'POST_OFFICE' AS type, 'Halvitigala Colony' AS city_en
  UNION ALL
  SELECT '80148' AS postal_code, 'POST_OFFICE' AS type, 'Tawalama' AS city_en
  UNION ALL
  SELECT '80150' AS postal_code, 'POST_OFFICE' AS type, 'Yakkalamulla' AS city_en
  UNION ALL
  SELECT '80151' AS postal_code, 'POST_OFFICE' AS type, 'Karagoda' AS city_en
  UNION ALL
  SELECT '80152' AS postal_code, 'POST_OFFICE' AS type, 'Magedara' AS city_en
  UNION ALL
  SELECT '80168' AS postal_code, 'POST_OFFICE' AS type, 'Uluvitike' AS city_en
  UNION ALL
  SELECT '80170' AS postal_code, 'POST_OFFICE' AS type, 'Poddala' AS city_en
  UNION ALL
  SELECT '80200' AS postal_code, 'POST_OFFICE' AS type, 'Baddegama' AS city_en
  UNION ALL
  SELECT '80204' AS postal_code, 'POST_OFFICE' AS type, 'Ampegama' AS city_en
  UNION ALL
  SELECT '80212' AS postal_code, 'POST_OFFICE' AS type, 'Agaliya' AS city_en
  UNION ALL
  SELECT '80214' AS postal_code, 'POST_OFFICE' AS type, 'Unanvitiya' AS city_en
  UNION ALL
  SELECT '80216' AS postal_code, 'POST_OFFICE' AS type, 'Weihena' AS city_en
  UNION ALL
  SELECT '80220' AS postal_code, 'POST_OFFICE' AS type, 'Ginimellagaha' AS city_en
  UNION ALL
  SELECT '80230' AS postal_code, 'POST_OFFICE' AS type, 'Gonapinuwala' AS city_en
  UNION ALL
  SELECT '80240' AS postal_code, 'POST_OFFICE' AS type, 'Hikkaduwa' AS city_en
  UNION ALL
  SELECT '80242' AS postal_code, 'POST_OFFICE' AS type, 'Telwaththa' AS city_en
  UNION ALL
  SELECT '80243' AS postal_code, 'POST_OFFICE' AS type, 'Majuwana Keradewala' AS city_en
  UNION ALL
  SELECT '80244' AS postal_code, 'POST_OFFICE' AS type, 'Tiranagama' AS city_en
  UNION ALL
  SELECT '80250' AS postal_code, 'POST_OFFICE' AS type, 'Dodanduwa' AS city_en
  UNION ALL
  SELECT '80260' AS postal_code, 'POST_OFFICE' AS type, 'Rajgama' AS city_en
  UNION ALL
  SELECT '80270' AS postal_code, 'POST_OFFICE' AS type, 'Boossa' AS city_en
  UNION ALL
  SELECT '80280' AS postal_code, 'POST_OFFICE' AS type, 'Gintota' AS city_en
  UNION ALL
  SELECT '80300' AS postal_code, 'POST_OFFICE' AS type, 'Ambalangoda' AS city_en
  UNION ALL
  SELECT '80302' AS postal_code, 'POST_OFFICE' AS type, 'Godahena' AS city_en
  UNION ALL
  SELECT '80312' AS postal_code, 'POST_OFFICE' AS type, 'Kahawa' AS city_en
  UNION ALL
  SELECT '80318' AS postal_code, 'POST_OFFICE' AS type, 'Nindana' AS city_en
  UNION ALL
  SELECT '80320' AS postal_code, 'POST_OFFICE' AS type, 'Batapola' AS city_en
  UNION ALL
  SELECT '80328' AS postal_code, 'POST_OFFICE' AS type, 'Kuleegoda' AS city_en
  UNION ALL
  SELECT '80330' AS postal_code, 'POST_OFFICE' AS type, 'Meetiyagoda' AS city_en
  UNION ALL
  SELECT '80332' AS postal_code, 'POST_OFFICE' AS type, 'Aluthwala' AS city_en
  UNION ALL
  SELECT '80340' AS postal_code, 'POST_OFFICE' AS type, 'Watugedara' AS city_en
  UNION ALL
  SELECT '80350' AS postal_code, 'POST_OFFICE' AS type, 'Uragasmanhandiya' AS city_en
  UNION ALL
  SELECT '80352' AS postal_code, 'POST_OFFICE' AS type, 'Uragaha' AS city_en
  UNION ALL
  SELECT '80354' AS postal_code, 'POST_OFFICE' AS type, 'Rantotuvila' AS city_en
  UNION ALL
  SELECT '80360' AS postal_code, 'POST_OFFICE' AS type, 'Karandeniya' AS city_en
  UNION ALL
  SELECT '80395' AS postal_code, 'POST_OFFICE' AS type, 'Kurundugaha Hethekma' AS city_en
  UNION ALL
  SELECT '80400' AS postal_code, 'POST_OFFICE' AS type, 'Elpitiya' AS city_en
  UNION ALL
  SELECT '80402' AS postal_code, 'POST_OFFICE' AS type, 'Ella Tanabaddegama' AS city_en
  UNION ALL
  SELECT '80406' AS postal_code, 'POST_OFFICE' AS type, 'Talgaspe' AS city_en
  UNION ALL
  SELECT '80408' AS postal_code, 'POST_OFFICE' AS type, 'Porawagama' AS city_en
  UNION ALL
  SELECT '80416' AS postal_code, 'POST_OFFICE' AS type, 'Navadagala' AS city_en
  UNION ALL
  SELECT '80420' AS postal_code, 'POST_OFFICE' AS type, 'Pitigala' AS city_en
  UNION ALL
  SELECT '80422' AS postal_code, 'POST_OFFICE' AS type, 'Amugoda' AS city_en
  UNION ALL
  SELECT '80424' AS postal_code, 'POST_OFFICE' AS type, 'Mattaka' AS city_en
  UNION ALL
  SELECT '80432' AS postal_code, 'POST_OFFICE' AS type, 'Ihala Hewessa' AS city_en
  UNION ALL
  SELECT '80440' AS postal_code, 'POST_OFFICE' AS type, 'Ganegoda' AS city_en
  UNION ALL
  SELECT '80458' AS postal_code, 'POST_OFFICE' AS type, 'Ethkandura' AS city_en
  UNION ALL
  SELECT '80460' AS postal_code, 'POST_OFFICE' AS type, 'Kahaduwa' AS city_en
  UNION ALL
  SELECT '80470' AS postal_code, 'POST_OFFICE' AS type, 'Talgaswala' AS city_en
  UNION ALL
  SELECT '80500' AS postal_code, 'POST_OFFICE' AS type, 'Bentota' AS city_en
  UNION ALL
  SELECT '80502' AS postal_code, 'POST_OFFICE' AS type, 'Gonagalapura' AS city_en
  UNION ALL
  SELECT '80506' AS postal_code, 'POST_OFFICE' AS type, 'Haburugala' AS city_en
  UNION ALL
  SELECT '80508' AS postal_code, 'POST_OFFICE' AS type, 'Miriswatte' AS city_en
  UNION ALL
  SELECT '80510' AS postal_code, 'POST_OFFICE' AS type, 'Induruwa' AS city_en
  UNION ALL
  SELECT '80550' AS postal_code, 'POST_OFFICE' AS type, 'Balapitiya' AS city_en
  UNION ALL
  SELECT '80562' AS postal_code, 'POST_OFFICE' AS type, 'Ahungalla' AS city_en
  UNION ALL
  SELECT '80570' AS postal_code, 'POST_OFFICE' AS type, 'Kosgoda' AS city_en
  UNION ALL
  SELECT '80600' AS postal_code, 'POST_OFFICE' AS type, 'Unawatuna' AS city_en
  UNION ALL
  SELECT '80615' AS postal_code, 'POST_OFFICE' AS type, 'Talpe' AS city_en
  UNION ALL
  SELECT '80630' AS postal_code, 'POST_OFFICE' AS type, 'Habaraduwa' AS city_en
  UNION ALL
  SELECT '80650' AS postal_code, 'POST_OFFICE' AS type, 'Ahangama' AS city_en
  UNION ALL
  SELECT '80654' AS postal_code, 'POST_OFFICE' AS type, 'Dikkumbura' AS city_en
  UNION ALL
  SELECT '81000' AS postal_code, 'POST_OFFICE' AS type, 'Matara' AS city_en
  UNION ALL
  SELECT '81017' AS postal_code, 'POST_OFFICE' AS type, 'Navimana' AS city_en
  UNION ALL
  SELECT '81020' AS postal_code, 'POST_OFFICE' AS type, 'Kekanadura' AS city_en
  UNION ALL
  SELECT '81030' AS postal_code, 'POST_OFFICE' AS type, 'Ratmale' AS city_en
  UNION ALL
  SELECT '81032' AS postal_code, 'POST_OFFICE' AS type, 'Aparekka' AS city_en
  UNION ALL
  SELECT '81034' AS postal_code, 'POST_OFFICE' AS type, 'Yatiyana' AS city_en
  UNION ALL
  SELECT '81038' AS postal_code, 'POST_OFFICE' AS type, 'Diyagaha' AS city_en
  UNION ALL
  SELECT '81050' AS postal_code, 'POST_OFFICE' AS type, 'Palatuwa' AS city_en
  UNION ALL
  SELECT '81051' AS postal_code, 'POST_OFFICE' AS type, 'Sultanagoda' AS city_en
  UNION ALL
  SELECT '81060' AS postal_code, 'POST_OFFICE' AS type, 'Telijjawila' AS city_en
  UNION ALL
  SELECT '81064' AS postal_code, 'POST_OFFICE' AS type, 'Ransegoda' AS city_en
  UNION ALL
  SELECT '81070' AS postal_code, 'POST_OFFICE' AS type, 'Makandura' AS city_en
  UNION ALL
  SELECT '81071' AS postal_code, 'POST_OFFICE' AS type, 'Mulatiyana Junction' AS city_en
  UNION ALL
  SELECT '81072' AS postal_code, 'POST_OFFICE' AS type, 'Gomila Mawarala' AS city_en
  UNION ALL
  SELECT '81073' AS postal_code, 'POST_OFFICE' AS type, 'Gombaddala' AS city_en
  UNION ALL
  SELECT '81074' AS postal_code, 'POST_OFFICE' AS type, 'Rotumba' AS city_en
  UNION ALL
  SELECT '81075' AS postal_code, 'POST_OFFICE' AS type, 'Panakaduwa' AS city_en
  UNION ALL
  SELECT '81082' AS postal_code, 'POST_OFFICE' AS type, 'Karagoda Uyangoda' AS city_en
  UNION ALL
  SELECT '81092' AS postal_code, 'POST_OFFICE' AS type, 'Nadugala' AS city_en
  UNION ALL
  SELECT '81100' AS postal_code, 'POST_OFFICE' AS type, 'Kamburupitiya' AS city_en
  UNION ALL
  SELECT '81106' AS postal_code, 'POST_OFFICE' AS type, 'Karaputugala' AS city_en
  UNION ALL
  SELECT '81108' AS postal_code, 'POST_OFFICE' AS type, 'Horapawita' AS city_en
  UNION ALL
  SELECT '81160' AS postal_code, 'POST_OFFICE' AS type, 'Devinuwara' AS city_en
  UNION ALL
  SELECT '81170' AS postal_code, 'POST_OFFICE' AS type, 'Gandara' AS city_en
  UNION ALL
  SELECT '81180' AS postal_code, 'POST_OFFICE' AS type, 'Kottegoda' AS city_en
  UNION ALL
  SELECT '81200' AS postal_code, 'POST_OFFICE' AS type, 'Dikwella' AS city_en
  UNION ALL
  SELECT '81220' AS postal_code, 'POST_OFFICE' AS type, 'Walasgala' AS city_en
  UNION ALL
  SELECT '81230' AS postal_code, 'POST_OFFICE' AS type, 'Urugamuwa' AS city_en
  UNION ALL
  SELECT '81280' AS postal_code, 'POST_OFFICE' AS type, 'Thihagoda' AS city_en
  UNION ALL
  SELECT '81290' AS postal_code, 'POST_OFFICE' AS type, 'Puhulwella' AS city_en
  UNION ALL
  SELECT '81294' AS postal_code, 'POST_OFFICE' AS type, 'Walakanda' AS city_en
  UNION ALL
  SELECT '81300' AS postal_code, 'POST_OFFICE' AS type, 'Hakmana' AS city_en
  UNION ALL
  SELECT '81302' AS postal_code, 'POST_OFFICE' AS type, 'Narawelpita' AS city_en
  UNION ALL
  SELECT '81308' AS postal_code, 'POST_OFFICE' AS type, 'Karatota' AS city_en
  UNION ALL
  SELECT '81312' AS postal_code, 'POST_OFFICE' AS type, 'Miella' AS city_en
  UNION ALL
  SELECT '81314' AS postal_code, 'POST_OFFICE' AS type, 'Denagama' AS city_en
  UNION ALL
  SELECT '81316' AS postal_code, 'POST_OFFICE' AS type, 'Radawela' AS city_en
  UNION ALL
  SELECT '81320' AS postal_code, 'POST_OFFICE' AS type, 'Deiyandara' AS city_en
  UNION ALL
  SELECT '81322' AS postal_code, 'POST_OFFICE' AS type, 'Parapamulla' AS city_en
  UNION ALL
  SELECT '81326' AS postal_code, 'POST_OFFICE' AS type, 'Handugala' AS city_en
  UNION ALL
  SELECT '81400' AS postal_code, 'POST_OFFICE' AS type, 'Akuressa' AS city_en
  UNION ALL
  SELECT '81402' AS postal_code, 'POST_OFFICE' AS type, 'Aturaliya' AS city_en
  UNION ALL
  SELECT '81404' AS postal_code, 'POST_OFFICE' AS type, 'Wilpita' AS city_en
  UNION ALL
  SELECT '81408' AS postal_code, 'POST_OFFICE' AS type, 'Godapitiya' AS city_en
  UNION ALL
  SELECT '81412' AS postal_code, 'POST_OFFICE' AS type, 'Bopagoda' AS city_en
  UNION ALL
  SELECT '81414' AS postal_code, 'POST_OFFICE' AS type, 'Urumutta' AS city_en
  UNION ALL
  SELECT '81416' AS postal_code, 'POST_OFFICE' AS type, 'Maramba' AS city_en
  UNION ALL
  SELECT '81422' AS postal_code, 'POST_OFFICE' AS type, 'Diyalape' AS city_en
  UNION ALL
  SELECT '81424' AS postal_code, 'POST_OFFICE' AS type, 'Maliduwa' AS city_en
  UNION ALL
  SELECT '81450' AS postal_code, 'POST_OFFICE' AS type, 'Pitabeddara' AS city_en
  UNION ALL
  SELECT '81452' AS postal_code, 'POST_OFFICE' AS type, 'Deegala Lenama' AS city_en
  UNION ALL
  SELECT '81454' AS postal_code, 'POST_OFFICE' AS type, 'Derangala' AS city_en
  UNION ALL
  SELECT '81456' AS postal_code, 'POST_OFFICE' AS type, 'Kiriwelkele' AS city_en
  UNION ALL
  SELECT '81462' AS postal_code, 'POST_OFFICE' AS type, 'Siyambalagoda' AS city_en
  UNION ALL
  SELECT '81470' AS postal_code, 'POST_OFFICE' AS type, 'Morawaka' AS city_en
  UNION ALL
  SELECT '81472' AS postal_code, 'POST_OFFICE' AS type, 'Pahala Millawa' AS city_en
  UNION ALL
  SELECT '81474' AS postal_code, 'POST_OFFICE' AS type, 'Paragala' AS city_en
  UNION ALL
  SELECT '81475' AS postal_code, 'POST_OFFICE' AS type, 'Alapaladeniya' AS city_en
  UNION ALL
  SELECT '81476' AS postal_code, 'POST_OFFICE' AS type, 'Dangala' AS city_en
  UNION ALL
  SELECT '81477' AS postal_code, 'POST_OFFICE' AS type, 'Dellawa' AS city_en
  UNION ALL
  SELECT '81478' AS postal_code, 'POST_OFFICE' AS type, 'Kalubowitiyana' AS city_en
  UNION ALL
  SELECT '81479' AS postal_code, 'POST_OFFICE' AS type, 'Waralla' AS city_en
  UNION ALL
  SELECT '81480' AS postal_code, 'POST_OFFICE' AS type, 'Kotapola' AS city_en
  UNION ALL
  SELECT '81500' AS postal_code, 'POST_OFFICE' AS type, 'Deniyaya' AS city_en
  UNION ALL
  SELECT '81508' AS postal_code, 'POST_OFFICE' AS type, 'Viharahena' AS city_en
  UNION ALL
  SELECT '81514' AS postal_code, 'POST_OFFICE' AS type, 'Kiriweldola' AS city_en
  UNION ALL
  SELECT '81522' AS postal_code, 'POST_OFFICE' AS type, 'Kolawenigama' AS city_en
  UNION ALL
  SELECT '81524' AS postal_code, 'POST_OFFICE' AS type, 'Mederipitiya' AS city_en
  UNION ALL
  SELECT '81526' AS postal_code, 'POST_OFFICE' AS type, 'Lankagama' AS city_en
  UNION ALL
  SELECT '81532' AS postal_code, 'POST_OFFICE' AS type, 'Moragala Kirilipone' AS city_en
  UNION ALL
  SELECT '81538' AS postal_code, 'POST_OFFICE' AS type, 'Pothdeniya' AS city_en
  UNION ALL
  SELECT '81541' AS postal_code, 'POST_OFFICE' AS type, 'Beralapanathara' AS city_en
  UNION ALL
  SELECT '81600' AS postal_code, 'POST_OFFICE' AS type, 'Urubokka' AS city_en
  UNION ALL
  SELECT '81612' AS postal_code, 'POST_OFFICE' AS type, 'Dampahala' AS city_en
  UNION ALL
  SELECT '81614' AS postal_code, 'POST_OFFICE' AS type, 'Bengamuwa' AS city_en
  UNION ALL
  SELECT '81615' AS postal_code, 'POST_OFFICE' AS type, 'Pasgoda' AS city_en
  UNION ALL
  SELECT '81700' AS postal_code, 'POST_OFFICE' AS type, 'Weligama' AS city_en
  UNION ALL
  SELECT '81720' AS postal_code, 'POST_OFFICE' AS type, 'Welipitiya' AS city_en
  UNION ALL
  SELECT '81722' AS postal_code, 'POST_OFFICE' AS type, 'Penetiyana' AS city_en
  UNION ALL
  SELECT '81730' AS postal_code, 'POST_OFFICE' AS type, 'Denipitiya' AS city_en
  UNION ALL
  SELECT '81740' AS postal_code, 'POST_OFFICE' AS type, 'Mirissa' AS city_en
  UNION ALL
  SELECT '81750' AS postal_code, 'POST_OFFICE' AS type, 'Kamburugamuwa' AS city_en
  UNION ALL
  SELECT '82000' AS postal_code, 'POST_OFFICE' AS type, 'Hambantota' AS city_en
  UNION ALL
  SELECT '82001' AS postal_code, 'POST_OFFICE' AS type, 'Mirijjawila' AS city_en
  UNION ALL
  SELECT '82002' AS postal_code, 'POST_OFFICE' AS type, 'Bundala' AS city_en
  UNION ALL
  SELECT '82004' AS postal_code, 'POST_OFFICE' AS type, 'Weligatta' AS city_en
  UNION ALL
  SELECT '82005' AS postal_code, 'POST_OFFICE' AS type, 'Bandagiriya Colony' AS city_en
  UNION ALL
  SELECT '82006' AS postal_code, 'POST_OFFICE' AS type, 'Gonnoruwa' AS city_en
  UNION ALL
  SELECT '82008' AS postal_code, 'POST_OFFICE' AS type, 'Pahala Andarawewa' AS city_en
  UNION ALL
  SELECT '82010' AS postal_code, 'POST_OFFICE' AS type, 'Sooriyawewa Town' AS city_en
  UNION ALL
  SELECT '82013' AS postal_code, 'POST_OFFICE' AS type, 'Hathporuwa' AS city_en
  UNION ALL
  SELECT '82014' AS postal_code, 'POST_OFFICE' AS type, 'Migahajandura' AS city_en
  UNION ALL
  SELECT '82016' AS postal_code, 'POST_OFFICE' AS type, 'Mahagalwewa' AS city_en
  UNION ALL
  SELECT '82018' AS postal_code, 'POST_OFFICE' AS type, 'Ranmuduwewa' AS city_en
  UNION ALL
  SELECT '82033' AS postal_code, 'POST_OFFICE' AS type, 'Rambukpotha' AS city_en
  UNION ALL
  SELECT '82100' AS postal_code, 'POST_OFFICE' AS type, 'Ambalantota' AS city_en
  UNION ALL
  SELECT '82102' AS postal_code, 'POST_OFFICE' AS type, 'Beragama' AS city_en
  UNION ALL
  SELECT '82103' AS postal_code, 'POST_OFFICE' AS type, 'Telawilla' AS city_en
  UNION ALL
  SELECT '82104' AS postal_code, 'POST_OFFICE' AS type, 'Goda Koggalla' AS city_en
  UNION ALL
  SELECT '82106' AS postal_code, 'POST_OFFICE' AS type, 'Ruhunu Ridiyagama' AS city_en
  UNION ALL
  SELECT '82108' AS postal_code, 'POST_OFFICE' AS type, 'Lunama' AS city_en
  UNION ALL
  SELECT '82109' AS postal_code, 'POST_OFFICE' AS type, 'Mamadala' AS city_en
  UNION ALL
  SELECT '82110' AS postal_code, 'POST_OFFICE' AS type, 'Barawakumbuka' AS city_en
  UNION ALL
  SELECT '82120' AS postal_code, 'POST_OFFICE' AS type, 'Hungama' AS city_en
  UNION ALL
  SELECT '82125' AS postal_code, 'POST_OFFICE' AS type, 'Ranna' AS city_en
  UNION ALL
  SELECT '82126' AS postal_code, 'POST_OFFICE' AS type, 'Kahandamodara' AS city_en
  UNION ALL
  SELECT '82135' AS postal_code, 'POST_OFFICE' AS type, 'Netolpitiya' AS city_en
  UNION ALL
  SELECT '82200' AS postal_code, 'POST_OFFICE' AS type, 'Tangalla' AS city_en
  UNION ALL
  SELECT '82220' AS postal_code, 'POST_OFFICE' AS type, 'Angunakolapelessa' AS city_en
  UNION ALL
  SELECT '82232' AS postal_code, 'POST_OFFICE' AS type, 'Vitharandeniya' AS city_en
  UNION ALL
  SELECT '82240' AS postal_code, 'POST_OFFICE' AS type, 'Weeraketiya' AS city_en
  UNION ALL
  SELECT '82242' AS postal_code, 'POST_OFFICE' AS type, 'Mulkirigala' AS city_en
  UNION ALL
  SELECT '82246' AS postal_code, 'POST_OFFICE' AS type, 'Wekandawela' AS city_en
  UNION ALL
  SELECT '82248' AS postal_code, 'POST_OFFICE' AS type, 'Hakuruwela' AS city_en
  UNION ALL
  SELECT '82252' AS postal_code, 'POST_OFFICE' AS type, 'Julampitiya' AS city_en
  UNION ALL
  SELECT '82254' AS postal_code, 'POST_OFFICE' AS type, 'Medamulana' AS city_en
  UNION ALL
  SELECT '82270' AS postal_code, 'POST_OFFICE' AS type, 'Middeniya' AS city_en
  UNION ALL
  SELECT '82274' AS postal_code, 'POST_OFFICE' AS type, 'Kariyamaditta' AS city_en
  UNION ALL
  SELECT '82276' AS postal_code, 'POST_OFFICE' AS type, 'Ratmalwala' AS city_en
  UNION ALL
  SELECT '82278' AS postal_code, 'POST_OFFICE' AS type, 'Uswewa' AS city_en
  UNION ALL
  SELECT '82300' AS postal_code, 'POST_OFFICE' AS type, 'Nakulugamuwa' AS city_en
  UNION ALL
  SELECT '82400' AS postal_code, 'POST_OFFICE' AS type, 'Beliatta' AS city_en
  UNION ALL
  SELECT '82412' AS postal_code, 'POST_OFFICE' AS type, 'Ihala Beligalla' AS city_en
  UNION ALL
  SELECT '82414' AS postal_code, 'POST_OFFICE' AS type, 'Nihiluwa' AS city_en
  UNION ALL
  SELECT '82416' AS postal_code, 'POST_OFFICE' AS type, 'Modarawana' AS city_en
  UNION ALL
  SELECT '82418' AS postal_code, 'POST_OFFICE' AS type, 'Yatigala' AS city_en
  UNION ALL
  SELECT '82420' AS postal_code, 'POST_OFFICE' AS type, 'Getamanna' AS city_en
  UNION ALL
  SELECT '82450' AS postal_code, 'POST_OFFICE' AS type, 'Walasmulla' AS city_en
  UNION ALL
  SELECT '82454' AS postal_code, 'POST_OFFICE' AS type, 'Pallekanda' AS city_en
  UNION ALL
  SELECT '82456' AS postal_code, 'POST_OFFICE' AS type, 'Horewelagoda' AS city_en
  UNION ALL
  SELECT '82458' AS postal_code, 'POST_OFFICE' AS type, 'Bowalagama' AS city_en
  UNION ALL
  SELECT '82462' AS postal_code, 'POST_OFFICE' AS type, 'Ittademaliya' AS city_en
  UNION ALL
  SELECT '82500' AS postal_code, 'POST_OFFICE' AS type, 'Katuwana' AS city_en
  UNION ALL
  SELECT '82504' AS postal_code, 'POST_OFFICE' AS type, 'Uda gomadiya' AS city_en
  UNION ALL
  SELECT '82506' AS postal_code, 'POST_OFFICE' AS type, 'Gangulandeniya' AS city_en
  UNION ALL
  SELECT '82550' AS postal_code, 'POST_OFFICE' AS type, 'Kirama' AS city_en
  UNION ALL
  SELECT '82554' AS postal_code, 'POST_OFFICE' AS type, 'Rammalawarapitiya' AS city_en
  UNION ALL
  SELECT '82600' AS postal_code, 'POST_OFFICE' AS type, 'Tissamaharama' AS city_en
  UNION ALL
  SELECT '82602' AS postal_code, 'POST_OFFICE' AS type, 'Gonagamuwa Uduwila' AS city_en
  UNION ALL
  SELECT '82608' AS postal_code, 'POST_OFFICE' AS type, 'Magama' AS city_en
  UNION ALL
  SELECT '82612' AS postal_code, 'POST_OFFICE' AS type, 'Ranakeliya' AS city_en
  UNION ALL
  SELECT '82614' AS postal_code, 'POST_OFFICE' AS type, 'Kirinda' AS city_en
  UNION ALL
  SELECT '82615' AS postal_code, 'POST_OFFICE' AS type, 'Weerawila New Town' AS city_en
  UNION ALL
  SELECT '82618' AS postal_code, 'POST_OFFICE' AS type, 'Beralihela' AS city_en
  UNION ALL
  SELECT '82619' AS postal_code, 'POST_OFFICE' AS type, 'Ellagala' AS city_en
  UNION ALL
  SELECT '82622' AS postal_code, 'POST_OFFICE' AS type, 'Kawantissapura' AS city_en
  UNION ALL
  SELECT '82632' AS postal_code, 'POST_OFFICE' AS type, 'Weerawila' AS city_en
  UNION ALL
  SELECT '82634' AS postal_code, 'POST_OFFICE' AS type, 'Lunugamwehera' AS city_en
  UNION ALL
  SELECT '82636' AS postal_code, 'POST_OFFICE' AS type, 'Padawkema' AS city_en
  UNION ALL
  SELECT '82638' AS postal_code, 'POST_OFFICE' AS type, 'Udamattala' AS city_en
  UNION ALL
  SELECT '90000' AS postal_code, 'POST_OFFICE' AS type, 'Badulla' AS city_en
  UNION ALL
  SELECT '90006' AS postal_code, 'POST_OFFICE' AS type, 'Kohowilakandura' AS city_en
  UNION ALL
  SELECT '90008' AS postal_code, 'POST_OFFICE' AS type, 'Soranatota' AS city_en
  UNION ALL
  SELECT '90012' AS postal_code, 'POST_OFFICE' AS type, 'Thimbirigaspitiya' AS city_en
  UNION ALL
  SELECT '90013' AS postal_code, 'POST_OFFICE' AS type, 'Egodawela' AS city_en
  UNION ALL
  SELECT '90014' AS postal_code, 'POST_OFFICE' AS type, 'Taldena' AS city_en
  UNION ALL
  SELECT '90015' AS postal_code, 'POST_OFFICE' AS type, 'Meegahakivula' AS city_en
  UNION ALL
  SELECT '90016' AS postal_code, 'POST_OFFICE' AS type, 'Ketawatta' AS city_en
  UNION ALL
  SELECT '90017' AS postal_code, 'POST_OFFICE' AS type, 'Arawa' AS city_en
  UNION ALL
  SELECT '90019' AS postal_code, 'POST_OFFICE' AS type, 'Baduluoya' AS city_en
  UNION ALL
  SELECT '90020' AS postal_code, 'POST_OFFICE' AS type, 'Kandaketiya' AS city_en
  UNION ALL
  SELECT '90022' AS postal_code, 'POST_OFFICE' AS type, 'Maliyadda' AS city_en
  UNION ALL
  SELECT '90026' AS postal_code, 'POST_OFFICE' AS type, 'Rilpola' AS city_en
  UNION ALL
  SELECT '90027' AS postal_code, 'POST_OFFICE' AS type, 'Silpolagama' AS city_en
  UNION ALL
  SELECT '90028' AS postal_code, 'POST_OFFICE' AS type, 'Spring Valley' AS city_en
  UNION ALL
  SELECT '90034' AS postal_code, 'POST_OFFICE' AS type, 'Wineethagama' AS city_en
  UNION ALL
  SELECT '90035' AS postal_code, 'POST_OFFICE' AS type, 'Welgollagama' AS city_en
  UNION ALL
  SELECT '90042' AS postal_code, 'POST_OFFICE' AS type, 'Nelumgama' AS city_en
  UNION ALL
  SELECT '90044' AS postal_code, 'POST_OFFICE' AS type, 'Sirimalgoda' AS city_en
  UNION ALL
  SELECT '90046' AS postal_code, 'POST_OFFICE' AS type, 'Kuttiyagolla' AS city_en
  UNION ALL
  SELECT '90048' AS postal_code, 'POST_OFFICE' AS type, 'Kendagolla' AS city_en
  UNION ALL
  SELECT '90052' AS postal_code, 'POST_OFFICE' AS type, 'Kahataruppa' AS city_en
  UNION ALL
  SELECT '90060' AS postal_code, 'POST_OFFICE' AS type, 'Hali Ela' AS city_en
  UNION ALL
  SELECT '90061' AS postal_code, 'POST_OFFICE' AS type, 'Uva Uduwara' AS city_en
  UNION ALL
  SELECT '90062' AS postal_code, 'POST_OFFICE' AS type, 'Uva Deegalla' AS city_en
  UNION ALL
  SELECT '90063' AS postal_code, 'POST_OFFICE' AS type, 'Jangulla' AS city_en
  UNION ALL
  SELECT '90064' AS postal_code, 'POST_OFFICE' AS type, 'Narangala' AS city_en
  UNION ALL
  SELECT '90065' AS postal_code, 'POST_OFFICE' AS type, 'Galauda' AS city_en
  UNION ALL
  SELECT '90066' AS postal_code, 'POST_OFFICE' AS type, 'Beramada' AS city_en
  UNION ALL
  SELECT '90067' AS postal_code, 'POST_OFFICE' AS type, 'Godunna' AS city_en
  UNION ALL
  SELECT '90068' AS postal_code, 'POST_OFFICE' AS type, 'Landewela' AS city_en
  UNION ALL
  SELECT '90070' AS postal_code, 'POST_OFFICE' AS type, 'Kandegedara' AS city_en
  UNION ALL
  SELECT '90071' AS postal_code, 'POST_OFFICE' AS type, 'Pathanewatta' AS city_en
  UNION ALL
  SELECT '90072' AS postal_code, 'POST_OFFICE' AS type, 'Tennepanguwa' AS city_en
  UNION ALL
  SELECT '90080' AS postal_code, 'POST_OFFICE' AS type, 'Demodara' AS city_en
  UNION ALL
  SELECT '90082' AS postal_code, 'POST_OFFICE' AS type, 'Gawarawela' AS city_en
  UNION ALL
  SELECT '90090' AS postal_code, 'POST_OFFICE' AS type, 'Ella' AS city_en
  UNION ALL
  SELECT '90091' AS postal_code, 'POST_OFFICE' AS type, 'Uva Karandagolla' AS city_en
  UNION ALL
  SELECT '90092' AS postal_code, 'POST_OFFICE' AS type, 'Ballaketuwa' AS city_en
  UNION ALL
  SELECT '90094' AS postal_code, 'POST_OFFICE' AS type, 'Helapupula' AS city_en
  UNION ALL
  SELECT '90100' AS postal_code, 'POST_OFFICE' AS type, 'Bandarawela' AS city_en
  UNION ALL
  SELECT '90102' AS postal_code, 'POST_OFFICE' AS type, 'Kebillawela' AS city_en
  UNION ALL
  SELECT '90104' AS postal_code, 'POST_OFFICE' AS type, 'Doolgolla' AS city_en
  UNION ALL
  SELECT '90106' AS postal_code, 'POST_OFFICE' AS type, 'Liyanagahawela' AS city_en
  UNION ALL
  SELECT '90107' AS postal_code, 'POST_OFFICE' AS type, 'Poonagala' AS city_en
  UNION ALL
  SELECT '90108' AS postal_code, 'POST_OFFICE' AS type, 'Ambadandegama' AS city_en
  UNION ALL
  SELECT '90112' AS postal_code, 'POST_OFFICE' AS type, 'Heeloya' AS city_en
  UNION ALL
  SELECT '90114' AS postal_code, 'POST_OFFICE' AS type, 'Makulella' AS city_en
  UNION ALL
  SELECT '90122' AS postal_code, 'POST_OFFICE' AS type, 'Helahalpe' AS city_en
  UNION ALL
  SELECT '90123' AS postal_code, 'POST_OFFICE' AS type, 'Uva Neluwa' AS city_en
  UNION ALL
  SELECT '90132' AS postal_code, 'POST_OFFICE' AS type, 'Diganatenna' AS city_en
  UNION ALL
  SELECT '90134' AS postal_code, 'POST_OFFICE' AS type, 'Mirahawatta' AS city_en
  UNION ALL
  SELECT '90138' AS postal_code, 'POST_OFFICE' AS type, 'Malitta' AS city_en
  UNION ALL
  SELECT '90139' AS postal_code, 'POST_OFFICE' AS type, 'Uva Maligatenna' AS city_en
  UNION ALL
  SELECT '90140' AS postal_code, 'POST_OFFICE' AS type, 'Ettampitiya' AS city_en
  UNION ALL
  SELECT '90150' AS postal_code, 'POST_OFFICE' AS type, 'Diyatalawa' AS city_en
  UNION ALL
  SELECT '90160' AS postal_code, 'POST_OFFICE' AS type, 'Haputale' AS city_en
  UNION ALL
  SELECT '90161' AS postal_code, 'POST_OFFICE' AS type, 'Dambetenna' AS city_en
  UNION ALL
  SELECT '90163' AS postal_code, 'POST_OFFICE' AS type, 'Horadorowwa' AS city_en
  UNION ALL
  SELECT '90164' AS postal_code, 'POST_OFFICE' AS type, 'Ratkarawwa' AS city_en
  UNION ALL
  SELECT '90165' AS postal_code, 'POST_OFFICE' AS type, 'Nikapotha' AS city_en
  UNION ALL
  SELECT '90166' AS postal_code, 'POST_OFFICE' AS type, 'Akkaraseeya' AS city_en
  UNION ALL
  SELECT '90167' AS postal_code, 'POST_OFFICE' AS type, 'Idalgashinna' AS city_en
  UNION ALL
  SELECT '90168' AS postal_code, 'POST_OFFICE' AS type, 'Ohiya' AS city_en
  UNION ALL
  SELECT '90170' AS postal_code, 'POST_OFFICE' AS type, 'Boralanda' AS city_en
  UNION ALL
  SELECT '90171' AS postal_code, 'POST_OFFICE' AS type, 'Pitapola' AS city_en
  UNION ALL
  SELECT '90180' AS postal_code, 'POST_OFFICE' AS type, 'Haldummulla' AS city_en
  UNION ALL
  SELECT '90183' AS postal_code, 'POST_OFFICE' AS type, 'Soragune' AS city_en
  UNION ALL
  SELECT '90184' AS postal_code, 'POST_OFFICE' AS type, 'Kirawanagama' AS city_en
  UNION ALL
  SELECT '90186' AS postal_code, 'POST_OFFICE' AS type, 'Kalupahana' AS city_en
  UNION ALL
  SELECT '90188' AS postal_code, 'POST_OFFICE' AS type, 'Uva Tenna' AS city_en
  UNION ALL
  SELECT '90190' AS postal_code, 'POST_OFFICE' AS type, 'Koslanda' AS city_en
  UNION ALL
  SELECT '90192' AS postal_code, 'POST_OFFICE' AS type, 'Uva Mawelagama' AS city_en
  UNION ALL
  SELECT '90200' AS postal_code, 'POST_OFFICE' AS type, 'Welimada' AS city_en
  UNION ALL
  SELECT '90204' AS postal_code, 'POST_OFFICE' AS type, 'Amunumulla' AS city_en
  UNION ALL
  SELECT '90206' AS postal_code, 'POST_OFFICE' AS type, 'Galedanda' AS city_en
  UNION ALL
  SELECT '90208' AS postal_code, 'POST_OFFICE' AS type, 'Gurutalawa' AS city_en
  UNION ALL
  SELECT '90212' AS postal_code, 'POST_OFFICE' AS type, 'Puhulpola' AS city_en
  UNION ALL
  SELECT '90214' AS postal_code, 'POST_OFFICE' AS type, 'Dikkapitiya' AS city_en
  UNION ALL
  SELECT '90216' AS postal_code, 'POST_OFFICE' AS type, 'Nugatalawa' AS city_en
  UNION ALL
  SELECT '90218' AS postal_code, 'POST_OFFICE' AS type, 'Medawela Udukinda' AS city_en
  UNION ALL
  SELECT '90222' AS postal_code, 'POST_OFFICE' AS type, 'Perawella' AS city_en
  UNION ALL
  SELECT '90224' AS postal_code, 'POST_OFFICE' AS type, 'Hangunnawa' AS city_en
  UNION ALL
  SELECT '90226' AS postal_code, 'POST_OFFICE' AS type, 'Uduhawara' AS city_en
  UNION ALL
  SELECT '90230' AS postal_code, 'POST_OFFICE' AS type, 'Uva Paranagama' AS city_en
  UNION ALL
  SELECT '90300' AS postal_code, 'POST_OFFICE' AS type, 'Ambagasdowa' AS city_en
  UNION ALL
  SELECT '90302' AS postal_code, 'POST_OFFICE' AS type, 'Bowela' AS city_en
  UNION ALL
  SELECT '90310' AS postal_code, 'POST_OFFICE' AS type, 'Lunuwatte' AS city_en
  UNION ALL
  SELECT '90322' AS postal_code, 'POST_OFFICE' AS type, 'Bambarapana' AS city_en
  UNION ALL
  SELECT '90324' AS postal_code, 'POST_OFFICE' AS type, 'Dimbulana' AS city_en
  UNION ALL
  SELECT '90326' AS postal_code, 'POST_OFFICE' AS type, 'Ambagahawatte' AS city_en
  UNION ALL
  SELECT '90328' AS postal_code, 'POST_OFFICE' AS type, 'Maspanna' AS city_en
  UNION ALL
  SELECT '90329' AS postal_code, 'POST_OFFICE' AS type, 'Yalagamuwa' AS city_en
  UNION ALL
  SELECT '90350' AS postal_code, 'POST_OFFICE' AS type, 'Keppetipola' AS city_en
  UNION ALL
  SELECT '90352' AS postal_code, 'POST_OFFICE' AS type, 'Kalubululanda' AS city_en
  UNION ALL
  SELECT '90354' AS postal_code, 'POST_OFFICE' AS type, 'Bogahakumbura' AS city_en
  UNION ALL
  SELECT '90356' AS postal_code, 'POST_OFFICE' AS type, 'Kandepuhulpola' AS city_en
  UNION ALL
  SELECT '90358' AS postal_code, 'POST_OFFICE' AS type, 'Hewanakumbura' AS city_en
  UNION ALL
  SELECT '90362' AS postal_code, 'POST_OFFICE' AS type, 'Boragas' AS city_en
  UNION ALL
  SELECT '90364' AS postal_code, 'POST_OFFICE' AS type, 'Silmiyapura' AS city_en
  UNION ALL
  SELECT '90500' AS postal_code, 'POST_OFFICE' AS type, 'Passara' AS city_en
  UNION ALL
  SELECT '90502' AS postal_code, 'POST_OFFICE' AS type, 'Bibilegama' AS city_en
  UNION ALL
  SELECT '90504' AS postal_code, 'POST_OFFICE' AS type, 'Miriyabedda' AS city_en
  UNION ALL
  SELECT '90506' AS postal_code, 'POST_OFFICE' AS type, 'Kotamuduna' AS city_en
  UNION ALL
  SELECT '90508' AS postal_code, 'POST_OFFICE' AS type, 'Hingurukaduwa' AS city_en
  UNION ALL
  SELECT '90512' AS postal_code, 'POST_OFFICE' AS type, 'Gamewela' AS city_en
  UNION ALL
  SELECT '90517' AS postal_code, 'POST_OFFICE' AS type, 'Madugastalawa' AS city_en
  UNION ALL
  SELECT '90518' AS postal_code, 'POST_OFFICE' AS type, 'Medawelagama' AS city_en
  UNION ALL
  SELECT '90522' AS postal_code, 'POST_OFFICE' AS type, 'Pelgahatenna' AS city_en
  UNION ALL
  SELECT '90524' AS postal_code, 'POST_OFFICE' AS type, 'Hopton' AS city_en
  UNION ALL
  SELECT '90530' AS postal_code, 'POST_OFFICE' AS type, 'Lunugala' AS city_en
  UNION ALL
  SELECT '90532' AS postal_code, 'POST_OFFICE' AS type, 'Arawakumbura' AS city_en
  UNION ALL
  SELECT '90534' AS postal_code, 'POST_OFFICE' AS type, 'Pallekiruwa' AS city_en
  UNION ALL
  SELECT '90535' AS postal_code, 'POST_OFFICE' AS type, 'Madolsima' AS city_en
  UNION ALL
  SELECT '90540' AS postal_code, 'POST_OFFICE' AS type, 'Metigahatenna' AS city_en
  UNION ALL
  SELECT '90542' AS postal_code, 'POST_OFFICE' AS type, 'Atakiriya' AS city_en
  UNION ALL
  SELECT '90544' AS postal_code, 'POST_OFFICE' AS type, 'Pitamaruwa' AS city_en
  UNION ALL
  SELECT '90546' AS postal_code, 'POST_OFFICE' AS type, 'Kalugahakandura' AS city_en
  UNION ALL
  SELECT '90580' AS postal_code, 'POST_OFFICE' AS type, 'Namunukula' AS city_en
  UNION ALL
  SELECT '90582' AS postal_code, 'POST_OFFICE' AS type, 'Maussagolla' AS city_en
  UNION ALL
  SELECT '90584' AS postal_code, 'POST_OFFICE' AS type, 'Miyanakandura' AS city_en
  UNION ALL
  SELECT '90607' AS postal_code, 'POST_OFFICE' AS type, 'Hewanwatta' AS city_en
  UNION ALL
  SELECT '90700' AS postal_code, 'POST_OFFICE' AS type, 'Mahiyanganaya' AS city_en
  UNION ALL
  SELECT '90702' AS postal_code, 'POST_OFFICE' AS type, 'Uraniya' AS city_en
  UNION ALL
  SELECT '90704' AS postal_code, 'POST_OFFICE' AS type, 'Rideemaliyadda' AS city_en
  UNION ALL
  SELECT '90706' AS postal_code, 'POST_OFFICE' AS type, 'Yalwela' AS city_en
  UNION ALL
  SELECT '90709' AS postal_code, 'POST_OFFICE' AS type, 'Dehigama' AS city_en
  UNION ALL
  SELECT '90712' AS postal_code, 'POST_OFFICE' AS type, 'Arawatte' AS city_en
  UNION ALL
  SELECT '90714' AS postal_code, 'POST_OFFICE' AS type, 'Dambana' AS city_en
  UNION ALL
  SELECT '90716' AS postal_code, 'POST_OFFICE' AS type, 'Wewatta' AS city_en
  UNION ALL
  SELECT '90718' AS postal_code, 'POST_OFFICE' AS type, 'Sorabora Colony' AS city_en
  UNION ALL
  SELECT '90722' AS postal_code, 'POST_OFFICE' AS type, 'Aluththarama' AS city_en
  UNION ALL
  SELECT '90724' AS postal_code, 'POST_OFFICE' AS type, 'Hebarawa' AS city_en
  UNION ALL
  SELECT '90726' AS postal_code, 'POST_OFFICE' AS type, 'Divulapelessa' AS city_en
  UNION ALL
  SELECT '90728' AS postal_code, 'POST_OFFICE' AS type, 'Kuruwitenna' AS city_en
  UNION ALL
  SELECT '90730' AS postal_code, 'POST_OFFICE' AS type, 'Mapakadawewa' AS city_en
  UNION ALL
  SELECT '90731' AS postal_code, 'POST_OFFICE' AS type, 'Pangaragammana' AS city_en
  UNION ALL
  SELECT '90734' AS postal_code, 'POST_OFFICE' AS type, 'Uva Tissapura' AS city_en
  UNION ALL
  SELECT '90736' AS postal_code, 'POST_OFFICE' AS type, 'Aluketiyawa' AS city_en
  UNION ALL
  SELECT '90738' AS postal_code, 'POST_OFFICE' AS type, 'Keselpotha' AS city_en
  UNION ALL
  SELECT '90750' AS postal_code, 'POST_OFFICE' AS type, 'Girandurukotte' AS city_en
  UNION ALL
  SELECT '90752' AS postal_code, 'POST_OFFICE' AS type, 'Galporuyaya' AS city_en
  UNION ALL
  SELECT '90754' AS postal_code, 'POST_OFFICE' AS type, 'Malgoda' AS city_en
  UNION ALL
  SELECT '90756' AS postal_code, 'POST_OFFICE' AS type, 'Pahalarathkinda' AS city_en
  UNION ALL
  SELECT '91000' AS postal_code, 'POST_OFFICE' AS type, 'Monaragala' AS city_en
  UNION ALL
  SELECT '91002' AS postal_code, 'POST_OFFICE' AS type, 'Pangura' AS city_en
  UNION ALL
  SELECT '91003' AS postal_code, 'POST_OFFICE' AS type, 'Nakkala' AS city_en
  UNION ALL
  SELECT '91004' AS postal_code, 'POST_OFFICE' AS type, 'Hulandawa' AS city_en
  UNION ALL
  SELECT '91005' AS postal_code, 'POST_OFFICE' AS type, 'Vedikumbura' AS city_en
  UNION ALL
  SELECT '91006' AS postal_code, 'POST_OFFICE' AS type, 'Marawa' AS city_en
  UNION ALL
  SELECT '91007' AS postal_code, 'POST_OFFICE' AS type, 'Obbegoda' AS city_en
  UNION ALL
  SELECT '91008' AS postal_code, 'POST_OFFICE' AS type, 'Galabedda' AS city_en
  UNION ALL
  SELECT '91010' AS postal_code, 'POST_OFFICE' AS type, 'Dombagahawela' AS city_en
  UNION ALL
  SELECT '91020' AS postal_code, 'POST_OFFICE' AS type, 'Ethimalewewa' AS city_en
  UNION ALL
  SELECT '91022' AS postal_code, 'POST_OFFICE' AS type, 'Wilaoya' AS city_en
  UNION ALL
  SELECT '91024' AS postal_code, 'POST_OFFICE' AS type, 'Kotiyagala' AS city_en
  UNION ALL
  SELECT '91027' AS postal_code, 'POST_OFFICE' AS type, 'Mahakalugolla' AS city_en
  UNION ALL
  SELECT '91030' AS postal_code, 'POST_OFFICE' AS type, 'Siyambalanduwa' AS city_en
  UNION ALL
  SELECT '91032' AS postal_code, 'POST_OFFICE' AS type, 'Kandaudapanguwa' AS city_en
  UNION ALL
  SELECT '91038' AS postal_code, 'POST_OFFICE' AS type, 'Buddama' AS city_en
  UNION ALL
  SELECT '91050' AS postal_code, 'POST_OFFICE' AS type, 'Dambagalla' AS city_en
  UNION ALL
  SELECT '91052' AS postal_code, 'POST_OFFICE' AS type, 'Mariarawa' AS city_en
  UNION ALL
  SELECT '91054' AS postal_code, 'POST_OFFICE' AS type, 'Uva Gangodagama' AS city_en
  UNION ALL
  SELECT '91056' AS postal_code, 'POST_OFFICE' AS type, 'Ruwalwela' AS city_en
  UNION ALL
  SELECT '91058' AS postal_code, 'POST_OFFICE' AS type, 'Baduluwela' AS city_en
  UNION ALL
  SELECT '91060' AS postal_code, 'POST_OFFICE' AS type, 'Okkampitiya' AS city_en
  UNION ALL
  SELECT '91070' AS postal_code, 'POST_OFFICE' AS type, 'Badalkumbura' AS city_en
  UNION ALL
  SELECT '91071' AS postal_code, 'POST_OFFICE' AS type, 'Madukotanarawa' AS city_en
  UNION ALL
  SELECT '91073' AS postal_code, 'POST_OFFICE' AS type, 'Veheragoda' AS city_en
  UNION ALL
  SELECT '91074' AS postal_code, 'POST_OFFICE' AS type, 'Bogahapelassa' AS city_en
  UNION ALL
  SELECT '91077' AS postal_code, 'POST_OFFICE' AS type, 'Karandagama' AS city_en
  UNION ALL
  SELECT '91079' AS postal_code, 'POST_OFFICE' AS type, 'Karawila Pallegama' AS city_en
  UNION ALL
  SELECT '91098' AS postal_code, 'POST_OFFICE' AS type, 'Kumbukkana' AS city_en
  UNION ALL
  SELECT '91100' AS postal_code, 'POST_OFFICE' AS type, 'Buttala' AS city_en
  UNION ALL
  SELECT '91103' AS postal_code, 'POST_OFFICE' AS type, 'Kukurampola' AS city_en
  UNION ALL
  SELECT '91107' AS postal_code, 'POST_OFFICE' AS type, 'Gonaganara' AS city_en
  UNION ALL
  SELECT '91108' AS postal_code, 'POST_OFFICE' AS type, 'Moratuwegama' AS city_en
  UNION ALL
  SELECT '91112' AS postal_code, 'POST_OFFICE' AS type, 'Uva Pelwatta' AS city_en
  UNION ALL
  SELECT '91198' AS postal_code, 'POST_OFFICE' AS type, 'Warunagama' AS city_en
  UNION ALL
  SELECT '91200' AS postal_code, 'POST_OFFICE' AS type, 'Wellawaya' AS city_en
  UNION ALL
  SELECT '91202' AS postal_code, 'POST_OFFICE' AS type, 'Siyambalagune' AS city_en
  UNION ALL
  SELECT '91204' AS postal_code, 'POST_OFFICE' AS type, 'Randeniya' AS city_en
  UNION ALL
  SELECT '91206' AS postal_code, 'POST_OFFICE' AS type, 'Weherayaya Handapanagala' AS city_en
  UNION ALL
  SELECT '91250' AS postal_code, 'POST_OFFICE' AS type, 'Ethiliwewa' AS city_en
  UNION ALL
  SELECT '91252' AS postal_code, 'POST_OFFICE' AS type, 'Kiriibbanwewa' AS city_en
  UNION ALL
  SELECT '91254' AS postal_code, 'POST_OFFICE' AS type, 'Ekamuthugama' AS city_en
  UNION ALL
  SELECT '91256' AS postal_code, 'POST_OFFICE' AS type, 'Mahagama Colony' AS city_en
  UNION ALL
  SELECT '91295' AS postal_code, 'POST_OFFICE' AS type, 'Balaharuwa' AS city_en
  UNION ALL
  SELECT '91298' AS postal_code, 'POST_OFFICE' AS type, 'Uva Kudaoya' AS city_en
  UNION ALL
  SELECT '91300' AS postal_code, 'POST_OFFICE' AS type, 'Tanamalwila' AS city_en
  UNION ALL
  SELECT '91302' AS postal_code, 'POST_OFFICE' AS type, 'Angunakolawewa' AS city_en
  UNION ALL
  SELECT '91306' AS postal_code, 'POST_OFFICE' AS type, 'Suriyaara' AS city_en
  UNION ALL
  SELECT '91308' AS postal_code, 'POST_OFFICE' AS type, 'Hambegamuwa' AS city_en
  UNION ALL
  SELECT '91312' AS postal_code, 'POST_OFFICE' AS type, 'Kotawehera Mankada' AS city_en
  UNION ALL
  SELECT '91400' AS postal_code, 'POST_OFFICE' AS type, 'Kataragama' AS city_en
  UNION ALL
  SELECT '91403' AS postal_code, 'POST_OFFICE' AS type, 'Kandasurindugama' AS city_en
  UNION ALL
  SELECT '91405' AS postal_code, 'POST_OFFICE' AS type, 'Sella Kataragama' AS city_en
  UNION ALL
  SELECT '91500' AS postal_code, 'POST_OFFICE' AS type, 'Bibila' AS city_en
  UNION ALL
  SELECT '91502' AS postal_code, 'POST_OFFICE' AS type, 'Ekiriyankumbura' AS city_en
  UNION ALL
  SELECT '91505' AS postal_code, 'POST_OFFICE' AS type, 'Pitakumbura' AS city_en
  UNION ALL
  SELECT '91508' AS postal_code, 'POST_OFFICE' AS type, 'Nilgala' AS city_en
  UNION ALL
  SELECT '91512' AS postal_code, 'POST_OFFICE' AS type, 'Kotagama' AS city_en
  UNION ALL
  SELECT '91514' AS postal_code, 'POST_OFFICE' AS type, 'Diyakobala' AS city_en
  UNION ALL
  SELECT '91516' AS postal_code, 'POST_OFFICE' AS type, 'Ayiwela' AS city_en
  UNION ALL
  SELECT '91519' AS postal_code, 'POST_OFFICE' AS type, 'Nannapurawa' AS city_en
  UNION ALL
  SELECT '91550' AS postal_code, 'POST_OFFICE' AS type, 'Medagama' AS city_en
  UNION ALL
  SELECT '91552' AS postal_code, 'POST_OFFICE' AS type, 'Kendawinna' AS city_en
  UNION ALL
  SELECT '91554' AS postal_code, 'POST_OFFICE' AS type, 'Bakinigahawela' AS city_en
  UNION ALL
  SELECT '91559' AS postal_code, 'POST_OFFICE' AS type, 'Kotabowa' AS city_en
) v
WHERE NOT EXISTS (SELECT 1 FROM lk_postal_codes_and_cities p WHERE p.postal_code = v.postal_code AND p.type = v.type);
