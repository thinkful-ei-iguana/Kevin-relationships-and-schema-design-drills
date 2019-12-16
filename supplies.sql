DROP TABLE IF EXISTS supplier_order;
DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS supplier;

CREATE TABLE supplier (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  supplier_name TEXT NOT NULL,
  phone TEXT,
  city TEXT
);

CREATE TABLE item (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  item_name TEXT NOT NULL,
  unit TEXT,
  unit_cost numeric,
  supplier INTEGER REFERENCES supplier(id) ON DELETE SET NULL
);


CREATE TABLE supplier_order (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  order_date DATE DEFAULT now(),
  item INTEGER REFERENCES item(id) ON DELETE CASCADE NOT NULL,
  amount numeric,
  total_cost numeric,
  shipping_status TEXT
);

INSERT INTO supplier (supplier_name, phone, city) VALUES ('Mulch King Paper Makers', '555-1234', 'Tel Aviv');
INSERT INTO item (item_name, unit, unit_cost, supplier) VALUES ('Brown Mulch', 'LBS', 0.5, 1);
INSERT INTO supplier_order (item, amount, total_cost, shipping_status) VALUES (1, 20, 10, 'Shipped');