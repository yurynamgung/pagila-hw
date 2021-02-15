/*
 * Use a JOIN to display the first and last names, as well as the address, of each staff member.
 * Use the tables staff and address.
 */

SELECT
  staff.first_name
  , staff.last_name
  , address.address AS street_address
FROM staff
  INNER JOIN address ON address.address_id = staff.address_id
;
