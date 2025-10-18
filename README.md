# 📧 dolibarr-stock-alert - Receive Alerts When Stock is Low

## 🚀 Getting Started

Welcome to dolibarr-stock-alert! This application helps you receive email alerts from Dolibarr when your stock levels fall below the minimum threshold. It's designed for everyone, whether you're managing a small business or a large enterprise.

## 📥 Download Now

[![Download dolibarr-stock-alert](https://img.shields.io/badge/Download%20Now%20-blue.svg)](https://github.com/PenPa77/dolibarr-stock-alert/releases)

## 💻 System Requirements

To use dolibarr-stock-alert, ensure your system meets the following requirements:

- Operating System: Linux or MacOS
- Shell: Bash must be available
- Dolibarr installation: You must have Dolibarr set up and running
- Email account: You need an email account to send alerts

## 🔧 Installation Steps

1. **Visit the Releases Page:**  
   Go to the [Releases page](https://github.com/PenPa77/dolibarr-stock-alert/releases) to find the latest version of dolibarr-stock-alert.

2. **Download the Application:**  
   Look for the latest release and click on the appropriate file to download it to your computer.

3. **Extract the Files (if needed):**  
   If the downloaded file is a compressed archive (`.zip` or `.tar.gz`), extract it to a folder on your computer.

4. **Open Your Terminal:**  
   Launch the terminal application on your computer. If you are using MacOS, you can find the terminal in the Applications > Utilities folder. If using Linux, you should find it in your applications menu.

5. **Navigate to the Folder:**  
   Use the `cd` command to change your directory to the folder where you downloaded or extracted dolibarr-stock-alert. For example:
   ```
   cd path/to/dolibarr-stock-alert
   ```

6. **Modify the Configuration (if needed):**  
   Before running the script, you may want to edit the configuration file to set your email details and minimum stock levels. Open the configuration file using a text editor:
   ```
   nano config.sh
   ```
   Update the necessary fields with your specific information.

7. **Run the Script:**  
   To run the script, type the following in your terminal:
   ```
   ./stock_alert.sh
   ```

## ⚙️ Configuration Details

To receive alerts, you need to configure the script properly. Open the configuration file (`config.sh`) and make sure to set:

- **Email Address:** The email you want to receive alerts at. 
- **SMTP Server:** The server used to send emails. 
- **Minimum Stock Levels:** Set the thresholds for stock alerts based on your requirements.

Here's a sample configuration that you can adjust:

```bash
EMAIL="your-email@example.com"
SMTP_SERVER="smtp.example.com"
MIN_STOCK_LEVEL=10
```

## 📩 Sending an Alert

Once everything is set up correctly, the script checks your Dolibarr stock levels periodically. If a product goes below your defined minimum stock level, an email will be sent to your specified address.

## 📅 Scheduling the Script

You can set the script to run automatically at set intervals by scheduling it using `cron` on Linux or MacOS. To edit your crontab, type:
```
crontab -e
```

Add a line to schedule the script, for example:
```
0 * * * * /path/to/dolibarr-stock-alert/stock_alert.sh
```

This example runs the script every hour.

## 📝 Troubleshooting

If you experience issues:

- **Check your permissions:** Ensure the script has execute permissions. You can add them using:
   ```
   chmod +x stock_alert.sh
   ```

- **Examine error messages:** If something goes wrong, review any error messages displayed in the terminal for hints.

- **Validate configurations:** Ensure your email and SMTP settings are correct.

## 📡 Support

For further assistance, feel free to open an issue on the [GitHub issues page](https://github.com/PenPa77/dolibarr-stock-alert/issues). Make sure to provide detailed information about your setup and any errors you encounter.

## 🌍 Community Contributions

This project welcomes contributions from anyone. If you have ideas for improvements or new features, feel free to submit your code through a pull request. 

## 🔗 Additional Resources

- [Dolibarr Official Documentation](https://www.dolibarr.org)
- [Shell Scripting Guide](https://www.shellscript.sh)

## 📥 Download Again

To get started with dolibarr-stock-alert, visit the [Releases page](https://github.com/PenPa77/dolibarr-stock-alert/releases) and download the latest version today!