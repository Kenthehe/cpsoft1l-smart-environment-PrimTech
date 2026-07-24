fetch('http://localhost:5000/api/sensors')
  .then(res => res.json())
  .then(data => {
    document.getElementById('sensor-data').innerText = JSON.stringify(data);
  })
  .catch(() => {
    document.getElementById('sensor-data').innerText = 'Unable to load sensor data.';
  });