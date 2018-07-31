# Volume Mapping 

This is probably the easiest solution. Just mapping the `~/.ssh` in host to `/root/.ssh` in container.

### Pros
- Easy and dummy friendly.
- SSH key won't be saved in image or cached layers.

### Cons
- The package installation will be executed at container runtime, which means installed packages can't be cached as an layer.
