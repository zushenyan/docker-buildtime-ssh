# Volume Mapping 

This is probably the easiest solution. Just mapping the `~/.ssh` in host to `/root/.ssh` in container.

### Pros
- Easy and dummy friendly.
- SSH key won't be saved in image or cached layers.

### Cons
- If your packages involves SSH, like `npm install` pulling from private repository, those packages wil have to be delayed to container execution time. The packages can't be cached as an layer.