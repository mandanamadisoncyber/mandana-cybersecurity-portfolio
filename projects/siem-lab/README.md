🛡️ SIEM Lab – Splunk (Log Analysis & Threat Detection)

🎯 Objective

The goal of this project was to use Splunk to analyze logs and detect suspicious activity within a simulated environment.

🛠️ Tools Used
Splunk
TryHackMe Lab Environment
Log Analysis

⚙️ Setup
Accessed Splunk environment through TryHackMe
Explored log data and search functionality
Used queries to filter and analyze events

🧪 Investigation
Log Analysis
Searched logs for suspicious activity
Filtered events using Splunk queries
query:
index="linux-alert" sourcetype="linux_secure" 10.10.242.248

🔍 Detection
Identified multiple failed login attempts
Observed repeated activity from the same source
Detected patterns indicating potential brute-force behavior
query:
src_ip=10.10.242.248 action=failure
| table _time, user

📸 Screenshots

![index search](./splunk_search.png)

![failed login attempts](./splunk_failed%attempts_userip.png)



Search Results

🧠 Analysis
Repeated failed login attempts suggest a brute-force attack
Log analysis helps identify suspicious patterns and anomalies
SIEM tools like Splunk provide visibility into system activity

🌍 Real-World Relevance
Splunk is widely used in Security Operations Centers (SOC) to monitor logs, detect threats, and investigate security incidents.

🔐 Recommendations
Monitor login attempts regularly
Implement account lockout policies
Use multi-factor authentication (MFA)
Set alerts for suspicious activity
