up:
	docker compose up -d nginx

alp:
	docker compose run --rm alp cat /var/log/nginx/access.log | alp ltsv