ALTER TABLE users ADD COLUMN phone_number VARCHAR(20);
ALTER TABLE users ADD COLUMN status VARCHAR(20) DEFAULT 'active';

CREATE OR REPLACE VIEW active_users AS
SELECT id, username, email, created_at
FROM users
WHERE status = 'active';


ALTER TABLE orders ADD COLUMN shipping_address TEXT;
ALTER TABLE orders DROP COLUMN total_amount;
ALTER TABLE orders ADD COLUMN subtotal DECIMAL(10, 2);
ALTER TABLE orders ADD COLUMN tax DECIMAL(10, 2);
ALTER TABLE orders ADD COLUMN total DECIMAL(10, 2);
