
CREATE OR REPLACE FUNCTION payment_made()
  RETURNS TRIGGER
  LANGUAGE PLPGSQL
  AS
$$
BEGIN
    update "order" set payment_status=TRUE where id=NEW.order_id;
    RETURN NEW;
END;
$$


CREATE TRIGGER payment_made_trigger
  AFTER INSERT
  ON payment
  FOR EACH ROW
  EXECUTE PROCEDURE payment_made();
  
  
  INSERT INTO public.payment(
	 order_id, payment_date, amount, payment_type)
	VALUES ( 3, '09-09-2019', 100, 'debit');
    
    
    
    
    
    