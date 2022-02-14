/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

select staff.first_name, staff.last_name, sum(payment.amount)
from payment
join staff using (staff_id)
where payment.payment_date between '2020-01-01' and '2020-02-01'
group by staff.first_name, staff.last_name;
