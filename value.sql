INSERT INTO "user" (id, first_name, last_name, mobile,
					email,user_type, password, restaurant_id)
VALUES
(10, 'Barry', 'Zimmer',9234081221,
 'barryz@gmail.com', 1,
 '3f563468d42a448cb1e56924529f6e7bbe529cc7', 38),
   
 (11, 'Christine', 'Brown',2043078899,
 'christineb@solarone.com', 1,
 'ed19f5c0833094026a2f1e9e6f08a35d26037066', 39),
(12, 'David', 'Goldstein',6534561221,
'david.goldstein@hotmail.com', 1,
'b444ac06613fc8d63795be9ad0beaf55011936ac',  40),
(5, 'Erin', 'Valentino',78923456665,
 'erinv@gmail.com', 1,
 '109f4b3c50d7b0df729d299bc6f8e9ef9066971f',  41),
 (6, 'Frank Lee', 'Wilson',9299207443,
 'frankwilson@sbcglobal.net', 1,
 '3ebfa301dc59196f18593c45e519287a23297589',  45),
 (7, 'Gary', 'Hernandez', 9299029745,
'gary_hernandez@yahoo.com', 1,
'1ff2b3704aede04eecb51e50ca698efd50a1379b',  43),
(8,  'Heather', 'Esway',9235647667,
'heatheresway@mac.com', 1,
'911ddc3b8f9a13b5499b6bc4638a2b4f3f68bf23',44);

ALTER TABLE IF EXISTS public.order_menu
    ADD CONSTRAINT menu_fkey_id FOREIGN KEY (menu_id)
    REFERENCES public.menu (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;
