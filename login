<!DOCTYPE html><html><head>
  <meta charset="utf-8"><title>Feelnote QR Login</title>
  <script src="https://unpkg.com/html5-qrcode@2.3.8/html5-qrcode.min.js"></script>
</head><body>
  <h3>QR をかざしてください</h3>
  <div id="reader" style="width:260px"></div>
  <p id="msg">待機中…</p>

  <script>
    const scanner = new Html5QrcodeScanner('reader',{fps:10,qrbbox:250});
    scanner.render((raw)=>{
      document.getElementById('msg').textContent = '読み取り成功、遷移します…';
      location.href = raw;             // 読み取った URL へそのまま遷移
    });
  </script>
</body></html>
