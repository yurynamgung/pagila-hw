/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

SELECT
  staff.first_name
  ,staff.last_name
  ,SUM(payment.amount)
FROM payment
  INNER JOIN staff ON payment.staff_id = staff.staff_id
WHERE payment.payment_date >= '2020-01-01' AND payment.payment_date < '2020-02-01'
GROUP BY
  staff.last_name
  ,staff.first_name
ORDER BY SUM(payment.amount)
;
