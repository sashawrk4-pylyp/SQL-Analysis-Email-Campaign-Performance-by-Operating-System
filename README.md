# SQL Analysis: Email Campaign Performance by Operating System

## Project Overview
This project analyzes email campaign performance across different operating systems using SQL in Google BigQuery. The analysis focuses on sent messages, email opens, link visits, and key engagement metrics.
## Objectives
- Compare email campaign activity across operating systems.
- Calculate Open Rate, Click Rate, and CTOR.
- Identify differences in email engagement between operating systems.

## Dataset
The analysis uses six tables from the `DA` dataset:
- `account` — account information and subscription status.
- `account_session` — account and session relationships.
- `session_params` — session details, including operating systems.
- `email_sent` — sent messages.
- `email_open` — opened messages.
- `email_visit` — visits through email links.
Only accounts with `is_unsubscribed = 0` were included.

## Tools & Technologies
- SQL
- Google BigQuery

## Analysis Process
1. Retrieved operating system information.
2. Combined sent, opened, and visited email records.
3. Filtered out unsubscribed accounts.
4. Grouped results by operating system.
5. Calculated message counts and engagement metrics: Open Rate, Click Rate, and CTOR.

## Key Findings
The analysis covered six operating system categories and identified the following results:
- Total sent messages: **481,670**.
- Total opened messages: **164,015**.
- Total visits: **17,468**.
- **Web** accounted for the largest email activity volume (284,927 sent messages).
- **Macintosh** had the highest Open Rate (34.97%).
- **iOS** had the highest Click Rate (3.75%) and CTOR (10.90%).
- **Macintosh** had the lowest Click Rate (3.53%) and CTOR (10.10%).

## Project Files
- `analysis.sql` — SQL query used for the analysis.
- `README.md` — project description and key findings.
- `conclusions.md` — detailed conclusions and recommendations.

## Conclusions
Email activity was concentrated in the Web category, while the highest engagement metrics were observed in Macintosh and iOS. The results demonstrate differences in email engagement across operating systems and provide a basis for further analysis.



# SQL-Аналіз: Ефективність Еmail-Кампаній Залежно від Операційної Системи

## Огляд проєкту
У цьому проєкті аналізується ефективність email-кампаній на різних операційних системах за допомогою SQL у Google BigQuery. Аналіз охоплює надіслані, відкриті листи, переходи за посиланнями та основні показники залученості.

## Цілі проєкту
- Порівняти активність email-кампаній на різних операційних системах.
- Розрахувати Open Rate, Click Rate та CTOR.
- Визначити відмінності в залученості користувачів до email-кампаній залежно від операційної системи.

## Набір даних
Для аналізу використано шість таблиць із набору даних `DA`:
- `account` — інформація про облікові записи та статус підписки.
- `account_session` — зв'язок між обліковими записами та сесіями.
- `session_params` — інформація про сесії, зокрема операційні системи.
- `email_sent` — надіслані листи.
- `email_open` — відкриті листи.
- `email_visit` — переходи за посиланнями з листів.
До аналізу включено лише облікові записи, для яких `is_unsubscribed = 0`.

## Інструменти та технології
- SQL
- Google BigQuery

## Процес аналізу
1. Отримано інформацію про операційні системи.
2. Об'єднано дані про надіслані, відкриті листи та переходи.
3. Виключено облікові записи, які відписалися від розсилки.
4. Згруповано результати за операційними системами.
5. Розраховано кількість повідомлень і показники залученості: Open Rate, Click Rate та CTOR.

## Основні результати
Аналіз охопив шість категорій операційних систем і показав такі результати:
- Загальна кількість надісланих листів: **481 670**.
- Загальна кількість відкритих листів: **164 015**.
- Загальна кількість переходів: **17 468**.
- На категорію **Web** припадала найбільша кількість активності — 284 927 надісланих листів.
- **Macintosh** мав найвищий Open Rate (34,97%).
- **iOS** мала найвищі Click Rate (3,75%) та CTOR (10,90%).
- **Macintosh** мав найнижчі Click Rate (3,53%) та CTOR (10,10%).

## Файли проєкту
- `analysis.sql` — SQL-запит для проведення аналізу.
- `README.md` — опис проєкту та основні результати.
- `conclusions.md` — детальні висновки та рекомендації.

## Висновки
Найбільша активність надсилання листів спостерігалася в категорії Web, тоді як найвищі показники залученості були зафіксовані для Macintosh та iOS. Результати демонструють відмінності в залученості до email-кампаній залежно від операційної системи та створюють основу для подальшого аналізу.
