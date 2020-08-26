# install custom packages not on cran

cd "$instpath_R"
instpkg_cust interactiveSSH 8c4064187258038f766d13e4f398cc42e5b1612a444c0f901e6ac1771a85d02e
instpkg_cust rsyncFacility bfb60ffe71c4b652afa2a84b9c43acfbe5ba2d865f4a2a5de1b3aee9b3f3250e
instpkg_cust remoteFunctionSSH 051d4e19fafd1db5d4414b3e22b20a88dbd7caa933c464f4265d7d110bdc32a6
instpkg_cust clusterSSH 2aa9c33502230d46a7b95d1e39d0cd865e0ff91878c35734b246d6ebb034ebea

instpkg_cust exforParser 0ebf3900c5054322faa4b595c56e11942f0d60622931042d57dcc26553934522
instpkg_cust MongoEXFOR 0f5d24b9c03499b6a60c6c3322667839bf2bdfe27f8d40cab9b9832bd72ed385
instpkg_cust jsonExforUtils 317c57702b45ef2caea1f00370060600828772958c4e9a8d3028f8b51e0f9541
instpkg_cust talysExforMapping 4a20b8fc8fe617513e2f80317c3d790b49ce97379634246f77ee990273cbc1a3
instpkg_cust TALYSeval df49ec57f1f410f751ce2829ef100b48c8e2d9476cd4ca2f40ba9b6d1b3550f3
instpkg_cust exforUncertainty 043af1c7e3d8e2e706c6945f4f11b4bcc3b31b13d954d6758a3f5a61812f3a3b
instpkg_cust nucdataBaynet db78508fe835b4f8b521d21bfcb00276815f6246dbf432626c8e2872f2814fb9

instpkg_cust clusterTALYS 8e7b7ccf7148629f1a44b12a9ef41946d42cd7cdac40ac1ee15e64c2c740e3c9

if [ "$keep_Rcodes" != "yes" ]; then
    rm -rf "$instpath_R"
fi
