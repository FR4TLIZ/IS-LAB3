# System Info Report Generator

This Bash script automatically generates a clean, well-structured system report and saves it to a text file called `system_info.txt`. 
The report includes essential information about the current system — useful for diagnostics, documentation, or audits.

## What's Included in the Report?

The generated `system_info.txt` file contains:

- Date and time of report creation
- Total system memory (RAM) in MB
- Disk usage details (size, used, and available space for each mounted partition)
- System hostname
- Operating system name and kernel version

Each section in the report is clearly labeled and separated for readability.

## Requirements

This script is intended for Linux systems and uses standard command-line utilities.
No external dependencies are required.

## How to Run

1. Make the script executable:
   ```bash
   chmod +x system_info_report.sh
2. Run it:
   ```bash
   ./system_info_report.sh
3. Read it:
   ```bash
   cat system_info.txt

