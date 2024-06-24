Postmortem: Service Outage on June 5, 2024
Issue Summary
Duration:
June 5, 2024, 2:00 AM - June 5, 2024, 4:30 AM

Impact:
The user authentication service was down, preventing users from logging into the platform. Approximately 75% of our user base experienced login issues during this time.

Root Cause:
The root cause was a misconfiguration in the authentication server's database connection settings following a recent update.

Timeline
2:00 AM: Issue detected by monitoring alerts indicating a spike in failed login attempts.
2:05 AM: On-call engineer notified via PagerDuty.
2:10 AM: Initial investigation started; logs indicated database connection errors.
2:20 AM: Misleading path: Investigated potential network issues; confirmed network was stable.
2:45 AM: Noticed recent update to the authentication server configuration.
3:00 AM: Verified configuration changes; identified misconfiguration in database connection settings.
3:15 AM: Rolled back the recent update to restore previous settings.
3:30 AM: Service partially restored; continued monitoring.
4:00 AM: Full service restoration confirmed; continued monitoring for stability.
4:30 AM: Issue resolved; all systems stable.
Root Cause and Resolution
Root Cause:
The issue was caused by an incorrect database connection string that was introduced during a recent configuration update to the authentication server. The new connection string had a typo which prevented the authentication server from connecting to the database.

Resolution:
The resolution involved rolling back the recent configuration update to restore the previous, correct database connection settings. Once the rollback was completed, the authentication server was able to reconnect to the database, and normal service was restored.

Corrective and Preventative Measures
Improvements:

Enhance the review process for configuration changes to include a peer review step.
Improve monitoring to detect misconfigurations faster by adding specific checks for database connectivity.
Tasks:

Implement a checklist for configuration updates that includes verification steps.
Develop a script to automatically test database connections after configuration changes.
Add additional alerts for database connection failures to provide quicker detection.
Schedule a training session for the engineering team on best practices for configuration management.



STUDENT
Katlego Koma-github.com/KatliKoma
