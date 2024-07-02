Issue Summary
Duration: June 5, 2024, 2:00 AM - 4:30 AM
Impact: Approximately 75% of users experienced login issues due to an authentication service outage.

Root Cause
A misconfiguration in the authentication server's database connection settings following a recent update caused the service outage.

Timeline
Time	Event
2:00 AM	Issue detected by monitoring alerts indicating a spike in failed login attempts.
2:05 AM	On-call engineer notified via PagerDuty.
2:10 AM	Initial investigation started; logs indicated database connection errors.
2:20 AM	Misleading path: Investigated potential network issues; confirmed network was stable.
2:45 AM	Noticed recent update to the authentication server configuration.
3:00 AM	Verified configuration changes; identified misconfiguration in database connection settings.
3:15 AM	Rolled back the recent update to restore previous settings.
3:30 AM	Service partially restored; continued monitoring.
4:00 AM	Full service restoration confirmed; continued monitoring for stability.
4:30 AM	Issue resolved; all systems stable.
Root Cause and Resolution
Root Cause: An incorrect database connection string introduced during a recent configuration update prevented the authentication server from connecting to the database.

Resolution: Rolling back the recent configuration update restored the previous, correct database connection settings. Normal service was restored after the rollback.

Corrective and Preventative Measures
Improvements:

Enhance the review process for configuration changes to include a peer review step.
Improve monitoring to detect misconfigurations faster by adding specific checks for database connectivity.
Tasks:

Implement a checklist for configuration updates that includes verification steps.
Develop a script to automatically test database connections after configuration changes.
Add additional alerts for database connection failures to provide quicker detection.
Schedule a training session for the engineering team on best practices for configuration management.
Visual Summary
The Great Login Blockade of 2024 (Comic Strip)

Light-hearted Takeaway
Sometimes, even servers need a coffee break! Unfortunately, ours decided to take it at the worst possible time. But fear not! Our engineering team, aka the "Tech Avengers," swooped in to save the day. After wrestling with configuration strings and battling database dragons, they restored peace in the server realm. 🌐🔧🦸‍♂️

Conclusion
Thank you for your patience during the outage. We are committed to learning from this experience and implementing measures to prevent future occurrences. Stay tuned for smoother, more reliable service!

Authored by: Katlego Koma
