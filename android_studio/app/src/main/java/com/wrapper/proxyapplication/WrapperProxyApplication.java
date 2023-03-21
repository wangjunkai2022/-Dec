jadx.core.utils.exceptions.JadxRuntimeException: Failed to generate code for class: com.wrapper.proxyapplication.WrapperProxyApplication
	at jadx.core.ProcessClass.generateCode(ProcessClass.java:121)
	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:384)
	at jadx.core.dex.nodes.ClassNode.getCode(ClassNode.java:332)
Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Code generation error after restart
	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:52)
	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:34)
	at jadx.core.codegen.CodeGen.generate(CodeGen.java:22)
	at jadx.core.ProcessClass.process(ProcessClass.java:77)
	at jadx.core.ProcessClass.generateCode(ProcessClass.java:115)
	... 2 more
Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Method generation error
	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:309)
	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:272)
	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
Caused by: jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x0001: MOVE_RESULT  (r0v0 'z' boolean) =  in method: com.wrapper.proxyapplication.WrapperProxyApplication.getVersionCode(android.content.Context):java.lang.String, file: classes5.dex
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:287)
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:250)
	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:91)
	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
	at jadx.core.dex.regions.Region.generate(Region.java:35)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:80)
	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:302)
	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
	at jadx.core.dex.regions.Region.generate(Region.java:35)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:296)
	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:275)
	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:377)
	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:306)
	... 5 more
Caused by: jadx.core.utils.exceptions.CodegenException: MOVE_RESULT instruction can be used only in fallback mode
	at jadx.core.codegen.InsnGen.fallbackOnlyInsn(InsnGen.java:664)
	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:589)
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:280)
	... 21 more

