docker run \
    --name geniso-main \
	--rm \
	--privileged \
	--volume ./iso/main:/build-container-installer/build  \
	ghcr.io/jasonn3/build-container-installer:latest \
	VERSION=40 \
	IMAGE_REPO=ghcr.io/arteeh \
	IMAGE_NAME=silvercore \
	IMAGE_TAG=40 \
	VARIANT=Silverblue \
	ISO_NAME=Silvercore.iso \
	WEB_UI=true & \
docker run \
    --name geniso-nvidia \
	--rm \
	--privileged \
	--volume ./iso/nvidia:/build-container-installer/build  \
	ghcr.io/jasonn3/build-container-installer:latest \
	VERSION=40 \
	IMAGE_REPO=ghcr.io/arteeh \
	IMAGE_NAME=silvercore-nvidia \
	IMAGE_TAG=40 \
	VARIANT=Silverblue \
	ISO_NAME=Silvercore-NVIDIA.iso \
	WEB_UI=true & \
docker run \
    --name geniso-server \
	--rm \
	--privileged \
	--volume ./iso/server:/build-container-installer/build  \
	ghcr.io/jasonn3/build-container-installer:latest \
	VERSION=40 \
	IMAGE_REPO=ghcr.io/arteeh \
	IMAGE_NAME=silvercore-server \
	IMAGE_TAG=40 \
	VARIANT=Server \
	ISO_NAME=Silvercore-Server.iso \
	WEB_UI=true