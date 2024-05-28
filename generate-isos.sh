docker run \
	--rm \
	--privileged \
	--volume /home/arteeh/isogen/main:/build-container-installer/build  \
	ghcr.io/jasonn3/build-container-installer:latest \
	VERSION=40 \
	IMAGE_REPO=ghcr.io/arteeh \
	IMAGE_NAME=silvercore \
	IMAGE_TAG=40 \
	VARIANT=Silverblue \
	ISO_NAME=Silvercore \
	WEB_UI=true

docker run \
	--rm \
	--privileged \
	--volume /home/arteeh/isogen/nvidia:/build-container-installer/build  \
	ghcr.io/jasonn3/build-container-installer:latest \
	VERSION=40 \
	IMAGE_REPO=ghcr.io/arteeh \
	IMAGE_NAME=silvercore-nvidia \
	IMAGE_TAG=40 \
	VARIANT=Silverblue \
	ISO_NAME=Silvercore-NVIDIA \
	WEB_UI=true

docker run \
	--rm \
	--privileged \
	--volume /home/arteeh/isogen/server:/build-container-installer/build  \
	ghcr.io/jasonn3/build-container-installer:latest \
	VERSION=40 \
	IMAGE_REPO=ghcr.io/arteeh \
	IMAGE_NAME=silvercore-server \
	IMAGE_TAG=40 \
	VARIANT=Server \
	ISO_NAME=Silvercore-Server \
	WEB_UI=true
