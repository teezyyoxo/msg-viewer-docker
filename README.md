<div align="center">
    <img src="https://github.com/user-attachments/assets/f065cc3a-c40b-4917-ac51-006cfbc78f0f" alt="Icon"/>
    <p><strong>https://msg-viewer.pages.dev/</strong><p>
</div>

### Description
This tool allows you to read Outlook `.msg` file in your browser without sending any data to an external server. It is extremely fast, works on any device as long as you have an Internet connection to open the page.
Also added, a Docker/Podman method of deployment, since *I* don't have/use Bun.

### Motivation
At work, I needed to read a .msg file. Since I use a Mac, I quickly realized that this task wasn't straightforward. The official Outlook app on Mac doesn’t support .msg files and instead expects .eml files. Due to sensitive data and company policies, I couldn't download any external software or use a website that uploads files to an external server. That’s why I decided to create my own solution to read the file. Here are the key functional requirements I set for myself while working on this project:
  - It must display the file’s content;
  - It must not rely on any server;
  - It must be fast.

### Features
  - Free (Open Source);
  - No Server, no data sharing;
  - Extremely fast;
  - Works on any device that can open the page.

### Docker / Podman
If you already have the static site built into `lib/`, you can serve it with a small nginx container.

Build the image:
```bash
docker build -t msg-viewer:latest .
# or with podman
podman build -t msg-viewer:latest .
```

Run the container (maps container port 80 to host port 8080):
```bash
docker run --rm -p 8080:80 msg-viewer:latest
# or with podman
podman run --rm -p 8080:80 msg-viewer:latest
```

### Bun
The project uses Bun. To build it simply run:
```
bun ./build.ts
```
The command will put a final HTML in `build` folder.

### Support
If you wish to support, you can buy the original creator a [coffee](https://buymeacoffee.com/markian98f).
ALL original development credit goes to @markian98f!

Notes:
- The provided `Dockerfile` serves the contents of the repository `lib/` directory with nginx.
- If you need the container to also perform the build step inside the image, I can add a multi-stage builder Dockerfile that runs Bun and copies output into nginx (optional).
