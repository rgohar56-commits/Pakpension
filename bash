docs/index.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>PakPension - Pension Calculator</title>
  <link rel="stylesheet" href="style.css" />
  <script src="script.js" defer></script>
</head>
<body>
  <header>
    <h1 id="title">PakPension - Pension Calculator</h1>
    <select id="languageSelect">
      <option value="en">English</option>
      <option value="ur">اردو</option>
    </select>
  </header>

  <main>
    <form id="pensionForm">
      <label for="name" class="lang" data-en="Employee Name:" data-ur="ملازم کا نام:">Employee Name:</label>
      <input type="text" id="name" required />

      <label for="dob" class="lang" data-en="Date of Birth:" data-ur="تاریخ پیدائش:">Date of Birth:</label>
      <input type="date" id="dob" required />

      <label for="doa" class="lang" data-en="Date of Appointment:" data-ur="تقرری کی تاریخ:">Date of Appointment:</label>
      <input type="date" id="doa" required />

      <label for="dor" class="lang" data-en="Date of Retirement:" data-ur="ریٹائرمنٹ کی تاریخ:">Date of Retirement:</label>
      <input type="date" id="dor" required />

      <label for="bps" class="lang" data-en="Grade / Basic Pay Scale:" data-ur="گریڈ / بنیادی پے اسکیل:">Grade / Basic Pay Scale:</label>
      <select id="bps" required>
        <option value="">Select</option>
        <script>
          for(let i=1;i<=22;i++){
            document.write(`<option value="${i}">BS-${i}</option>`);
          }
        </script>
      </select>

      <label for="basicPay" class="lang" data-en="Last Drawn Basic Pay:" data-ur="آخری بنیادی تنخواہ:">Last Drawn Basic Pay:</label>
      <input type="number" id="basicPay" required />

      <label class="lang" data-en="Total Service (Years):" data-ur="کل سروس (سال):">Total Service (Years):</label>
      <input type="text" id="serviceYears" readonly />

      <label for="option" class="lang" data-en="Pension Option:" data-ur="پنشن آپشن:">Pension Option:</label>
      <select id="option">
        <option value="full">Full Pension</option>
        <option value="commuted">Commuted Pension</option>
      </select>

      <button type="button" id="calcBtn">Calculate Pension</button>
    </form>

    <div id="result"></div>
  </main>

  <footer>
    <p>© 2025 PakPension | Designed with ❤️ in Pakistan</p>
  </footer>
</body>
</html>
