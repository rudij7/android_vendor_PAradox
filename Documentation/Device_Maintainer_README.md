# Device Maintainer Guidelines and Expectations

##### This is not a tutorial to port PAradox to your device, this is a tutorial for the already skilled to become officially supoported!

Getting Your Device Supported
---

There are a few things we expect to see:

##### [vendor_PAradox](https://github.com/PAradox/vendor_PAradox)
```
Our vendor will need a new .mk file for your device along with the other apprpriate edits to the products folder.
Your device must be added to vendorsetup.sh for nightlies to run for it!
```
[Example](https://github.com/Team-PAradox/android_vendor_PAradox/commit/55812d5ff869c625a492de863968a829653f0714)

##### [vendor_(manufacturer)](https://github.com/Team-PAradox?query=vendor_)
```
The vendors hold proprietary binaries for each device and when a new device is brought
into PAradox its own proprietary binaries will need to be submitted to its vendor.
As you can see they are named by manufacturer.
```
[Example](https://github.com/Team-PAradox/proprietary_vendor_motorola)

##### [platform_manifest](https://github.com/Team-PAradox/manifest.git)
```
The manifest is where everything comes together:

We want to see all necessary device repos pulled from PAradox, if they are not being maintained by CyanogenMod or Paranoid legacy
or another project, as they will be forked to our Github.
All device repos to be forked to our Github should be linked in the commit message.
All repos added to the manifest must follow our alphabetical and grouping scheme.
Please link all related submissions in this commit as well.
```

##### *We expect to see proper commit authrship and credit*!

##### Note: The extras, such as the related submissions and links to projects to be forked will be editted out just before merging.

***

After the Merge
---

You will most likely be privately contacted by an PAradox member soon after or before
the merge of your device and be brought into communication with the rest of the
team via Google Hangouts or our maling list.

##### Once the device is merged into PAradox our expectations are as follows:

```
Your device must remain buildable with PAradox sources for every nightly.
Your device must remain relatively up to date with CyanogenMod if the repos are originally based off of theirs.
Your device must be updated with the latest version of Android if possible.
Communicate with the team on the status of your devices.
Be willing to collaborate with the team on various matters such as adding features,
fixing bugs, reviewing patches, and helping others.
```
