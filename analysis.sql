
WITH ccc AS (
   SELECT                                                    -- Отримання операційної системи
     acs.account_id,
     sp.operating_system
   FROM `DA.account_session` AS acs
   JOIN `DA.session_params` AS sp ON acs.ga_session_id = sp.ga_session_id
),


bbb AS (
   SELECT                                                    -- Об'єднання даних
     es.id_account,
     es.id_message AS id_message_sent,
     eo.id_message AS id_message_open,
     ev.id_message AS id_message_visit,
   FROM `DA.email_sent` es
   LEFT JOIN `DA.email_open` AS eo ON es.id_message = eo.id_message
   LEFT JOIN `DA.email_visit` AS ev ON es.id_message = ev.id_message
)


     SELECT
       ccc.operating_system,
       COUNT(DISTINCT bbb.id_message_sent) AS sent_msg,      -- Розрахунок показників
       COUNT(DISTINCT bbb.id_message_open) AS open_msg,
       COUNT(DISTINCT bbb.id_message_visit) AS vist_msg,
       COUNT(DISTINCT bbb.id_message_open) / COUNT(DISTINCT bbb.id_message_sent) * 100 AS open_rate,
       COUNT(DISTINCT bbb.id_message_visit) / COUNT(DISTINCT bbb.id_message_sent) * 100 AS click_rate,
       COUNT(DISTINCT bbb.id_message_visit) / COUNT(DISTINCT bbb.id_message_open) * 100 AS ctor,
     FROM `DA.account` a
     JOIN ccc ON a.id = ccc.account_id
     JOIN bbb ON a.id = bbb.id_account
     WHERE a.is_unsubscribed = 0
     GROUP BY ccc.operating_system
