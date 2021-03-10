---
title: "Home"
---

<div class="container-fluid">
<div class="row">

<div class="col-md-9">
<div class="box" markdown="1">
## About {{ site.name }}

Welcome to Archdroid a set of tools and additional packages to provide extended
support for single board computers that may or may not be supported by
[ArchLinuxARM].
Currently additional support is provided for the **[Odroid N2/N2+]** and
**[Odroid C4/HC4]** in the form of newer uboot, patched kernels from hardkernel,
ready to use disk images and additional software repository for updates.
The ideal situation would be for the changes provided by this project to get
merged upstream (ArchLinuxARM), but until then we will keep providing the
additional packages and improvements.

Any ArchLinuxARM based distro is welcome to use the tools and packages we have
worked on and to contribute to the various repositories on our [GitHub Organization].

**Enjoy!**


[ArchLinuxARM]:        https://archlinuxarm.org
[GitHub Organization]: https://github.com/archdroid-org
[Odroid N2/N2+]:       /images/odroidn2
[Odroid C4/HC4]:       /images/odroidc4
</div>

<div id="news">
<h3>
<a href="/news/" title="Browse the news archives">Latest News</a>
<span class="arrow"></span>
</h3>

<div markdown="1">
{% include post_recent.liquid %}
</div>
</div>
</div>

<div class="col-md-3">
<h3 class="box-title">Recent Updates</h3>
<div class="box box-right" markdown="1">
{% include archdroid/package_updates.liquid %}
</div>
</div>

</div>
</div>

