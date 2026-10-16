CREATE DATABASE IF NOT EXISTS uyir_field;
USE uyir_field;
CREATE TABLE IF NOT EXISTS farm_plots (
 plot_id BIGINT PRIMARY KEY AUTO_INCREMENT, plot_name VARCHAR(100) NOT NULL, location VARCHAR(150), crop_name VARCHAR(100) NOT NULL,
 soil_type VARCHAR(50), area_acres DECIMAL(8,2), created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS field_readings (
 reading_id BIGINT PRIMARY KEY AUTO_INCREMENT, plot_id BIGINT NOT NULL, temperature DECIMAL(5,2) NOT NULL, humidity DECIMAL(5,2) NOT NULL,
 soil_moisture DECIMAL(5,2) NOT NULL, rainfall_mm DECIMAL(7,2) DEFAULT 0, recorded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 CONSTRAINT fk_reading_plot FOREIGN KEY(plot_id) REFERENCES farm_plots(plot_id)
);
CREATE TABLE IF NOT EXISTS protection_events (
 event_id BIGINT PRIMARY KEY AUTO_INCREMENT, plot_id BIGINT NOT NULL, action VARCHAR(30) NOT NULL, reason VARCHAR(255), event_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 CONSTRAINT fk_event_plot FOREIGN KEY(plot_id) REFERENCES farm_plots(plot_id)
);
CREATE TABLE IF NOT EXISTS crop_advisories (
 advisory_id BIGINT PRIMARY KEY AUTO_INCREMENT, plot_id BIGINT NOT NULL, risk_level VARCHAR(20) NOT NULL, message VARCHAR(500) NOT NULL,
 recommendation VARCHAR(500) NOT NULL, created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 CONSTRAINT fk_advisory_plot FOREIGN KEY(plot_id) REFERENCES farm_plots(plot_id)
);
INSERT INTO farm_plots(plot_name,location,crop_name,soil_type,area_acres) SELECT 'North Plot','Coimbatore','Tomato','Loamy',1.25 WHERE NOT EXISTS(SELECT 1 FROM farm_plots WHERE plot_name='North Plot');
INSERT INTO farm_plots(plot_name,location,crop_name,soil_type,area_acres) SELECT 'East Plot','Coimbatore','Paddy','Clay',2.00 WHERE NOT EXISTS(SELECT 1 FROM farm_plots WHERE plot_name='East Plot');
INSERT INTO farm_plots(plot_name,location,crop_name,soil_type,area_acres) SELECT 'South Plot','Tiruppur','Chilli','Sandy loam',0.80 WHERE NOT EXISTS(SELECT 1 FROM farm_plots WHERE plot_name='South Plot');
