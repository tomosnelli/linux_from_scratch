<h1>Linux From Scratch x86_64</h1>

<p>This repository contains scripts and files for building a custom Linux distribution using the <a href="http://www.linuxfromscratch.org/">Linux From Scratch (LFS)</a> methodology. The scripts provided automate various steps of the LFS build process, making it easier to reproduce and customize the Linux distribution.</p>

<h2>Repository Structure</h2>

<p>The repository has the following structure:</p>

<pre>
.
├── change_owner.sh
├── enter_chroot.sh
├── lfs-temp-tools-11.3.tar.xz
├── make_limited_dir.sh
├── mount_partitions.sh
├── mount_virtual_kernel_fs.sh
├── progress.log
├── README.md
├── start_up.sh
├── transfer.sh
├── umount_partitions.sh
├── user_bashrc
├── user_profile
└── wget-list-sysv
</pre>

<p>Here's a brief description of each file:</p>

<ul>
  <li><code>change_owner.sh</code>: A script to change ownership of directories and files in the LFS build environment.</li>
  <li><code>enter_chroot.sh</code>: A script to enter the chroot environment, allowing you to work inside the temporary LFS system.</li>
  <li><code>lfs-temp-tools-11.3.tar.xz</code>: A compressed tarball containing essential tools and packages for the LFS build process.</li>
  <li><code>make_limited_dir.sh</code>: A script to create a directory with limited permissions for security purposes.</li>
  <li><code>mount_partitions.sh</code>: A script to mount the necessary partitions before entering the chroot environment.</li>
  <li><code>mount_virtual_kernel_fs.sh</code>: A script to mount the virtual kernel file systems required by the LFS build process.</li>
  <li><code>progress.log</code>: A log file that tracks my progression in case of a host system failure</li>
  <li><code>README.md</code> (this file): An overview of the repository and its contents.</li>
  <li><code>start_up.sh</code>: A script to set up the initial environment before starting the LFS build process.</li>
  <li><code>transfer.sh</code>: A script to transfer essential files and scripts into the temporary LFS system.</li>
  <li><code>umount_partitions.sh</code>: A script to unmount the mounted partitions after exiting the chroot environment.</li>
  <li><code>user_bashrc</code>: A .bashrc file for user prompt.</li>
  <li><code>user_profile</code>: A .profile file for users to display prompt style at login</li>
  <li><code>wget-list-sysv</code>: A text file containing the list of URLs for downloading the necessary packages for the LFS build process.</li>
</ul>

<h2>Partition</h2>
<p>My LFS system is currently installed on a secondary SATA drive (/dev/sda) and is partitioned as follows:</p>
<ul>
  <li><code>/dev/sda1</code>: This is the /boot partition.</li>
  <li><code>/dev/sda2</code>: This is the root (/) partition.</li>
  <li><code>/dev/sda3</code>: This is the swap partition.</li>
  <li><code>/dev/sda4</code>: This is the /home partition.</li>
</ul>
<p>Please note that this partition configuration is specific to my setup. You may have a different partitioning scheme depending on your requirements.</p>

<h2>Current Situation</h2>
<p>
Currently the LFS system boots correctly with login functioning. However some env variables are not set correctly. After setting variables up correctly, the next step will be attempting to add a GUI such as GNOME.
</p>

<h2>Usage</h2>

<p>To build your custom Linux distribution using this repository, follow these steps:</p>

<ol>
  <li>Prepare your host system by installing the necessary dependencies as mentioned in the LFS documentation.</li>
  <li>Clone this repository to your host system: <code>git clone https://github.com/your-username/linux-from-scratch.git</code>.</li>
  <li>Customize the scripts and files according to your requirements, if needed.</li>
  <li>Execute the scripts in the specified order, ensuring that you have the required permissions.</li>
</ol>

<h2>Disclaimers</h2> 

<p>Please note that this LFS distribution was built with the intention of being run on a x86_64 system. Use this repository at your own risk. The author of this repository is not responsible for any damage or loss that may occur during the usage of these scripts.</p>
