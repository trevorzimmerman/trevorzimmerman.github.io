---
layout: page
title: "DBSCAN NYC"
permalink: /university/mtre6710-point-cloud-data
---
# 3D Point Cloud Data - Python

| Before DBSCAN | After DBSCAN |
|---------------|-------------|
| ![Before](/assets/projects/mtre6710-3d-pcd/before-dbscan.PNG) | ![After](/assets/projects/mtre6710-3d-pcd/after-dbscan.PNG) |

## Project Summary

This project applies the DBSCAN (Density-Based Spatial Clustering of Applications with Noise) algorithm to 3D lidar data of Lower Manhattan, New York City using Python and Open3D.

## Demonstration Video

The video shows the LIDAR point clouds in their original form in CloudCompare, then in Open3D before and after DBSCAN clustering.

<iframe width="560" height="315" src="https://www.youtube.com/embed/q8Vmc37t8z4?rel=0" title="YouTube video player" frameborder="0" allowfullscreen></iframe>

## Python Script

<details>
<summary>DBSCAN.py (combine and cluster point clouds)</summary>

<div style="max-height: 400px; overflow: auto; border: 1px solid #ccc; padding: 10px;">
<pre><code class="language-python">

```python
# -----------------------------------------------------------------------------
# DBSCAN Clustering on Lidar Data of Lower Manhattan
#
# Overview:
# - Six lidar maps (downloaded as .laz, converted to .xyz with CloudCompare)
# - Combined into one point cloud
# - Cropped to remove excess area
# - DBSCAN clustering applied using Open3D
# - Results saved as .pcd files (before and after clustering)
#
# Note: Processing all files takes ~10–15 minutes.
# -----------------------------------------------------------------------------

import numpy as np
import open3d as o3d
import matplotlib.pyplot as plt

# -----------------------------------------------------------------------------
# 1. Load and combine six point cloud files
# -----------------------------------------------------------------------------
for i in range(1,7,1):
    file_name = ".\\dataset\\ny" + str(i) + ".xyz"
    point_cloud_object_temp = np.loadtxt(file_name, skiprows = 1, 
                                usecols = (0,1,2,3))
    if i != 1:
        point_cloud_object = np.concatenate((point_cloud_object, 
                                             point_cloud_object_temp), axis=0)
    else:
        point_cloud_object = point_cloud_object_temp

# -----------------------------------------------------------------------------
# 2. Crop combined cloud and save intermediate file
# - Use intensity as RGB
# - Normalize coordinates
# - Remove low x-values (mostly water) 
# -----------------------------------------------------------------------------
point_cloud_object = np.concatenate((point_cloud_object, np.transpose(np.tile(
                        np.copy(point_cloud_object[:,3]), (2,1)))), axis = 1)
maxElements = np.max(point_cloud_object, 0)
minElements = np.amin(point_cloud_object, 0)
for i in range(3):
    point_cloud_object[:,i] = point_cloud_object[:,i] - minElements[i]
maxElements = np.max(point_cloud_object, 0)
minElements = np.amin(point_cloud_object, 0)
point_cloud_object = np.delete(point_cloud_object, 
                np.where((point_cloud_object[:, 0] < 750))[0], axis=0)
pcd = o3d.geometry.PointCloud()
pcd.points = o3d.utility.Vector3dVector(point_cloud_object[:,:3])
pcd.colors = o3d.utility.Vector3dVector(point_cloud_object[:,3:6])
o3d.io.write_point_cloud(".\\results\\beforeDBSCAN.pcd", pcd)

# Open3D tip: window may look blank, press '4' to switch to ortho view
o3d.visualization.draw_geometries([pcd])

# -----------------------------------------------------------------------------
# 3. Run DBSCAN clustering
# -----------------------------------------------------------------------------
with o3d.utility.VerbosityContextManager(
    o3d.utility.VerbosityLevel.Debug) as cm: 
    labels = np.array(pcd.cluster_dbscan(
        eps=1.4, min_points=10, print_progress=True))

max_label = labels.max()
print(f"point cloud has {max_label + 1} clusters")

# Assign colors to clusters
colors = plt.get_cmap("tab20")(labels / (max_label if max_label > 0 else 1))
colors[labels < 0] = 0
pcd.colors = o3d.utility.Vector3dVector(colors[:, :3])

# -----------------------------------------------------------------------------
# 4. Save and display clustered results
# -----------------------------------------------------------------------------
o3d.io.write_point_cloud(".\\results\\DBSCAN.pcd", pcd)
o3d.visualization.draw_geometries([pcd])
```

</code></pre>
</div>
</details>

## Additional Information

Sources for the original lidar maps can be found on the [Point Cloud Sources](/university/mtre6710-point-cloud-sources) page.

---

## Navigation

[← Back to University Projects](/university) | [Point Cloud Sources](/university/mtre6710-point-cloud-sources)
