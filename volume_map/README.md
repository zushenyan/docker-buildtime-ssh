# Volume Mapping 

This is probably the easiest solution. Just mapping the `~/.ssh` folder from host to folder `/root/.ssh` in container.

### Pros
- Easy and dummy friendly.
- SSH key won't be saved in image or cached layers.

### Cons
- You will have to delay the build time during container execution time, which means bundled files or modules won't be saved as cached layer for reuse in future when building again.