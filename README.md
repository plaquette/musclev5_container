
## MUSCLE Docker Image

This Docker image is designed to use MUSCLE v5 for sequence alignment, based on the very small Alpine Linux. To use the image, you can pull it from Docker Hub or build it yourself using the provided Dockerfile.

### Building the Image

1. **Download MUSCLE v5 Binary:** First, download the appropriate `muscleX.X.linux_intel64` binary from the [MUSCLE GitHub releases page](https://github.com/rcedgar/muscle/releases/).

2. **Build the Docker Image:** With the binary in the same directory as the Dockerfile you can build it (via build_push.sh)

3. **Run MUSCLE:** To run MUSCLE v5 inside the container, use:

   ```bash
   docker run -it -v "$(pwd)":/data plaquette/muscle_v5:dev -c "muscle -align demo.fasta -output output.fasta"
   ```

   Replace `demo.fasta` with your input file name and `output.fasta` with your desired output file name.

### Dockerfile Details

The Dockerfile is designed for simplicity and efficiency:

- **Base Image:** Uses Alpine Linux for its small size.
- **Bash Installation:** Installs Bash to ensure compatibility with scripts that may require it.
- **Working Directory:** Sets `/usr/local/bin` as the working directory, where the MUSCLE binary is placed and made executable.
- **Execution:** By setting Bash as the entry point, it allows for easy execution of MUSCLE commands or scripts.

### Usage Notes

- This Dockerfile assumes the presence of a MUSCLE binary named `muscleX.X.linux_intel64`. Ensure you download the correct version corresponding to your system architecture.


For detailed MUSCLE v5 usage instructions, refer to the [official MUSCLE v5 manual](https://drive5.com/muscle5/manual/install.html).
