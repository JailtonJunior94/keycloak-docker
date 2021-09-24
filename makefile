start:
	docker-compose up -d 

stop:
	docker-compose down

load-test:
	artillery run -o artillery-report.json artillery.yaml