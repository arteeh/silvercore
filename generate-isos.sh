docker run \
    --name geniso-main \
	--rm \
	--privileged \
	--volume ./iso/main:/build-container-installer/build  \
	ghcr.io/jasonn3/build-container-installer:latest \
	VERSION=41 \
	IMAGE_REPO=ghcr.io/arteeh \
	IMAGE_NAME=silvercore \
	IMAGE_TAG=latest \
	VARIANT=Silverblue \
 	SECURE_BOOT_KEY_URL=https://raw.githubusercontent.com/arteeh/silvercore/main/cosign.pub \
	ENROLLMENT_PASSWORD=universalblue \
	ISO_NAME=build/Silvercore.iso \
	WEB_UI=true & \
docker run \
    --name geniso-nvidia \
	--rm \
	--privileged \
	--volume ./iso/nvidia:/build-container-installer/build  \
	ghcr.io/jasonn3/build-container-installer:latest \
	VERSION=41 \
	IMAGE_REPO=ghcr.io/arteeh \
	IMAGE_NAME=silvercore-nvidia \
	IMAGE_TAG=latest \
	VARIANT=Silverblue \
 	SECURE_BOOT_KEY_URL=https://raw.githubusercontent.com/arteeh/silvercore/main/cosign.pub \
	ENROLLMENT_PASSWORD=universalblue \
	ISO_NAME=build/Silvercore-NVIDIA.iso \
	WEB_UI=true & \
docker run \
    --name geniso-server \
	--rm \
	--privileged \
	--volume ./iso/server:/build-container-installer/build  \
	ghcr.io/jasonn3/build-container-installer:latest \
	VERSION=41 \
	IMAGE_REPO=ghcr.io/arteeh \
	IMAGE_NAME=silvercore-server \
	IMAGE_TAG=latest \
	VARIANT=Server \
 	SECURE_BOOT_KEY_URL=https://raw.githubusercontent.com/arteeh/silvercore/main/cosign.pub \
	ENROLLMENT_PASSWORD=universalblue \
	ISO_NAME=build/Silvercore-Server.iso \
	WEB_UI=true & \
 docker run \
    --name geniso-cosmic \
	--rm \
	--privileged \
	--volume ./iso/server:/build-container-installer/build  \
	ghcr.io/jasonn3/build-container-installer:latest \
	VERSION=41 \
	IMAGE_REPO=ghcr.io/arteeh \
	IMAGE_NAME=silvercore-cosmic \
	IMAGE_TAG=latest \
	VARIANT=Kinoite \
 	SECURE_BOOT_KEY_URL=https://raw.githubusercontent.com/arteeh/silvercore/main/cosign.pub \
	ENROLLMENT_PASSWORD=universalblue \
	ISO_NAME=build/Silvercore-Cosmic.iso \
	WEB_UI=true
