name = .done
up: $(name)
$(name):
	@docker volume create --name wordpress
	@touch .done
	@cd srcs && docker-compose up -d
run:
	@cd srcs && docker-compose up
build :
	@cd srcs && docker-compose build
clean:
	@docker system prune -a -f
	@docker volume rm 
	@docker image rm $(docker images -q)
	@rm -f .done

rebuild : clean build
	$echo "LOL"
