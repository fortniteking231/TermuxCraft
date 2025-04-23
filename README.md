  <h1>TermuxCraft</h1>

  <p><strong>TermuxCraft</strong> is a lightweight Minecraft server setup optimized for Android devices using Termux. It automates the installation of Java 21, Fabric 1.21.5, and performance-enhancing mods to deliver a smoother gameplay experience on resource-constrained devices.</p>

  <h2>Features</h2>
  <ul>
    <li>📦 Installs Java 21 (OpenJDK)</li>
    <li>⚙️ Sets up Fabric Loader 1.21.5</li>
    <li>🚀 Includes performance mods for improved FPS</li>
    <li>📁 Organizes files in a dedicated <code>~/TermuxCraft</code> directory</li>
    <li>🧩 Provides a preconfigured <code>startMC.sh</code> script with optimized JVM flags</li>
  </ul>

  <h2>Installation</h2>
  <ol>
    <li><strong>Update and install prerequisites:</strong>
      <pre><code>pkg update && pkg upgrade -y
pkg install openjdk-21 curl unzip -y</code></pre>
    </li>
    <li><strong>Run the setup script:</strong>
      <pre><code>curl -L -o install.sh https://raw.githubusercontent.com/fortniteking231/TermuxCraft/main/install.sh
chmod +x install.sh
./install.sh</code></pre>
      <p>This script will:</p>
      <ul>
        <li>Check for Java installation and install Java 21 if not present</li>
        <li>Create the <code>~/TermuxCraft</code> directory</li>
        <li>Download and run the Fabric installer</li>
        <li>Download and unzip performance mods</li>
        <li>Generate the <code>startMC.sh</code> script with optimized JVM flags</li>
      </ul>
    </li>
  </ol>

  <h2>Usage</h2>
  <p>After installation, navigate to the <code>TermuxCraft</code> directory and start the server:</p>
  <pre><code>cd ~/TermuxCraft
./startMC.sh</code></pre>
  <p>This will launch your Minecraft server with the configured settings.</p>

  <h2>Notes</h2>
  <ul>
    <li>Ensure you have sufficient storage and memory available on your device.</li>
    <li>For optimal performance, close other applications while running the server.</li>
    <li>Modify the <code>startMC.sh</code> script to adjust memory allocation or add additional JVM flags as needed.</li>
  </ul>

  <h2>License</h2>
  <p>This project is licensed under the MIT License. See the <a href="LICENSE">LICENSE</a> file for details.</p>
